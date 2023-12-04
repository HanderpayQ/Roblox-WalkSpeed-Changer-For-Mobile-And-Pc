-- Created by: HanderpayWorld


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local close = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0793021917, 0, 0.124242425, 0)
Frame.Size = UDim2.new(0, 397, 0, 174)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.100755669, 0, -0.0632183924, 0)
TextLabel.Size = UDim2.new(0, 316, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Speed Changer Simple Version"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.415686, 0.415686, 0.415686)
TextButton.BackgroundTransparency = 0.6000000238418579
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.375510573, 0, 0.782714486, 0)
TextButton.Size = UDim2.new(0, 97, 0, 37)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "OK"
TextButton.TextColor3 = Color3.new(0.172549, 0.368627, 0.14902)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

UICorner_2.Parent = TextButton

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.245179459, 0, 0.353489667, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = "Type Speed Here"
TextBox.TextColor3 = Color3.new(0.505882, 0.505882, 0.505882)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.BackgroundTransparency = 1
close.BorderColor3 = Color3.new(0, 0, 0)
close.BorderSizePixel = 0
close.Size = UDim2.new(0, 30, 0, 30)
close.Font = Enum.Font.SourceSansBold
close.Text = "X"
close.TextColor3 = Color3.new(1, 0.0196078, 0.0196078)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true

UIAspectRatioConstraint.Parent = ScreenGui
UIAspectRatioConstraint.AspectRatio = 1.515625

-- Scripts

local function NWLFLR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local hum = char.Humanoid
		hum.WalkSpeed = script.Parent.Parent.TextBox.Text
	end)
end
coroutine.wrap(NWLFLR_fake_script)()
local function CAUN_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		script.Parent.Parent.Transparency = 0.5
		wait(1)
		script.Parent.Parent.Transparency = 0.8
		wait(1)
		script.Parent.Parent.Transparency = 1
		wait(1)
		script.Parent.Parent.Parent.Enabled = false
	end)
end
coroutine.wrap(CAUN_fake_script)()
