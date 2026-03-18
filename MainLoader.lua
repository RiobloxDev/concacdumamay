--[[
    Script Tổng Hợp - Fluent UI
    Điểm Nhấn: Sử dụng Fluent UI Library
    Tạo bởi: Rioblox
]]

-- Kiểm tra và yêu cầu Fluent UI Library
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- Tạo cửa sổ UI chính
local Window = Fluent:CreateWindow({
    Title = "Rio Hub",
    SubTitle = "by Rioblox",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Tạo các tab (10 tabs với tên chính xác theo yêu cầu)
local Tabs = {
    NAME_TAB1 = Window:AddTab({ Title = "Blox Fruit" }),
    NAME_TAB2 = Window:AddTab({ Title = "The Strongest Battlegrounds" }),
    NAME_TAB3 = Window:AddTab({ Title = "Garden Horizone" }),
    NAME_TAB4 = Window:AddTab({ Title = "Grow A Garden" }),
    NAME_TAB5 = Window:AddTab({ Title = "Titan Fishing" }),
    NAME_TAB6 = Window:AddTab({ Title = "King Legacy" }),
    NAME_TAB7 = Window:AddTab({ Title = "99 Đêm Trong Rừng" }),
    NAME_TAB8 = Window:AddTab({ Title = "Sóng Thần Brainrot" }),
    NAME_TAB9 = Window:AddTab({ Title = "Dead Rail" }),
    NAME_TAB10 = Window:AddTab({ Title = "Info" })
}

-- ============================================
-- TAB 1: 50 NÚT
-- ============================================
Tabs.NAME_TAB1:AddParagraph({
    Title = "Blox Fruit",
    Content = "Danh sách Script Blox Fruit"
})

Tabs.NAME_TAB1:AddButton({
    Title = "Redz hub",
    Description = "Script Redz hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/20f318386e3fbf069ee3fa797cfc9f34.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Astral hub",
    Description = "Script Astral hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Tsuo hub",
    Description = "Script Tsuo hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Cokka hub",
    Description = "Script Cokka hub",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua")()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Hiru hub",
    Description = "Script Hiru hub",
    Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Settings = {
JoinTeam = true,
Team = "Marines"-- Pirates or Marines
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/KiddoHiru/BloxFruits/main/Source.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Hoho hub",
    Description = "Script Hoho hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Andepzai hub",
    Description = "Script Andepzai hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Adz-Hub/refs/heads/main/Adz-Hub.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Teddy hub",
    Description = "Script Teddy hub",
    Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Ok Hub",
    Description = "Script Ok Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/MainBloxFruit.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Quartyz hub",
    Description = "Script Quartyz hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "BlueX hub",
    Description = "Script BlueX hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Quantum hub",
    Description = "Script Quantum hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Speed hub",
    Description = "Script Speed hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Vxeze hub",
    Description = "Script Vxeze hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/BF-Main.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Zinner hub",
    Description = "Script Zinner hub",
    Callback = function()
        getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Roblox/refs/heads/main/BF-Main.luau"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Volcano hub",
    Description = "Script Volcano hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Omg hub",
    Description = "Script Omg hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Than hub",
    Description = "Script Than hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Relz hub",
    Description = "Script Relz hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/refs/heads/main/v2.bloxfruits.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Muxus hub",
    Description = "Script Muxus hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MuxusTL/BloxFruits/main/MuxusHub.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Ganteng hub",
    Description = "Script Ganteng hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/516a5669fc39b4945cd0609a08264505.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Monster hub",
    Description = "Script Monster hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/MonsterHub/refs/heads/main/MonsterHub"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Master hub",
    Description = "Script Master hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KiddoHiru/BloxFruits/main/MasterHub.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "BapRed hub",
    Description = "Script BapRed hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/BapRed/main/BapRedHub"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Xeno hub",
    Description = "Script Xeno hub",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/hubedubdei-afk/1dc1fd27f4f1db90238cae54eff264dd/raw/9c8f103428355eccf1c70ec8c99911515920f877/gistfile1.txt"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Nx hub",
    Description = "Script Nx hub",
    Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenAnhKhoaVN/Real_AnhKhoa_2279/refs/heads/main/Main-BloxFruitsNX.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Hube hub",
    Description = "Script Hube hub",
    Callback = function()
        loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/369e27991d8fdcc6"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Fast hub",
    Description = "Script Fast hub",
    Callback = function()
        loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/369e27991d8fdcc6"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "3toc hub",
    Description = "Script 3toc hub",
    Callback = function()
        getgenv().Team = "Marines" --// Pirates
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/245375592509cc0bcb3526982431ab18.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Xero hub new",
    Description = "Script Xero hub new",
    Callback = function()
        getgenv().Team = "Marines"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Matsune hop hub",
    Description = "Script Matsune hop hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMatsune/RealDragonToro/refs/heads/main/AutoMainHop.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "3congio hub",
    Description = "Script 3congio hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/3CONGIO-HUB/refs/heads/main/Main.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "bacon kaitun boss hub",
    Description = "Script bacon kaitun boss hub",
    Callback = function()
        getgenv().SettingFarm = {
["Team"] = "Pirates", -- Pirates or Marines
["Boss"] = "", -- Rip_indra , Darkbread, Doughking , Tyrant , Cursed_captian
["FPS"] = "false", -- false or true
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/KaitunBoss.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Ofoho hub",
    Description = "Script Ofoho hub",
    Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer loadstring(game:HttpGet("https://raw.githubusercontent.com/Ohofo2279/ObofoRoblox/refs/heads/main/BloxFruits.lua", true))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "banana fake real hub",
    Description = "Script banana fake real hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aloaloalo322/sssdas/refs/heads/main/cc"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Turbolite hub",
    Description = "Script Turbolite hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/MainV2.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Maru fake real hub",
    Description = "Script Maru fake real hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/MaruHubV1/refs/heads/main/MainV1.Lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Bostur hub",
    Description = "Script Bostur hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thihaccff-alt/H-hhhaa/refs/heads/main/MainBosturUiRedzHub-obfuscated.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Cat hub new",
    Description = "Script Cat hub new",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realcath/lab/refs/heads/main/src/main/main.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "OK hub new",
    Description = "Script OK hub new",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/MainBloxFruit.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Hdanh hub",
    Description = "Script Hdanh hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hdanhvip/hdanhhub/refs/heads/main/BananaHub.lua.txt"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "DarkX hub",
    Description = "Script DarkX hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Trdz-hub/refs/heads/main/DarkXHub.lua"))()
    end
})

-- còn thiếu tên nên giữ nguyên
Tabs.NAME_TAB1:AddButton({
    Title = "Night Hub",
    Description = "Script Night Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BF-Beta.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Gravity Hub",
    Description = "Script Gravity Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Khá Bảnh Hub v2",
    Description = "Script Khá Bảnh Hub v2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/KhaBanhHubV2/refs/heads/main/obf_m92m5V2G0rk2XM6IPP1L1O701401kdJLV4V5nEyYclj029p00N3SyRWn7S1ax4Uz.lua.txt"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Rubu Hub v6",
    Description = "Script Rubu Hub v6",
    Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/RUBU/refs/heads/main/RUBUV6.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Leaf Hub",
    Description = "Script Leaf Hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://github.com/LeafHubAcademy/LeafHub/raw/refs/heads/main/Leaf.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Nana Hub",
    Description = "Script Nana Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNacuti/nanabeo/refs/heads/main/NaNaTVHub.lua"))()
    end
})

