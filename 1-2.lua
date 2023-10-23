local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local lighting = game:GetService("Lighting")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local textservice = game:GetService('TextService')

local here = game.CoreGui
local loader = Instance.new("ScreenGui", here)
local button = Instance.new("TextButton")
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")
local button4 = Instance.new("TextButton")
local button5 = Instance.new("TextButton")
local button6 = Instance.new("TextButton")
local text = Instance.new("TextLabel")
local exitbutton = Instance.new("TextButton")
local frame = Instance.new("Frame")
local frame1 = Instance.new("Frame")

_G.click = false
_G.chams = false
_G.time = false
_G.selfcham = false
_G.hatcher = false
_G.clicker = false
_G.Best = false
_G.bhop = false
_G.Speed = 100

local function getTextBounds(Text, Font, Size, Resolution)
	local Bounds = textservice:GetTextSize(Text, Size, Font, Resolution or Vector2.new(1920, 1080))
return Bounds.X, Bounds.Y
end

function isAlive(plr)
    if not plr then plr = localPlayer end
    return plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 and true or false
end

local Xsize, Ysize = getTextBounds(localPlayer.Name, Enum.Font.Code, 13)

frame.Name = "frame"
frame.Parent = loader
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
frame.Position = UDim2.new(0.553374231, -200, 0.42504409, -92)
frame.Size = UDim2.new(0, 150, 0, 150)
frame.Selectable = true
frame.Active = true
frame.Draggable = true

frame1.Name = "frame1"
frame1.Parent = loader
frame1.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
frame1.BorderColor3 = Color3.fromRGB(27, 42, 73)
frame1.Position = UDim2.new(0, 108, 0, -28)
frame1.Size = UDim2.new(0, 225 + Xsize + 20, 0, 20)
frame1.Selectable = true
frame1.Active = true
frame1.Draggable = true

exitbutton.Name = "exitbutton"
exitbutton.Parent = frame
exitbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitbutton.BackgroundTransparency = 0.990
exitbutton.BorderSizePixel = 0
exitbutton.Position = UDim2.new(1, -24, 0.88, 0)
exitbutton.Size = UDim2.new(0, 20, 0, 20)
exitbutton.Font = Enum.Font.SourceSans
exitbutton.Text = "Exit"
exitbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
exitbutton.TextSize = 14.000
exitbutton.MouseButton1Click:Connect(function()
	_G.click = false
	_G.chams = false
	_G.time = false
	_G.selfcham = false
	loader:Destroy()
end)

text.Name = "text"
text.Visible = true
text.Parent = frame1
text.Font = Enum.Font.Code
text.BackgroundTransparency = 1
text.BorderSizePixel = 0
text.TextStrokeTransparency = 1
text.TextColor3 = Color3.fromRGB(0, 0, 0)
text.TextSize = 13
text.Position = UDim2.new(0.02, 0, 0.5, 0)
text.Size = UDim2.new(0, 0, 0, 0)
text.Active = true
text.Text = ("DaveHax | DevBuild | 2023.04.18 |"..localPlayer.Name)
text.Selectable = true
text.Draggable = true
text.TextXAlignment = "Left"
text.ZIndex = 2

button6.Name = "button6"
button6.Parent = frame
button6.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button6.BackgroundTransparency = 0.5
button6.BorderSizePixel = 0
button6.Position = UDim2.new(0, 0, 0.6, 0)
button6.Size = UDim2.new(1, 0, 0.1, 0)
button6.Font = Enum.Font.Code
button6.Text = "---"
button6.TextColor3 = Color3.fromRGB(0, 0, 0)
button6.TextSize = 13
button6.MouseButton1Click:Connect(function()

end)

button5.Name = "button5"
button5.Parent = frame
button5.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button5.BackgroundTransparency = 0.5
button5.BorderSizePixel = 0
button5.Position = UDim2.new(0, 0, 0.5, 0)
button5.Size = UDim2.new(1, 0, 0.1, 0)
button5.Font = Enum.Font.Code
button5.Text = "---"
button5.TextColor3 = Color3.fromRGB(0, 0, 0)
button5.TextSize = 13
button5.MouseButton1Click:Connect(function()

end)

button4.Name = "button4"
button4.Parent = frame
button4.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button4.BackgroundTransparency = 0.5
button4.BorderSizePixel = 0
button4.Position = UDim2.new(0, 0, 0.4, 0)
button4.Size = UDim2.new(1, 0, 0.1, 0)
button4.Font = Enum.Font.Code
button4.Text = "Bhop"
button4.TextColor3 = Color3.fromRGB(0, 0, 0)
button4.TextSize = 13
button4.MouseButton1Click:Connect(function()
	_G.bhop = not _G.bhop
	spawn(function ()
		while _G.bhop == true do runService.RenderStepped:Wait()--wait()
			if isAlive() and userInputService:IsKeyDown(Enum.KeyCode.Space) then
				localPlayer.Character.Humanoid.Jump = true
				local speed = 50
				local dir = camera.CFrame.LookVector * Vector3.new(1,0,1)
				local move = Vector3.new()
				move = userInputService:IsKeyDown(Enum.KeyCode.W) and move + dir or move
				move = userInputService:IsKeyDown(Enum.KeyCode.S) and move - dir or move
				move = userInputService:IsKeyDown(Enum.KeyCode.D) and move + Vector3.new(-dir.Z,0,dir.X) or move
				move = userInputService:IsKeyDown(Enum.KeyCode.A) and move + Vector3.new(dir.Z,0,-dir.X) or move
				if move.Unit.X == move.Unit.X then
					move = move.Unit
					localPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(move.X*speed,localPlayer.Character.HumanoidRootPart.Velocity.Y,move.Z*speed)
				end
			end
		end
	end)
end)

