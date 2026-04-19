-- Ch33msV2.lua - Versão Corrigida
print("🔥 Ch33msGUI V2 carregando...")

local player = game.Players.LocalPlayer
local sg = Instance.new("ScreenGui")
sg.Name = "Ch33msV2"
sg.ResetOnSpawn = false
sg.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.68, 0, 0.78, 0)
frame.Position = UDim2.new(0.16, 0, 0.11, 0)
frame.BackgroundColor3 = Color3.fromRGB(13, 13, 26)
frame.BorderSizePixel = 0
frame.Parent = sg

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 85, 115)
stroke.Thickness = 4
stroke.Parent = frame

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.12, 0)
title.BackgroundTransparency = 1
title.Text = "Ch33msGUI v1.0 by Ch33mskidd"
title.TextColor3 = Color3.fromRGB(255, 105, 130)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = frame

-- Botão Close
local close = Instance.new("TextButton")
close.Size = UDim2.new(0.37, 0, 0.085, 0)
close.Position = UDim2.new(0.315, 0, 0.90, 0)
close.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(255, 100, 125)
close.TextScaled = true
close.Font = Enum.Font.GothamBold
close.Parent = frame

local cs = Instance.new("UIStroke")
cs.Color = Color3.fromRGB(255, 80, 110)
cs.Thickness = 3.5
cs.Parent = close

local cc = Instance.new("UICorner")
cc.CornerRadius = UDim.new(0, 12)
cc.Parent = close

-- Close + View
close.MouseButton1Click:Connect(function()
	frame.Visible = false
	local view = Instance.new("TextButton")
	view.Size = UDim2.new(0, 140, 0, 55)
	view.Position = UDim2.new(0.03, 0, 0.85, 0)
	view.BackgroundColor3 = Color3.fromRGB(255, 50, 80)
	view.Text = "View"
	view.TextColor3 = Color3.fromRGB(255, 255, 255)
	view.TextScaled = true
	view.Font = Enum.Font.GothamBlack
	view.Parent = sg

	local vs = Instance.new("UIStroke")
	vs.Color = Color3.fromRGB(255, 255, 255)
	vs.Thickness = 3
	vs.Parent = view

	local vc = Instance.new("UICorner")
	vc.CornerRadius = UDim.new(0, 10)
	vc.Parent = view

	view.MouseButton1Click:Connect(function()
		frame.Visible = true
		view:Destroy()
	end)
end)

print("✅ Ch33msGUI V2 carregada com sucesso!")