Tabs.NAME_TAB1:AddButton({
    Title = "Dragon Hub",
    Description = "Script Dragon Hub",
    Callback = function()
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().team = "Pirates" -- Pirates or Marines
loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main-BF.lua"))()
    end
})

-- ============================================
-- TAB 2: 20 NÚT
-- ============================================
Tabs.NAME_TAB2:AddParagraph({
    Title = "The Strongest Battlegrounds",
    Content = "Danh sách Script Tsb"
})

Tabs.NAME_TAB2:AddButton({
    Title = "Senpai Hub",
    Description = "Script Senpai Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Senpai1997/Scripts/refs/heads/main/SenpaihubTheStrongestBattlegroundsAimlockAutoblock.lua"))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Hater Hub",
    Description = "Script Hater Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Perfixt/Hater-Hub-v3.25/refs/heads/main/ByDizzyHax"))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Arch-Vault",
    Description = "Script Arch-Vault",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/R2N7cb9z'))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Napoleon Hub",
    Description = "Script Napoleon Hub",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/md6KzXD6'))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "NS Hub",
    Description = "Script NS Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/sh/refs/heads/main/a"))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Star Hub",
    Description = "Script Star Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/bc25e1f8ef8aa59092de8f8f4c4fb95c.lua"))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Spooks Hub",
    Description = "Script Spooks Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/spookshubTSB/refs/heads/main/SHTSB.txt'))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Forge Hub",
    Description = "Script Forge Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Speed Hub",
    Description = "Script Speed Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "TamHub",
    Description = "Script TamHub",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/tamarixr/tamhub/main/bettertamhub.lua")()
    end
})