button3.Name = "button3"
button3.Parent = frame
button3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button3.BackgroundTransparency = 0.5
button3.BorderSizePixel = 0
button3.Position = UDim2.new(0, 0, 0.3, 0)
button3.Size = UDim2.new(1, 0, 0.1, 0)
button3.Font = Enum.Font.Code
button3.Text = "Self Chams"
button3.TextColor3 = Color3.fromRGB(0, 0, 0)
button3.TextSize = 13
button3.MouseButton1Click:Connect(function()
	_G.selfcham = not _G.selfcham
	local selfcham = game.Workspace.trocindavid_alt6
	if _G.selfcham == true then
		for _, object in ipairs(selfcham:GetChildren())  do
			if object:IsA("SurfaceGui") or object:IsA("Decal") or object:IsA("BillboardGui") or object:IsA("Folder") or object:IsA("Shirt") or object:IsA("Pants") or object:IsA("BodyColors") then
				object:Destroy()
			end
		end
		for _, object in ipairs(selfcham:GetChildren())  do
			if object:IsA("MeshPart") or object:IsA("Part") then
				object.Material = "ForceField"
				object.Reflectance = 0
			end
		end
	elseif _G.selfcham == false then
		for _, object in ipairs(selfcham:GetChildren())  do
			if object:IsA("MeshPart") or object:IsA("Part") then
				object.Material = "SmoothPlastic"
				object.Reflectance = 0
			end
		end
	end
end)

button2.Name = "button2"
button2.Parent = frame
button2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button2.BackgroundTransparency = 0.5
button2.BorderSizePixel = 0
button2.Position = UDim2.new(0, 0, 0.2, 0)
button2.Size = UDim2.new(1, 0, 0.1, 0)
button2.Font = Enum.Font.Code
button2.Text = "Time Changer"
button2.TextColor3 = Color3.fromRGB(0, 0, 0)
button2.TextSize = 13
button2.MouseButton1Click:Connect(function()
	_G.time = not _G.time
	if _G.time == true then
		game.Lighting.TimeOfDay = "00:00:00"
	elseif _G.time == false then
		game.Lighting.TimeOfDay = "14:30:00"
	end
end)

button1.Name = "button1"
button1.Parent = frame
button1.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button1.BackgroundTransparency = 0.5
button1.BorderSizePixel = 0
button1.Position = UDim2.new(0, 0, 0.1, 0)
button1.Size = UDim2.new(1, 0, 0.1, 0)
button1.Font = Enum.Font.Code
button1.Text = "Speed Chmas"
button1.TextColor3 = Color3.fromRGB(0, 0, 0)
button1.TextSize = 13
button1.MouseButton1Click:Connect(function()
	_G.chams = not _G.chams
	if _G.chams == true then
		spawn(function()
			print("press")
			while _G.chams == true do runService.RenderStepped:Wait()--wait()
				local Parts = {} 
				for i, Part in pairs(localPlayer.Character:GetChildren()) do
					if Part:IsA("Part") then
						table.insert(Parts, "game.Workspace."..localPlayer.Name.."."..Part.Name)
					end
				end
				for i, Part in pairs(Parts) do
					local partclone = Part:Clone()
					partclone.Parent = game.Workspace
					for i, Partc in pairs(partclone:GetChildren()) do
						Partc:Destroy()
					end
					partclone.Material = Enum.Material.ForceField
					partclone.Reflectance = 0.2
				end	
			end
		end)
	end
end)

button.Name = "button"
button.Parent = frame
button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button.BackgroundTransparency = 0.5
button.BorderSizePixel = 0
button.Position = UDim2.new(0, 0, 0, 0)
button.Size = UDim2.new(1, 0, 0.1, 0)
button.Font = Enum.Font.Code
button.Text = "Speed"
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.TextSize = 13
button.MouseButton1Click:Connect(function()
	_G.click = not _G.click
	local speedbefore = game.Workspace.trocindavid_alt6.Humanoid.WalkSpeed
	if _G.click == true then
		while _G.click == true do
			if game.Workspace.trocindavid_alt6.Humanoid.WalkSpeed < 60 then
				game.Workspace.trocindavid_alt6.Humanoid.WalkSpeed = _G.Speed
			elseif game.Workspace.trocindavid_alt6.Humanoid.WalkSpeed > 60 then
				wait(1)
			end
		end
	elseif _G.click == false then
		game.Workspace.trocindavid_alt6.Humanoid.WalkSpeed = speedbefore
	end
end)


