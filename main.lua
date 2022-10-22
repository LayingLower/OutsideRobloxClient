local UserInputService = game:GetService("UserInputService")
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

local drag = Instance.new("Frame")
drag.Name = "Drag"
drag.BackgroundColor3 = Color3.fromRGB(146, 20, 12)
drag.Size = UDim2.fromScale(1, 0.0555)
drag.Parent = main

local textLabelE = Instance.new("TextLabel")
textLabelE.Name = "TextLabel"
textLabelE.FontFace = Font.new("rbxasset://fonts/families/Jura.json")
textLabelE.Text = "LayingLower's funny"
textLabelE.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabelE.TextScaled = true
textLabelE.TextSize = 14
textLabelE.TextWrapped = true
textLabelE.TextXAlignment = Enum.TextXAlignment.Left
textLabelE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textLabelE.BackgroundTransparency = 1
textLabelE.Size = UDim2.new(1, 1, 1, 1)
textLabelE.Parent = drag

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

drag.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = main.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

drag.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

task.wait(10)

if game:GetService("RunService"):IsStudio() then
	print("Removing")

	mainGUI:Destroy()
end