Tabs.NAME_TAB2:AddButton({
    Title = "Rinns Hub",
    Description = "Script Rinns Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/sh/refs/heads/main/a"))()
    end
})

-- ============================================
-- TAB 3: 20 NÚT
-- ============================================
Tabs.NAME_TAB3:AddParagraph({
    Title = "Garden Horizone",
    Content = "Danh Sách Script Garden Horizone"
})

Tabs.NAME_TAB3:AddButton({
    Title = "Chiyohub",
    Description = "Script Chiyohub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
    end
})

Tabs.NAME_TAB3:AddButton({
    Title = "Speed hub",
    Description = "Script Speed hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.NAME_TAB3:AddButton({
    Title = "Blue x hub",
    Description = "Script Blue x hub",
    Callback = function()
        G.AutoTranslate = true _G.SaveConfig = true loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end
})

Tabs.NAME_TAB3:AddButton({
    Title = "Cyraahub",
    Description = "Script Cyraahub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LynX99-9/komtolmmek2/refs/heads/main/Garden%20Horizon"))()
    end
})

Tabs.NAME_TAB3:AddButton({
    Title = "Cyrus hub",
    Description = "Script Cyrus hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/roblox/loader.lua"))()
    end
})

Tabs.NAME_TAB3:AddButton({
    Title = "Streehub",
    Description = "Script Streehub",
    Callback = function()
        loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/36a1d4513a0ce188"))()
    end
})

-- ============================================
-- TAB 4: 20 NÚT
-- ============================================
Tabs.NAME_TAB4:AddParagraph({
    Title = "Grow A Garden",
    Content = "Danh  Sách Script Grow A Garden"
})

