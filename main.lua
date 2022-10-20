
local Data = TweenInfo.new(0.225, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

local mainGUI = Instance.new("ScreenGui")
mainGUI.Name = "MainGUI"
mainGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mainGUI.Parent = game.CoreGui

local main = Instance.new("Frame")
main.Name = "Main"
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
main.Position = UDim2.fromScale(0.5, 0.5)
main.Size = UDim2.fromScale(0.0755, 0.146)
main.Parent = mainGUI



task.wait(1)

local tween = game:GetService("TweenService"):Create(main, Data, { Size = UDim2.fromScale(0.156, 0.185) })
tween:Play()

local uIPadding = Instance.new("UIPadding")
uIPadding.Name = "UIPadding"
uIPadding.PaddingBottom = UDim.new(0, 5)
uIPadding.PaddingLeft = UDim.new(0, 5)
uIPadding.PaddingRight = UDim.new(0, 5)
uIPadding.PaddingTop = UDim.new(0, 5)
uIPadding.Parent = main

local uIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
uIAspectRatioConstraint.Name = "UIAspectRatioConstraint"
uIAspectRatioConstraint.AspectRatio = 1.5
uIAspectRatioConstraint.Parent = main

task.wait(0.5)

local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.BackgroundColor3 = Color3.fromRGB(146, 20, 12)
frame.Size = UDim2.fromScale(1, 0.01)
frame.Transparency = 1
frame.Parent = main

local jk = game:GetService("TweenService"):Create(frame, Data, { Transparency = 0 })
local kj = game:GetService("TweenService"):Create(frame, Data, { Transparency = 1 })
jk:Play()

local textLabel = Instance.new("TextLabel")
textLabel.Name = "TextLabel"
textLabel.TextTransparency = 1
textLabel.BackgroundTransparency = 1
textLabel.FontFace = Font.new("rbxasset://fonts/families/Jura.json")
textLabel.Text = "Loading."
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.TextSize = 14
textLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextWrapped = true
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.TextYAlignment = Enum.TextYAlignment.Top
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Position = UDim2.fromScale(0, 0.0579)
textLabel.Size = UDim2.fromScale(0.623, 0.26)
textLabel.Parent = main

task.wait(0.5)

local er = game:GetService("TweenService"):Create(textLabel, Data, { TextTransparency = 0 })
local xr = game:GetService("TweenService"):Create(textLabel, Data, { TextTransparency = 1 })
er:Play()

textLabel.Text = "Loading.."
task.wait(1)
textLabel.Text = "Loading..."
task.wait(1)
textLabel.Text = "Loading"
task.wait(2)
textLabel.TextTransparency = 1
er:Play()
textLabel.Text = "Done Loading"



task.wait(1)

local spin = game:GetService("TweenService"):Create(main,Data,{Size = UDim2.fromScale(0.457, 0.525)})

kj:Play()
xr:Play()
spin:Play()

task.wait(3)

if game:GetService("RunService"):IsStudio() then
	print("Removing")

	mainGUI:Destroy()
end
