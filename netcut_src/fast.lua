-- Color #424242

local bcolor = Color3.fromHex("#212121")

local bocolor = Color3.fromHex("#616161")

local tcolor = Color3.fromHex("#616161")

local tacolor = Color3.fromHex("#424242")

-- Objects
 
local screengui = Instance.new("ScreenGui")

local mainframe = Instance.new("Frame")
local tab1 = Instance.new("Frame")

local aimbot = Instance.new("TextButton")
local antiaim = Instance.new("TextButton")
local visuals = Instance.new("TextButton")
local misc = Instance.new("TextButton")
local config = Instance.new("TextButton")
local skins = Instance.new("TextButton")
local unload = Instance.new("TextButton")

-- Properties
 
screengui.Parent = game.CoreGui
 
-- Frames

mainframe.Name = "Frame"
mainframe.Parent = screengui
mainframe.BackgroundColor3 = bcolor
mainframe.BorderColor3 = bocolor
mainframe.BackgroundTransparency = 0
mainframe.Position = UDim2.new(0, 413, 0, 21)
mainframe.Size = UDim2.new(0, 464, 0, 474)
mainframe.Active = true
mainframe.Selectable = true
mainframe.Draggable = true

tab1.Name = "TabFrame1"
tab1.Parent = mainframe
tab1.BackgroundColor3 = tacolor
tab1.BorderColor3 = bocolor
tab1.BackgroundTransparency = 0
tab1.Position = UDim2.new(0, 4, 0, 30)
tab1.Size = UDim2.new(0, 456, 0, 440)
tab1.Active = true

-- Buttons

aimbot.Name = "aimbot"
aimbot.Parent = mainframe
aimbot.BackgroundColor3 = bcolor
aimbot.BorderColor3 = bocolor
aimbot.BackgroundTransparency = 0
aimbot.Position = UDim2.new(0, 0, 0, 0)
aimbot.Size = UDim2.new(0, 80, 0, 25)
aimbot.Font = Enum.Font.RobotoMono
aimbot.Text = "aimbot"
aimbot.TextColor3 = tcolor
aimbot.TextSize = 14
aimbot.TextWrapped = true

antiaim.Name = "antiaim"
antiaim.Parent = mainframe
antiaim.BackgroundColor3 = bcolor
antiaim.BorderColor3 = bocolor
antiaim.BackgroundTransparency = 0
antiaim.Position = UDim2.new(0, 75, 0, 0)
antiaim.Size = UDim2.new(0, 80, 0, 25)
antiaim.Font = Enum.Font.RobotoMono
antiaim.Text = "antiaim"
antiaim.TextColor3 = tcolor
antiaim.TextSize = 14
antiaim.TextWrapped = true

visuals.Name = "visuals"
visuals.Parent = mainframe
visuals.BackgroundColor3 = bcolor
visuals.BorderColor3 = bocolor
visuals.BackgroundTransparency = 0
visuals.Position = UDim2.new(0, 155, 0, 0)
visuals.Size = UDim2.new(0, 80, 0, 25)
visuals.Font = Enum.Font.RobotoMono
visuals.Text = "visuals"
visuals.TextColor3 = tcolor
visuals.TextSize = 14
visuals.TextWrapped = true

misc.Name = "misc"
misc.Parent = mainframe
misc.BackgroundColor3 = bcolor
misc.BorderColor3 = bocolor
misc.BackgroundTransparency = 0
misc.Position = UDim2.new(0, 235, 0, 0)
misc.Size = UDim2.new(0, 80, 0, 25)
misc.Font = Enum.Font.RobotoMono
misc.Text = "misc"
misc.TextColor3 = tcolor
misc.TextSize = 14
misc.TextWrapped = true

unload.Name = "unload"
unload.Parent = mainframe
unload.BackgroundColor3 = bcolor
unload.BorderColor3 = bocolor
unload.BackgroundTransparency = 0
unload.Position = UDim2.new(0, 380, 0, 0)
unload.Size = UDim2.new(0, 80, 0, 25)
unload.Font = Enum.Font.RobotoMono
unload.Text = "unload"
unload.TextColor3 = tcolor
unload.TextSize = 14
unload.TextWrapped = true