Tabs.NAME_TAB4:AddButton({
    Title = "Bonk Hub",
    Description = "Script Bonk Hub",
    Callback = function()
        loadstring(game:HttpGet("https://bonkhubloader.netlify.app",true))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Lumin Hub",
    Description = "Script Lumin Hub",
    Callback = function()
        loadstring(game:HttpGet("https://lumin-hub.lol/loader.lua",true))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Rift Hub",
    Description = "Script Rift Hub",
    Callback = function()
        loadstring(game:HttpGet("https://rifton.top/loader.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Pet Spawner Hub",
    Description = "Script Pet Spawner Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sudaisontopxd/PanScriptXSudaisScript/refs/heads/main/PhantFluxReal.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Mercenaries Hub",
    Description = "Script Mercenaries Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kosowa/asd/refs/heads/main/GaG.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "H4x Hub",
    Description = "Script H4x Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua", true))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Kenniel Hub",
    Description = "Script Kenniel Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/99-Nights-in-the-Forest/refs/heads/main/99%20Nights%20in%20the%20Forest"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Thunder Z Hub",
    Description = "Script Thunder Z Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/GaG/Main.lua'))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Than Hub",
    Description = "Script Than Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Nat Hub",
    Description = "Script Nat Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Lunacy Hub",
    Description = "Script Lunacy Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1c1979f776d3e81869cf5f49f91900a7.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Kiwii Hub",
    Description = "Script Kiwii Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KiwiiHub/KiwiiHub/refs/heads/main/aac03d64-6a28-47bc-ab5c-da025a50c4d6-1182317416202641449.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "UB Hub",
    Description = "Script UB Hub",
    Callback = function()
        loadstring(game:HttpGet("https://gitlab.com/r_soft/main/-/raw/main/LoadUB.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Airflow Hub",
    Description = "Script Airflow Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/255ac567ced3dcb9e69aa7e44c423f19.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Vxeze Hub",
    Description = "Script Vxeze Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubMain"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Finder Hub",
    Description = "Script Finder Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/M-E-N-A-C-E/Menace-Hub/refs/heads/main/Old%20Server%20Finder%20Grow%20a%20Garden", true))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Blue Hub",
    Description = "Script Blue Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ameicaa1/Grow-a-Garden/main/Grow_A_Garden.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Alchemy Hub",
    Description = "Script Alchemy Hub",
    Callback = function()
        loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Speed Hub",
    Description = "Script Speed Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "No Lag Hub",
    Description = "Script No Lag Hub",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Grow-a-Garden-NoLag-Hub-no-key-38699"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Native Hub",
    Description = "Script Native Hub",
    Callback = function()
        script_key="PASTE_KEY_HERE"; (loadstring or load)(game:HttpGet("https://getnative.cc/script/loader"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Ronix Hub",
    Description = "Script Ronix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1255807d4f3b118b6636cfd3d386d8b8.lua"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Beecon Hub",
    Description = "Script Beecon Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Tora Hub",
    Description = "Script Tora Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))()
    end
})

Tabs.NAME_TAB4:AddButton({
    Title = "Lunor Hub",
    Description = "Script Lunor Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/minhducnek/DucaRoblox/refs/heads/main/FixLag.lua"))()
    end
})

-- ============================================
-- TAB 5: 20 NÚT
-- ============================================
Tabs.NAME_TAB5:AddParagraph({
    Title = "Titan Fishing",
    Content = "Danh Sách Script Titan Fishing"
})

Tabs.NAME_TAB5:AddButton({
    Title = "Hune hub",
    Description = "Script Hune hub",
    Callback = function()
        loadstring(game:HttpGet("https://vss.pandadevelopment.net/virtual/file/dd6e6febf7054d7b"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "KhfreshHub",
    Description = "Script KhfreshHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bvect1037-alt/KhfreshHub/refs/heads/main/Titan-Fishing"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "Nemesis hub",
    Description = "Script Nemesis hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/x2zu/loader/main/freeloader.lua", true))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "Aoenic Hub",
    Description = "Script Aoenic Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cc4273e26a8c95d581c0632de0ac3ba9.lua"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "LuvHub",
    Description = "Script LuvHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuvHub-Script/LuvHub/main/main/TitanFishing"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "Kill Hub",
    Description = "Script Kill Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/5ca430b86a718571e5342b93791f7ac17ef8107f8a93e14efdc76881346857f0/download"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "Jumanexus Hub",
    Description = "Script Jumanexus Hub",
    Callback = function()
        loadstring(game:HttpGet("https://hub.jumanexus.net/main.lua"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "Bacon",
    Description = "Script Bacon",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/Rom1wZZj/raw"))()
    end
})

Tabs.NAME_TAB5:AddButton({
    Title = "Jiceo",
    Description = "Script Jiceo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bao760/JICEO/refs/heads/main/jiceoBigsorry"))()
    end
})

-- ============================================
-- TAB 6: 20 NÚT
-- ============================================
Tabs.NAME_TAB6:AddParagraph({
    Title = "King Legacy",
    Content = "Danh Sách Script King Legacy"
})

