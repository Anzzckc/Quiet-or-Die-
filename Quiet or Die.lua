local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "UpdateOverlay"
ScreenGui.IgnoreGuiInset = true 
ScreenGui.Parent = PlayerGui

local Background = Instance.new("Frame")
Background.Name = "Background"
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
Background.BackgroundTransparency = 0.05
Background.BorderSizePixel = 0
Background.Parent = ScreenGui

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "StatusLabel"
StatusLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
StatusLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextScaled = true
StatusLabel.Font = Enum.Font.SourceSansBold
StatusLabel.Text = "Updating, Fixing Bugs, Remaking, Optimizing"
StatusLabel.Parent = Background

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 50, 0, 50)
CloseButton.Position = UDim2.new(0.92, 0, 0.05, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 30
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Parent = Background

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
