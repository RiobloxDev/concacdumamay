-- Sailor Piece Auto Farm (Level 0-13000)
-- UI: Venyx Library

if not game:IsLoaded() then game.Loaded:Wait() end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local VirtualUser = game:GetService("VirtualUser")

-- ==================== LOAD VENYX UI ====================
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Leonel-V/UI-Librarys/main/VenyxUI.lua"))()

local UI = Venyx.new("Sailor Piece Auto Farm", Color3.fromRGB(255, 85, 0))

-- Tab chính
local MainTab = UI:NewTab("Auto Farm")

-- Section
local FarmSection = MainTab:NewSection("Cài đặt chính")
local InfoSection = MainTab:NewSection("Thông tin")

-- ==================== BIẾN ====================
local isFarming = false

-- ==================== HÀM LẤY LEVEL ====================
local function GetLevel()
    local data = LocalPlayer:FindFirstChild("Data")
    if data then
        local lvl = data:FindFirstChild("Level")
        if lvl then
            return lvl.Value
        end
    end
    -- Thử tìm ở nơi khác
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    if leaderstats then
        local lvl = leaderstats:FindFirstChild("Level")
        if lvl then
            return lvl.Value
        end
        local lv = leaderstats:FindFirstChild("Lv")
        if lv then
            return lv.Value
        end
    end
    return 0
end

-- ==================== HÀM TÌM NPC THEO TÊN ====================
local function FindObjectByName(name)
    for _, obj in pairs(Workspace:GetChildren()) do
        if obj:IsA("Model") and obj:FindFirstChild("Humanoid") then
            local objName = string.lower(obj.Name)
            local searchName = string.lower(name)
            if string.find(objName, searchName) then
                return obj
            end
        end
    end
    -- Tìm sâu hơn
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("Model") and obj.Parent ~= Workspace then
            if obj:FindFirstChild("Humanoid") then
                local objName = string.lower(obj.Name)
                local searchName = string.lower(name)
                if string.find(objName, searchName) then
                    return obj
                end
            end
        end
    end
    return nil
end

-- ==================== HÀM TELEPORT ====================
local function TeleportTo(obj)
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local targetHrp = obj and obj:FindFirstChild("HumanoidRootPart")
    
    if hrp and targetHrp then
        hrp.CFrame = CFrame.new(targetHrp.Position + Vector3.new(0, 4, 0))
        task.wait(0.1)
        return true
    end
    return false
end

-- ==================== HÀM TƯƠNG TÁC NPC ====================
local function InteractWithNPC(npc)
    if not npc then return false end
    
    TeleportTo(npc)
    task.wait(0.3)
    
    -- Tìm ClickDetector
    local click = npc:FindFirstChild("ClickDetector")
    if click then
        click:Click()
        return true
    end
    
    -- Tìm ProximityPrompt
    local prompt = npc:FindFirstChild("ProximityPrompt")
    if prompt then
        prompt:InputHoldBegin()
        task.wait(0.2)
        prompt:InputHoldEnd()
        return true
    end
    
    -- Tìm Dialog
    local dialog = npc:FindFirstChild("Dialog")
    if dialog then
        local choice = dialog:FindFirstChild("DialogChoice")
        if choice then
            choice:Activate()
        end
        return true
    end
    
    return false
end

-- ==================== HÀM AUTO ATTACK ====================
local function AutoAttack()
    local char = LocalPlayer.Character
    if not char then return end
    
    -- Tìm tool để equip
    local tool = char:FindFirstChildWhichIsA("Tool")
    if not tool then
        local backpack = LocalPlayer:FindFirstChild("Backpack")
        if backpack then
            tool = backpack:FindFirstChildWhichIsA("Tool")
            if tool then
                tool.Parent = char
                task.wait(0.1)
            end
        end
    end
    
    if tool then
        tool:Activate()
        task.wait(0.2)
    else
        -- Mô phỏng click
        VirtualUser:CaptureController()
        VirtualUser:ClickButton1(Vector2.new(0, 0))
    end
end

