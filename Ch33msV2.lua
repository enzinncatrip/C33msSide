-- Ch33msV2 - GUI Completa
print("🔥 Carregando Ch33msGUI V2...")

local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Ch33msV2"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.68, 0, 0.78, 0)
mainFrame.Position = UDim2.new(0.16, 0, 0.11, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 26)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
corner.Parent = mainFrame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 85, 115)
stroke.Thickness = 4
stroke.Parent = mainFrame

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.12, 0)
title.BackgroundTransparency = 1
title.Text = "Ch33msGUI v1.0 by Ch33mskidd"
title.TextColor3 = Color3.fromRGB(255, 105, 130)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = mainFrame

-- Botão Close
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0.37, 0, 0.085, 0)
closeBtn.Position = UDim2.new(0.315, 0, 0.90, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
closeBtn.Text = "Close"
closeBtn.TextColor3 = Color3.fromRGB(255, 100, 125)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = mainFrame

local closeStroke = Instance.new("UIStroke")
closeStroke.Color = Color3.fromRGB(255, 80, 110)
closeStroke.Thickness = 3.5
closeStroke.Parent = closeBtn

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 12)
closeCorner.Parent = closeBtn

-- Sistema Close + View
closeBtn.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
	
	local viewBtn = Instance.new("TextButton")
	viewBtn.Size = UDim2.new(0, 140, 0, 55)
	viewBtn.Position = UDim2.new(0.03, 0, 0.85, 0)
	viewBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 80)
	viewBtn.Text = "View"
	viewBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	viewBtn.TextScaled = true
	viewBtn.Font = Enum.Font.GothamBlack
	viewBtn.Parent = screenGui

	local vs = Instance.new("UIStroke")
	vs.Color = Color3.fromRGB(255, 255, 255)
	vs.Thickness = 3
	vs.Parent = viewBtn

	local vc = Instance.new("UICorner")
	vc.CornerRadius = UDim.new(0, 10)
	vc.Parent = viewBtn

	viewBtn.MouseButton1Click:Connect(function()
		mainFrame.Visible = true
		viewBtn:Destroy()
	end)
end)

print("✅ Ch33msGUI V2 carregada com sucesso!")