Tabs.NAME_TAB6:AddButton({
    Title = "OMG Hub",
    Description = "Script OMG Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "HYPER Hub",
    Description = "Script HYPER Hub",
    Callback = function()
        repeat wait() until game:IsLoaded() loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "ARC Hub",
    Description = "Script ARC Hub",
    Callback = function()
        getgenv().CustomDistance = 10; loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "Zee Hub",
    Description = "Script Zee Hub",
    Callback = function()
        loadstring(game:HttpGet("https://zuwz.me/Ls-Zee-Hub"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "LH Hub",
    Description = "Script LH Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Upd6/main/King"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "ZenHub",
    Description = "Script ZenHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zenhubtop/zen_hub_pr/main/zennewwwwui.lua", true))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "BT Team",
    Description = "Script BT Team",
    Callback = function()
        loadstring(game:HttpGetAsync("https://lua-library.btteam.net/script-auth.txt"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "HULK Hub",
    Description = "Script HULK Hub",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/HULKUexe/mobileX/main/FreeScript.lua")()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "Winnable Hub",
    Description = "Script Winnable Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Winnablez/Winnable/main/Loader"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "Adel Hub",
    Description = "Script Adel Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/Main.lua"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "X7 Software",
    Description = "Script X7 Software",
    Callback = function()
        local request = (syn and syn.request) or (http and http.request) or http_request; loadstring(request({['Url']='https://x7.software',['Method']='GET'}).Body)("X7-a5KsoQGw")
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "Black Trap",
    Description = "Script Black Trap",
    Callback = function()
        loadstring(game:HttpGetAsync("https://blacktrap.org/blacktrap/users/checkpoint/Auth.txt"))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "Speed Hub",
    Description = "Script Speed Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.NAME_TAB6:AddButton({
    Title = "Mukuro Hub",
    Description = "Script Mukuro Hub",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
    end
})

-- ============================================
-- TAB 7: 20 NÚT
-- ============================================
Tabs.NAME_TAB7:AddParagraph({
    Title = "99 Night",
    Content = "Danh Sách Script 99 Night"
})

Tabs.NAME_TAB7:AddButton({
    Title = "Than Hub",
    Description = "Script Than Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "MQPS7 Farm",
    Description = "Script MQPS7 Farm",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MQPS7/99-Night-in-the-Forset/refs/heads/main/Gfarm'))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "VapeVoidware",
    Description = "Script VapeVoidware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "BonkHub",
    Description = "Script BonkHub Kaitan",
    Callback = function()
        getgenv().ScriptMode = "Kaitan"; loadstring(game:HttpGet("https://bonkhub.online/loader.lua",true))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "Kenniel123",
    Description = "Script Kenniel123",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/99-Nights-in-the-Forest/refs/heads/main/99%20Nights%20in%20the%20Forest"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "AlchemyHub",
    Description = "Script AlchemyHub",
    Callback = function()
        loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "HOHO H",
    Description = "Script HOHO H",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "LinuxDevBr",
    Description = "Script LinuxDevBr",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LinuxDevBr/99-Nights-In-the-Forest/refs/heads/main/Script.txt"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "AVTH Ontop",
    Description = "Script AVTH Ontop",
    Callback = function()
        loadstring(game:HttpGet("https://get-avth-ontop.netlify.app/my-paste/script.lua"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "Nevcit GOA Hub",
    Description = "Script Nevcit GOA Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/GOA_HUB/refs/heads/main/99%20Nights%20In%20The%20Forest"))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "Soluna Script",
    Description = "Script Soluna",
    Callback = function()
        loadstring(game:HttpGet("https://soluna-script.vercel.app/99-Nights-in-the-Forest.lua",true))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "Speed Hub X",
    Description = "Script Speed Hub X",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "Exploiting.is",
    Description = "Script Exploiting.is",
    Callback = function()
        loadstring(game:HttpGet('https://api.exploitingis.fun/loader', true))()
    end
})

Tabs.NAME_TAB7:AddButton({
    Title = "H4xScripts",
    Description = "Script H4xScripts",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua", true))()
    end
})

-- ============================================
-- TAB 8: 20 NÚT
-- ============================================
Tabs.NAME_TAB8:AddParagraph({
    Title = "Sóng Thần Brainrot",
    Content = "Danh sách Script Sóng Thần Brainrot"
})

Tabs.NAME_TAB8:AddButton({
    Title = "Por Hub",
    Description = "Đang Bảo Trì, Vui Lòng Thử Script Khác",
    Callback = function()
        warn("Por Hub hiện đang bảo trì.")
    end
})

Tabs.NAME_TAB8:AddButton({
    Title = "Apex Hub",
    Description = "Script Apex Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Uranus9103/apexhubpro/refs/heads/main/EscapeTsunamiForBrainrots!/APEXHUB"))()
    end
})