-- ==================== XÁC ĐỊNH STAGE THEO LEVEL ====================
local function GetStageByLevel(level)
    if level >= 0 and level < 100 then
        return "Quest 1", "Thief"
    elseif level >= 100 and level < 250 then
        return "Quest 2", "Thief Boss"
    elseif level >= 250 and level < 500 then
        return "Quest 3", "Monkey"
    elseif level >= 500 and level < 750 then
        return "Quest 4", "Monkey"
    elseif level >= 750 and level < 1000 then
        return "Quest 5", "Desest Bandit"
    elseif level >= 1000 and level < 1500 then
        return "Quest 6", "Desest Boss"
    elseif level >= 1500 and level < 2000 then
        return "Quest 7", "Frost Rogue"
    elseif level >= 2000 and level < 3000 then
        return "Quest 8", "Winter Warden"
    elseif level >= 3000 and level < 4000 then
        return "Quest 9", "Sorcerer Student"
    elseif level >= 4000 and level < 5000 then
        return "Quest 10", "Panda Sorcerer"
    elseif level >= 5000 and level < 6250 then
        return "Quest 11", "Hollow"
    elseif level >= 6250 and level < 7000 then
        return "Quest 12", "Strong Sorcerer"
    elseif level >= 7000 and level < 8000 then
        return "Quest 13", "Curse"
    elseif level >= 8000 and level < 9000 then
        return "Quest 14", "Slime Warrior"
    elseif level >= 9000 and level < 10000 then
        return "Quest 15", "Academy Teacher"
    elseif level >= 10000 and level < 10750 then
        return "Quest 16", "Swordsman"
    elseif level >= 10750 and level < 11500 then
        return "Quest 17", "Quincy"
    elseif level >= 11500 and level < 12000 then
        return "Quest 18", "Ninja"
    elseif level >= 12000 and level <= 13000 then
        return "Quest 19", "Arena Fighter"
    end
    return nil, nil
end

-- ==================== LOGIC FARM CHÍNH ====================
local function StartFarm()
    while isFarming do
        local currentLevel = GetLevel()
        
        -- Dừng nếu đạt max
        if currentLevel >= 13000 then
            UI:Notify("Hoàn thành!", "Đã đạt Level 13000!", 3)
            isFarming = false
            break
        end
        
        -- Lấy stage hiện tại
        local questName, monsterName = GetStageByLevel(currentLevel)
        
        if not questName then
            task.wait(1)
            goto continue
        end
        
        -- Tìm và nhận quest
        local questNPC = FindObjectByName(questName)
        if questNPC then
            InteractWithNPC(questNPC)
            task.wait(0.5)
        end
        
        -- Tìm và đánh quái
        local monster = FindObjectByName(monsterName)
        if monster then
            TeleportTo(monster)
            task.wait(0.2)
            AutoAttack()
        else
            task.wait(1)
        end
        
        ::continue::
        task.wait(0.3)
    end
end

-- ==================== UI VENYX ====================

-- Toggle Auto Farm
FarmSection:CreateToggle("Bật/Tắt Auto Farm", "Auto farm từ Level 0 đến 13000", function(state)
    isFarming = state
    if state then
        UI:Notify("Auto Farm", "Đã bắt đầu farm!", 2)
        task.spawn(StartFarm)
    else
        UI:Notify("Auto Farm", "Đã dừng farm!", 2)
    end
end)

-- Button kiểm tra Level
FarmSection:CreateButton("Xem Level hiện tại", "Kiểm tra level của bạn", function()
    UI:Notify("Level Info", "Level hiện tại: " .. GetLevel(), 2)
end)

-- Button Test teleport
FarmSection:CreateButton("Test Teleport NPC Quest", "Teleport đến NPC phù hợp", function()
    local level = GetLevel()
    local questName = GetStageByLevel(level)
    if questName then
        local npc = FindObjectByName(questName)
        if npc then
            TeleportTo(npc)
            UI:Notify("Teleport", "Đã teleport đến " .. questName, 2)
        else
            UI:Notify("Lỗi", "Không tìm thấy NPC: " .. questName, 2)
        end
    end
end)

-- Thông tin
InfoSection:CreateLabel("Tác giả: Custom Script")
InfoSection:CreateLabel("Level: 0 → 13000+")
InfoSection:CreateLabel("Executor: Delta X")

-- Hiển thị level trên màn hình
local ScreenGui = Instance.new("ScreenGui")
local LevelDisplay = Instance.new("TextLabel")

ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
LevelDisplay.Parent = ScreenGui
LevelDisplay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LevelDisplay.BackgroundTransparency = 0.5
LevelDisplay.Position = UDim2.new(0, 10, 0, 50)
LevelDisplay.Size = UDim2.new(0, 180, 0, 35)
LevelDisplay.Font = Enum.Font.GothamBold
LevelDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
LevelDisplay.TextSize = 16
LevelDisplay.Text = "🏴‍☠️ Level: 0"

task.spawn(function()
    while true do
        task.wait(1)
        LevelDisplay.Text = "🏴‍☠️ Level: " .. GetLevel()
    end
end)

-- Thông báo khởi tạo
UI:Notify("Sailor Piece", "Đã load thành công! Bật Toggle để bắt đầu.", 3)