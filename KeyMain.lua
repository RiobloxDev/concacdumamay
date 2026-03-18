-- Key System
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "KeySystem"
ScreenGui.ResetOnSpawn = false

-- Key và link
local VALID_KEY = "RIOKEY_Xk9pLm4qRt8vB2nJ6hY3cF5wS7dA1Gf7Hy9jU2kL4pQ6wE8rT1yU3iO5pA7sD9fG1hJ3kL5"
local WEB_GET_KEY = "https://riobloxdev.github.io/concacdumamay/"
local MAIN_SCRIPT = "https://raw.githubusercontent.com/RiobloxDev/concacdumamay/refs/heads/main/MainLoader.lua"

-- Tạo frame chính
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 400, 0, 250)
Frame.Position = UDim2.new(0.5, -200, 0.5, -125)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
Frame.Active = true
Frame.Draggable = true

-- Bo góc
local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 10)

-- Tiêu đề
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
Title.Text = "🔑 KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

local TitleCorner = Instance.new("UICorner")
TitleCorner.Parent = Title
TitleCorner.CornerRadius = UDim.new(0, 10)

-- TextBox
local TextBox = Instance.new("TextBox")
TextBox.Parent = Frame
TextBox.Size = UDim2.new(0, 350, 0, 45)
TextBox.Position = UDim2.new(0.5, -175, 0, 60)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "NHAP_KEY_CUA_BAN"
TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 14

local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.Parent = TextBox
TextBoxCorner.CornerRadius = UDim.new(0, 8)

-- Status
local Status = Instance.new("TextLabel")
Status.Parent = Frame
Status.Size = UDim2.new(0, 350, 0, 30)
Status.Position = UDim2.new(0.5, -175, 0, 115)
Status.BackgroundTransparency = 1
Status.Text = "Status: Chưa xác thực"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.Font = Enum.Font.Gotham
Status.TextSize = 14

-- Nút Get Key
local GetBtn = Instance.new("TextButton")
GetBtn.Parent = Frame
GetBtn.Size = UDim2.new(0, 170, 0, 45)
GetBtn.Position = UDim2.new(0, 30, 0, 160)
GetBtn.BackgroundColor3 = Color3.fromRGB(52, 152, 219)
GetBtn.Text = "GET KEY"
GetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetBtn.Font = Enum.Font.GothamBold
GetBtn.TextSize = 16

local GetCorner = Instance.new("UICorner")
GetCorner.Parent = GetBtn
GetCorner.CornerRadius = UDim.new(0, 8)

-- Nút Confirm
local ConfirmBtn = Instance.new("TextButton")
ConfirmBtn.Parent = Frame
ConfirmBtn.Size = UDim2.new(0, 170, 0, 45)
ConfirmBtn.Position = UDim2.new(0, 200, 0, 160)
ConfirmBtn.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
ConfirmBtn.Text = "CONFIRM"
ConfirmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmBtn.Font = Enum.Font.GothamBold
ConfirmBtn.TextSize = 16

local ConfirmCorner = Instance.new("UICorner")
ConfirmCorner.Parent = ConfirmBtn
ConfirmCorner.CornerRadius = UDim.new(0, 8)

-- Chức năng Get Key
GetBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(WEB_GET_KEY) end)
    Status.Text = "Status: Đã copy link get key!"
    Status.TextColor3 = Color3.fromRGB(52, 152, 219)
    task.wait(2)
    Status.Text = "Status: Chưa xác thực"
    Status.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

-- Chức năng Confirm
ConfirmBtn.MouseButton1Click:Connect(function()
    if TextBox.Text == VALID_KEY then
        Status.Text = "Status: Key đúng! Đang load..."
        Status.TextColor3 = Color3.fromRGB(46, 204, 113)
        task.wait(1)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(MAIN_SCRIPT))()
    else
        Status.Text = "Status: Key sai! Thoát game..."
        Status.TextColor3 = Color3.fromRGB(231, 76, 60)
        task.wait(2)
        game:Shutdown()
    end
end)