Tabs.NAME_TAB8:AddButton({
    Title = "Osaka Hub",
    Description = "Script Osaka Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/osakaTP2/OsakaTP2/main/Escape%20tsunamiV3.5"))()
    end
})

Tabs.NAME_TAB8:AddButton({
    Title = "Wiwi Hub",
    Description = "Script Wiwi Hub (Kenger Hub)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iw929wiwiw/EscapesTsunami/refs/heads/main/Kenger%20Hub"))()
    end
})

-- ============================================
-- TAB 9: 20 NÚT
-- ============================================
Tabs.NAME_TAB9:AddParagraph({
    Title = "Dead Rail",
    Content = "Danh sách Script Dead Rail"
})

Tabs.NAME_TAB9:AddButton({
    Title = "Skull Hub",
    Description = "Script Skull Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Alchemy Hub",
    Description = "Script Alchemy Hub",
    Callback = function()
        loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Kiciahook Hub",
    Description = "Script Kiciahook Hub (Hutao Hub)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SLK-gaming/Hutao-Hub/refs/heads/main/99-Nights-In-The-Forest.txt"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "S7 Hub",
    Description = "Script S7 Hub (Space Hub)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua'))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Nat Hub",
    Description = "Script Nat Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Native Hub",
    Description = "Script Native Hub (VoidWare)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Fly Hub",
    Description = "Script Fly Hub (Four Hub)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/jokerbiel13/FourHub/refs/heads/main/FourHub.lua"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Pink Hub",
    Description = "Script Pink Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Tora Hub",
    Description = "Script Tora Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "TN Bond Hub",
    Description = "Script TN Bond Hub (Syzen Hub)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Black69Weed-dev/99-Night-in-the-forest/main/99%20nights%20in%20the%20forest.lua"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Lunor Hub",
    Description = "Script Lunor Hub (Foxname Hub)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
    end
})

Tabs.NAME_TAB9:AddButton({
    Title = "Null Fire Hub",
    Description = "Script Null Fire Hub (NTT Hub)",
    Callback = function()
        loadstring(game:HttpGet('https://ntt-hub.xyz/api/repo?id1=main&id2=lua'))()
    end
})

-- ============================================
-- TAB 10: 20 NÚT
-- ============================================
Tabs.NAME_TAB10:AddParagraph({
    Title = "Info",
    Content = "Info Admin Script"
})

Tabs.NAME_TAB10:AddButton({
    Title = "Discord",
    Description = "Click để copy link Discord",
    Callback = function()
        setclipboard("https://discord.gg/yBXhmjQyYn")
    end
})

Tabs.NAME_TAB10:AddButton({
    Title = "Box Zalo",
    Description = "Click để copy link Zalo",
    Callback = function()
        setclipboard("https://zalo.me/g/wmydbhulv6l8hx4ebckj")
    end
})

Tabs.NAME_TAB10:AddButton({
    Title = "Tik Tok",
    Description = "Click để copy Tik Tok",
    Callback = function()
        setclipboard("rioblox7")
    end
})

Tabs.NAME_TAB10:AddButton({
    Title = "Kết Bạn Roblox",
    Description = "Click để copy acc Roblox",
    Callback = function()
        setclipboard("Acc Blox Fruit: XxZoomMysticMagicxX | Acc Chơi Nhiều Game: rdemt3")
    end
})

-- Kích hoạt SaveManager và InterfaceManager (tùy chọn)
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("BloxFruitsScriptHub")
SaveManager:SetFolder("BloxFruitsScriptHub")

-- Áp dụng theme và khởi tạo
Window:SelectTab(1)

Fluent:Notify({
    Title = "Blox Fruits Script Hub",
    Content = "Đã tải thành công!",
    Duration = 5
})

-- Lưu ý: Thay NHAP_SCRIPT_TAI_DAY bằng script thực tế của bạn