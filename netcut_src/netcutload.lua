--[[
print("																 ")
print("##    ##  ########  ########      ########  ##    ##  ########")
print("####  ##  ##           ##         ##        ##    ##     ##   ")
print("## ## ##  ########     ##         ##        ##    ##     ##   ")
print("##  ####  ##           ##         ##        ##    ##     ##   ")
print("##    ##  ########     ##     ##  ########  ########     ##   ")
print("																 ")
--]]

--==========--
--  Colors  --
--==========--

local color1 = Color3.fromHex("#000000") -- 0,0,0
local color2 = Color3.fromHex("#0c0c0c") -- 12,12,12
local color3 = Color3.fromHex("#454545") -- 69,69,69
-- local color4 = Color3.fromHex("#FFFFFF") -- 255,255,255
local color4 = Color3.fromHex("#B579F2")


--===========--
--  Tables   --
--===========-- 

uids = {

	puid = loadstring(game:HttpGet('https://pastebin.com/raw/DsT39wdh'))();

	pname = loadstring(game:HttpGet('https://pastebin.com/raw/S9Q65bVV'))();

}

--===========--
--  Objects  --
--===========--

local player = game:GetService("Players").LocalPlayer

local screengui = Instance.new("ScreenGui")

local viewport = game.workspace.Camera.ViewportSize

local mainframe = Instance.new("Frame")
local frame = Instance.new("Frame")
local outline = Instance.new("Frame")
local mainframe1 = Instance.new("Frame")
local frame1 = Instance.new("Frame")
local outline1 = Instance.new("Frame")

local login = Instance.new("TextButton")
local settings = Instance.new("TextButton")

local uid = Instance.new("TextBox")

local netcut = Instance.new("TextLabel")
local wellcome = Instance.new("TextLabel")
local info = Instance.new("TextLabel")
local settings1 = Instance.new("TextLabel")

--==========--
--  Boolean --
--==========--

local click = false

local tshit = true

--==============--
--  Small print  --
--==============--

print("Welcome to net.cut "..player.Name.." thank you for supporting us!")

--==============--
--  Proprietes  --
--==============--

screengui.Parent = game.CoreGui
screengui.Name = "DevAmpliedChat"

mainframe.Name = "mainframe"
mainframe.AnchorPoint = Vector2.new(0, 0)
mainframe.Size = UDim2.new(0, 300, 0, 200)
mainframe.Position = UDim2.fromOffset((viewport.X / 2) - (mainframe.Size.X.Offset / 2), (viewport.Y / 2) - (mainframe.Size.Y.Offset / 2))
mainframe.Parent = screengui
mainframe.BackgroundColor3 = color1
mainframe.BorderColor3 = color3
mainframe.BorderSizePixel = 0
mainframe.BackgroundTransparency = 0
mainframe.Active = true
mainframe.Selectable = true
mainframe.Draggable = true

frame.Name = "frame"
frame.Parent = mainframe
frame.BackgroundColor3 = color2
frame.BorderColor3 = color3
frame.BorderSizePixel = 1
frame.BackgroundTransparency = 0
frame.Position = UDim2.new(0, 2, 0, 2)
frame.Size = UDim2.new(0, 296, 0, 196)
frame.Active = true

outline.Name = "outline"
outline.Parent = frame
outline.BackgroundColor3 = color2
outline.BorderColor3 = color3
outline.BorderSizePixel = 1
outline.BackgroundTransparency = 0
outline.Position = UDim2.new(0,0,0.848,0)
outline.Size = UDim2.new(1, 0, 0, 30)
outline.Active = true

info.Name = "info"
info.Parent = outline
info.Font = Enum.Font.Code
info.BackgroundTransparency = 1
info.BorderSizePixel = 0
info.TextStrokeTransparency = 1
info.TextColor3 = color3
info.TextSize = 13
info.Text = " Do not redistribute"
info.Position = UDim2.new(0.25, 0, 0.5, 0)
info.Size = UDim2.new(0, 0, 0, 0)
info.Active = true
info.TextXAlignment = "Left"
info.ZIndex = 2

netcut.Name = "netcut"
netcut.Parent = frame
netcut.Font = Enum.Font.Code
netcut.BorderSizePixel = 0
netcut.TextColor3 = color3
netcut.TextSize = 13
netcut.Text = "net.cut" 
netcut.Position = UDim2.new(0.1, 0, 0, 8)
netcut.Size = UDim2.new(0, 0, 0, 0)
netcut.Active = true

wellcome.Name = "wellcome"
wellcome.Parent = frame
wellcome.Font = Enum.Font.Code
wellcome.BorderSizePixel = 0
wellcome.TextStrokeTransparency = 1
wellcome.TextColor3 = color3
wellcome.TextSize = 13

if player.Name == "trocindavid" then
	wellcome.Text = ("Wellcome owner "..player.Name.."!")

else 
	wellcome.Text = ("Wellcome to net.cut "..player.Name.."!")
end	

wellcome.Position = UDim2.new(0.5,0,0.3,0)
wellcome.Size = UDim2.new(0, 0, 0, 0)
wellcome.Active = true

login.Name = "login"
login.Parent = mainframe
login.BorderSizePixel = 0
login.BackgroundColor3 = color3
login.BackgroundTransparency = 0
login.Position = UDim2.new(0.364,0,0.6,0)
login.Size = UDim2.new(0, 82, 0, 35)
login.TextStrokeTransparency = 1
login.Font = Enum.Font.Code
login.Text = "Login"
login.TextColor3 = color2
login.TextSize = 13

settings.Name = "settings"
settings.Parent = mainframe
settings.BorderSizePixel = 0
settings.BackgroundTransparency = 1
settings.Position = UDim2.new(0.38, 0, 0, 0)
settings.Size = UDim2.new(0, 64, 0, 32)
settings.Font = Enum.Font.Code
settings.Text = "Settings"
settings.TextColor3 = color3
settings.TextSize = 13
uid.Name = "uid"
uid.Size = UDim2.new(0, 200, 0, 24)
uid.Position = UDim2.new(0.168,0,0.4,0)
uid.Parent = mainframe
uid.BackgroundColor3 = color3
uid.BorderColor3 = color2
uid.BackgroundTransparency = 0
uid.BorderSizePixel = 0
uid.Font = Enum.Font.Ubuntu
uid.PlaceholderColor3 = color2
uid.PlaceholderText = " uid"
uid.TextColor3 = color2
uid.TextSize = 15
uid.Text = " uid"
uid.TextXAlignment = "Left"

--=============--
--  End of gui --
--=============--

--[[
if tshit == true then
	task.spawn(function()
		while true do
			wait(0.2)
			netcut.Text = "Net.cut"
			wait(0.2)
			netcut.Text = "nEt.cut"
			wait(0.2)
			netcut.Text = "neT.cut"
			wait(0.2)
			netcut.Text = "net.cut"
			wait(0.2)
			netcut.Text = "net.Cut"
			wait(0.2)
			netcut.Text = "net.cUt"
			wait(0.2)
			netcut.Text = "net.cuT"
		end
	end)
end
--]]

login.MouseButton1Click:Connect(function()
	if player.Name == uids.pname then
		if uid.Text == uids.puid then

			local color1 = Color3.fromHex("#000000") -- 0,0,0
			local color2 = Color3.fromHex("#0c0c0c") -- 12,12,12
			local color3 = Color3.fromHex("#323232") -- 50,50,50
			local color4 = Color3.fromHex("#858585") -- 255,255,255
			local color5 = Color3.fromHex("#858585") -- 163, 163, 163
			local color6 = Color3.fromHex("#101010") -- 16,16,16

			local build = "admin_test"
			local player = game:GetService("Players").LocalPlayer
			local TextService = game:GetService('TextService')
			local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

			local screengui1 = Instance.new("ScreenGui")

			local mainframe1 = Instance.new("Frame")
			local main = Instance.new("Frame")
			local notifyer = Instance.new("Frame")
			local frame1 = Instance.new("Frame")
			local frame1outline = Instance.new("Frame")

			local tabbuttons = Instance.new("Frame")
			local tabframes = Instance.new("Frame")

			local tab1button = Instance.new("Frame")
			local tab2button = Instance.new("Frame")
			local tab3button = Instance.new("Frame")
			local tab4button = Instance.new("Frame")
			local tab5button = Instance.new("Frame")
			local tab6button = Instance.new("Frame")

			local tab1magicframe = Instance.new("Frame")
			local tab2magicframe = Instance.new("Frame")
			local tab3magicframe = Instance.new("Frame")
			local tab4magicframe = Instance.new("Frame")
			local tab5magicframe = Instance.new("Frame")
			local tab6magicframe = Instance.new("Frame")

			local tab1frames = Instance.new("Frame")
			local tab2frames = Instance.new("Frame")
			local tab3frames = Instance.new("Frame")
			local tab4frames = Instance.new("Frame")
			local tab5frames = Instance.new("Frame")
			local tab6frames = Instance.new("Frame")

			local frameleft1 = Instance.new("Frame")
			local frameright1 = Instance.new("Frame")
			local frameleft2 = Instance.new("Frame")
			local frameright2 = Instance.new("Frame")
			local frameleft3 = Instance.new("Frame")
			local frameright3 = Instance.new("Frame")
			local frameleft4 = Instance.new("Frame")
			local frameright4 = Instance.new("Frame")
			local frameleft5 = Instance.new("Frame")
			local frameright5 = Instance.new("Frame")
			local frameleft6 = Instance.new("Frame")
			local frameright6 = Instance.new("Frame")

			local leftframe1t1 = Instance.new("Frame")
			local leftframe2t1 = Instance.new("Frame")
			local rightframe1t1 = Instance.new("Frame")
			local leftframe1t6 = Instance.new("Frame")
			local leftframe2t6 = Instance.new("Frame")
			local rightframe1t6 = Instance.new("Frame")

			local leftframeoutline1t1 = Instance.new("Frame") --
			local leftframeoutline2t1 = Instance.new("Frame")
			local rightframeoutline1t1 = Instance.new("Frame")
			local leftframeoutline1t6 = Instance.new("Frame") --
			local leftframeoutline2t6 = Instance.new("Frame")
			local rightframeoutline1t6 = Instance.new("Frame")

			local leftmagicframe1t1 = Instance.new("Frame") --
			local leftmagicframe2t1 = Instance.new("Frame")
			local rightmagicframe1t1 = Instance.new("Frame")
			local leftmagicframe1t6 = Instance.new("Frame") --
			local leftmagicframe2t6 = Instance.new("Frame")
			local rightmagicframe1t6 = Instance.new("Frame")

			local leftframename1t1 = Instance.new("TextLabel") --
			local leftframename2t1 = Instance.new("TextLabel")
			local rightframename1t1 = Instance.new("TextLabel")
			local leftframename1t6 = Instance.new("TextLabel") --
			local leftframename2t6 = Instance.new("TextLabel")
			local rightframename1t6 = Instance.new("TextLabel")

			local leftutilitesframe1 = Instance.new("Frame")
			local leftutilitesframe2 = Instance.new("Frame")
			local rightutilitesframe = Instance.new("Frame")

			local leftutilitesuilist1 = Instance.new("UIListLayout")
			local leftutilitesuilist2 = Instance.new("UIListLayout")
			local rightutilitesuilist = Instance.new("UIListLayout")

			local toggleoutline1 = Instance.new("Frame")
			local togglebutton1 = Instance.new("TextButton")

			local buttonoutline1 = Instance.new("Frame")
			local clickbutton1 = Instance.new("TextButton")

			local textboxframe1 = Instance.new("Frame")
			local textbox1 = Instance.new("TextBox")
			local textboxframe2 = Instance.new("Frame")
			local textbox2 = Instance.new("TextBox")

			local tabbutton1 = Instance.new("TextButton") -- AimBot
			local tabbutton2 = Instance.new("TextButton") -- RageBot
			local tabbutton3 = Instance.new("TextButton") -- Visuals
			local tabbutton4 = Instance.new("TextButton") -- Skins
			local tabbutton5 = Instance.new("TextButton") -- Misc
			local tabbutton6 = Instance.new("TextButton") -- Other

			local netcut1 = Instance.new("TextLabel")

			local tab1name = Instance.new("TextLabel")
			local tab2name = Instance.new("TextLabel")
			local tab3name = Instance.new("TextLabel")
			local tab4name = Instance.new("TextLabel")
			local tab5name = Instance.new("TextLabel")
			local tab6name = Instance.new("TextLabel")

			local uilist = Instance.new("UIListLayout")
			local notifyeruilist = Instance.new("UIListLayout")

			local frameleftuilist1 = Instance.new("UIListLayout")
			local framerightuilist1 = Instance.new("UIListLayout")
			local frameleftuilist6 = Instance.new("UIListLayout")
			local framerightuilist6 = Instance.new("UIListLayout")

			local scrolingframe1 = Instance.new("ScrollingFrame")
			local scrolingframe2 = Instance.new("ScrollingFrame")
			local scrolingframe3 = Instance.new("ScrollingFrame")
			local scrolingframe4 = Instance.new("ScrollingFrame")
			local scrolingframe5 = Instance.new("ScrollingFrame")
			local scrolingframe6 = Instance.new("ScrollingFrame")

			local buttonname1 = Instance.new("TextLabel")
			local buttonname2 = Instance.new("TextLabel")

			local clicked = false

			screengui1.Parent = game.CoreGui
			screengui1.Name = "DevAmpliedChat"

			mainframe1.Name = "mainframe1"
			mainframe1.Parent = screengui1
			mainframe1.BackgroundColor3 = color1
			mainframe1.BorderSizePixel = 0
			mainframe1.BackgroundTransparency = 0
			mainframe1.AnchorPoint = Vector2.new(0.5, 0.5)
			mainframe1.Position = UDim2.new(0.5,0,0.5,0)
			mainframe1.Size = UDim2.new(0, 516, 0, 562)
			mainframe1.Active = true
			mainframe1.Selectable = true
			mainframe1.Draggable = true
			mainframe1.ZIndex = 1

			main.Name = "main"
			main.Parent = mainframe1
			main.BackgroundColor3 = color2
			main.BorderColor3 = color5
			main.BorderSizePixel = 1
			main.BackgroundTransparency = 0
			main.Position = UDim2.new(0, 2, 0, 2)
			main.Size = UDim2.new(0, 512, 0, 558)
			main.Active = true
			main.ZIndex = 1

			netcut1.Name = "netcut1"
			netcut1.Parent = mainframe1
			netcut1.Font = Enum.Font.Code
			netcut1.BackgroundTransparency = 1
			netcut1.BorderSizePixel = 0
			netcut1.TextStrokeTransparency = 0
			netcut1.TextColor3 = color4
			netcut1.TextSize = 13
			netcut1.Text = ("net.cut|"..build.."|"..player.Name)
			netcut1.Position = UDim2.new(0.02, 0, 0.03, 0)
			netcut1.Size = UDim2.new(0, 0, 0, 0)
			netcut1.Active = true
			netcut1.TextXAlignment = "Left"
			netcut1.ZIndex = 2

			frame1outline.Name = "frame1outline"
			frame1outline.Parent = main
			frame1outline.BackgroundColor3 = color2
			frame1outline.BorderColor3 = color3
			frame1outline.BorderSizePixel = 1
			frame1outline.BackgroundTransparency = 0
			frame1outline.Position = UDim2.new(0, 8, 0, 26)
			frame1outline.Size = UDim2.new(1, -16, 1, -35) -- 1, -16, 1, -35
			frame1outline.Active = true
			frame1outline.ZIndex = 1

			frame1.Name = "frame1"
			frame1.Parent = frame1outline
			frame1.BackgroundColor3 = color2
			frame1.BorderColor3 = color1
			frame1.BorderSizePixel = 1
			frame1.BackgroundTransparency = 0
			frame1.Position = UDim2.new(0, 1, 0, 1)
			frame1.Size = UDim2.new(1,-2,1,-2)
			frame1.Active = true
			frame1.ZIndex = 1

			tabbuttons.Name = "tabbuttons"
			tabbuttons.Parent = frame1
			tabbuttons.BackgroundColor3 = color2
			tabbuttons.BorderColor3 = color3
			tabbuttons.BorderSizePixel = 0
			tabbuttons.BackgroundTransparency = 0
			tabbuttons.Position = UDim2.new(0, 8, 0, 8)
			tabbuttons.Size = UDim2.new(1, -16, 0, 21)
			tabbuttons.Active = true
			tabbuttons.ZIndex = 1

			uilist.Name = "uilistlayout"
			uilist.Parent = tabbuttons
			uilist.FillDirection = "Horizontal"
			uilist.HorizontalAlignment = "Left"
			uilist.Padding = UDim.new(0, 0)
			uilist.SortOrder = "LayoutOrder"
			uilist.VerticalAlignment = "Top"

			--

			notifyer.Name = "notifyer"
			notifyer.Parent = screengui1
			notifyer.BackgroundColor3 = color3
			notifyer.BorderColor3 = color2
			notifyer.BorderSizePixel = 0.5
			notifyer.BackgroundTransparency = 0.8
			notifyer.Position = UDim2.new(0, 0, 0, 2)
			notifyer.Size = UDim2.new(0, 500, 0, 200)
			notifyer.Active = true
			notifyer.Selectable = true
			notifyer.Draggable = true
			notifyer.ZIndex = 0

			notifyeruilist.Name = "uilistlayout"
			notifyeruilist.Parent = notifyer
			notifyeruilist.FillDirection = "Vertical"
			notifyeruilist.HorizontalAlignment = "Left"
			notifyeruilist.Padding = UDim.new(0, 4)
			notifyeruilist.SortOrder = "LayoutOrder"
			notifyeruilist.VerticalAlignment = "Top"

			--

			tab1button.Name = "tab1button" -- frame
			tab1button.Parent = tabbuttons
			tab1button.BackgroundColor3 = color2
			tab1button.BorderColor3 = color3
			tab1button.BorderSizePixel = 1
			tab1button.BackgroundTransparency = 0
			tab1button.Position = UDim2.new(0, 8, 0, 8)
			tab1button.Size = UDim2.new(0, 52, 1, 0)
			tab1button.ZIndex = 1

			tabbutton1.Name = "tabbutton1" -- button
			tabbutton1.Parent = tab1button
			tabbutton1.BackgroundColor3 = color4
			tabbutton1.BorderColor3 = color2
			tabbutton1.BorderSizePixel = 0
			tabbutton1.BackgroundTransparency = 1
			tabbutton1.Position = UDim2.new(0, 0, 0, 0)
			tabbutton1.Size = UDim2.new(1, 0, 1, 0)
			tabbutton1.TextTransparency = 1
			tabbutton1.ZIndex = 1

			tab1name.Name = "tab1name" -- name
			tab1name.Parent = tab1button
			tab1name.Font = Enum.Font.Code
			tab1name.BackgroundTransparency = 1
			tab1name.BorderSizePixel = 0
			tab1name.TextStrokeTransparency = 0
			tab1name.TextColor3 = color4
			tab1name.TextSize = 13
			tab1name.Text = ("AimBot")
			tab1name.Position = UDim2.new(0, 0, 0, 0)
			tab1name.Size = UDim2.new(1, 0, 1, -1)
			tab1name.Active = true
			tab1name.TextXAlignment = "Center"
			tab1name.ZIndex = 2

			tab1magicframe.Name = "tab1magicframe" -- magicframe
			tab1magicframe.Parent = tab1button
			tab1magicframe.BackgroundColor3 = color2
			tab1magicframe.BorderColor3 = color2
			tab1magicframe.BorderSizePixel = 0
			tab1magicframe.BackgroundTransparency = 0
			tab1magicframe.Position = UDim2.new(0, 0, 1, 0)
			tab1magicframe.Size = UDim2.new(1, -1, 0, 1)
			tab1magicframe.ZIndex = 2

			--

			tab2button.Name = "tab2button"
			tab2button.Parent = tabbuttons
			tab2button.BackgroundColor3 = color2
			tab2button.BorderColor3 = color3
			tab2button.BorderSizePixel = 1
			tab2button.BackgroundTransparency = 0
			tab2button.Position = UDim2.new(0, 8, 0, 8)
			tab2button.Size = UDim2.new(0, 60, 1, 0)
			tab2button.ZIndex = 1

			tabbutton2.Name = "tabbutton2"
			tabbutton2.Parent = tab2button
			tabbutton2.BackgroundColor3 = color4
			tabbutton2.BorderColor3 = color2
			tabbutton2.BorderSizePixel = 0
			tabbutton2.BackgroundTransparency = 1
			tabbutton2.Position = UDim2.new(0, 0, 0, 0)
			tabbutton2.Size = UDim2.new(1, 0, 1, 0)
			tabbutton2.TextTransparency = 1
			tabbutton2.ZIndex = 1

			tab2name.Name = "tab2name"
			tab2name.Parent = tab2button
			tab2name.Font = Enum.Font.Code
			tab2name.BackgroundTransparency = 1
			tab2name.BorderSizePixel = 0
			tab2name.TextStrokeTransparency = 0
			tab2name.TextColor3 = color4
			tab2name.TextSize = 13
			tab2name.Text = ("RageBot")
			tab2name.Position = UDim2.new(0, 0, 0, 0)
			tab2name.Size = UDim2.new(1, 0, 1, -1)
			tab2name.Active = true
			tab2name.TextXAlignment = "Center"
			tab2name.ZIndex = 2

			tab2magicframe.Name = "tab2magicframe"
			tab2magicframe.Parent = tab2button
			tab2magicframe.BackgroundColor3 = color2
			tab2magicframe.BorderColor3 = color2
			tab2magicframe.BorderSizePixel = 0
			tab2magicframe.BackgroundTransparency = 1
			tab2magicframe.Position = UDim2.new(0, 0, 1, 0)
			tab2magicframe.Size = UDim2.new(1, -1, 0, 1)
			tab2magicframe.ZIndex = 2

			--

			tab3button.Name = "tab3button"
			tab3button.Parent = tabbuttons
			tab3button.BackgroundColor3 = color2
			tab3button.BorderColor3 = color3
			tab3button.BorderSizePixel = 1
			tab3button.BackgroundTransparency = 0
			tab3button.Position = UDim2.new(0, 8, 0, 8)
			tab3button.Size = UDim2.new(0, 60, 1, 0)
			tab3button.ZIndex = 1

			tabbutton3.Name = "tabbutton3"
			tabbutton3.Parent = tab3button
			tabbutton3.BackgroundColor3 = color4
			tabbutton3.BorderColor3 = color2
			tabbutton3.BorderSizePixel = 0
			tabbutton3.BackgroundTransparency = 1
			tabbutton3.Position = UDim2.new(0, 0, 0, 0)
			tabbutton3.Size = UDim2.new(1, 0, 1, 0)
			tabbutton3.TextTransparency = 1
			tabbutton3.ZIndex = 1

			tab3name.Name = "tab3name"
			tab3name.Parent = tab3button
			tab3name.Font = Enum.Font.Code
			tab3name.BackgroundTransparency = 1
			tab3name.BorderSizePixel = 0
			tab3name.TextStrokeTransparency = 0
			tab3name.TextColor3 = color4
			tab3name.TextSize = 13
			tab3name.Text = ("Visuals")
			tab3name.Position = UDim2.new(0, 0, 0, 0)
			tab3name.Size = UDim2.new(1, 0, 1, -1)
			tab3name.Active = true
			tab3name.TextXAlignment = "Center"
			tab3name.ZIndex = 2

			tab3magicframe.Name = "tab3magicframe"
			tab3magicframe.Parent = tab3button
			tab3magicframe.BackgroundColor3 = color2
			tab3magicframe.BorderColor3 = color2
			tab3magicframe.BorderSizePixel = 0
			tab3magicframe.BackgroundTransparency = 1
			tab3magicframe.Position = UDim2.new(0, 0, 1, 0)
			tab3magicframe.Size = UDim2.new(1, -1, 0, 1)
			tab3magicframe.ZIndex = 2

			--

			tab4button.Name = "tab4button"
			tab4button.Parent = tabbuttons
			tab4button.BackgroundColor3 = color2
			tab4button.BorderColor3 = color3
			tab4button.BorderSizePixel = 1
			tab4button.BackgroundTransparency = 0
			tab4button.Position = UDim2.new(0, 8, 0, 8)
			tab4button.Size = UDim2.new(0, 52, 1, 0)
			tab4button.ZIndex = 1

			tabbutton4.Name = "tabbutton4"
			tabbutton4.Parent = tab4button
			tabbutton4.BackgroundColor3 = color4
			tabbutton4.BorderColor3 = color2
			tabbutton4.BorderSizePixel = 0
			tabbutton4.BackgroundTransparency = 1
			tabbutton4.Position = UDim2.new(0, 0, 0, 0)
			tabbutton4.Size = UDim2.new(1, 0, 1, 0)
			tabbutton4.TextTransparency = 1
			tabbutton4.ZIndex = 1

			tab4name.Name = "tab4name"
			tab4name.Parent = tab4button
			tab4name.Font = Enum.Font.Code
			tab4name.BackgroundTransparency = 1
			tab4name.BorderSizePixel = 0
			tab4name.TextStrokeTransparency = 0
			tab4name.TextColor3 = color4
			tab4name.TextSize = 13
			tab4name.Text = ("Skins")
			tab4name.Position = UDim2.new(0, 0, 0, 0)
			tab4name.Size = UDim2.new(1, 0, 1, -1)
			tab4name.Active = true
			tab4name.TextXAlignment = "Center"
			tab4name.ZIndex = 2

			tab4magicframe.Name = "tab4magicframe"
			tab4magicframe.Parent = tab4button
			tab4magicframe.BackgroundColor3 = color2
			tab4magicframe.BorderColor3 = color2
			tab4magicframe.BorderSizePixel = 0
			tab4magicframe.BackgroundTransparency = 1
			tab4magicframe.Position = UDim2.new(0, 0, 1, 0)
			tab4magicframe.Size = UDim2.new(1, -1, 0, 1)
			tab4magicframe.ZIndex = 2

			--

			tab5button.Name = "tab5button"
			tab5button.Parent = tabbuttons
			tab5button.BackgroundColor3 = color2
			tab5button.BorderColor3 = color3
			tab5button.BorderSizePixel = 1
			tab5button.BackgroundTransparency = 0
			tab5button.Position = UDim2.new(0, 8, 0, 8)
			tab5button.Size = UDim2.new(0, 48, 1, 0)
			tab5button.ZIndex = 1

			tabbutton5.Name = "tabbutton5"
			tabbutton5.Parent = tab5button
			tabbutton5.BackgroundColor3 = color4
			tabbutton5.BorderColor3 = color2
			tabbutton5.BorderSizePixel = 0
			tabbutton5.BackgroundTransparency = 1
			tabbutton5.Position = UDim2.new(0, 0, 0, 0)
			tabbutton5.Size = UDim2.new(1, 0, 1, 0)
			tabbutton5.TextTransparency = 1
			tabbutton5.ZIndex = 1

			tab5name.Name = "tab5name"
			tab5name.Parent = tab5button
			tab5name.Font = Enum.Font.Code
			tab5name.BackgroundTransparency = 1
			tab5name.BorderSizePixel = 0
			tab5name.TextStrokeTransparency = 0
			tab5name.TextColor3 = color4
			tab5name.TextSize = 13
			tab5name.Text = ("Misc")
			tab5name.Position = UDim2.new(0, 0, 0, 0)
			tab5name.Size = UDim2.new(1, 0, 1, -1)
			tab5name.Active = true
			tab5name.TextXAlignment = "Center"
			tab5name.ZIndex = 2

			tab5magicframe.Name = "tab5magicframe"
			tab5magicframe.Parent = tab5button
			tab5magicframe.BackgroundColor3 = color2
			tab5magicframe.BorderColor3 = color2
			tab5magicframe.BorderSizePixel = 0
			tab5magicframe.BackgroundTransparency = 1
			tab5magicframe.Position = UDim2.new(0, 0, 1, 0)
			tab5magicframe.Size = UDim2.new(1, -1, 0, 1)
			tab5magicframe.ZIndex = 2

			--

			tab6button.Name = "tab6button"
			tab6button.Parent = tabbuttons
			tab6button.BackgroundColor3 = color2
			tab6button.BorderColor3 = color3
			tab6button.BorderSizePixel = 1
			tab6button.BackgroundTransparency = 0
			tab6button.Position = UDim2.new(0, 8, 0, 8)
			tab6button.Size = UDim2.new(0, 60, 1, 0)
			tab6button.ZIndex = 1

			tabbutton6.Name = "tabbutton6"
			tabbutton6.Parent = tab6button
			tabbutton6.BackgroundColor3 = color4
			tabbutton6.BorderColor3 = color2
			tabbutton6.BorderSizePixel = 0
			tabbutton6.BackgroundTransparency = 1
			tabbutton6.Position = UDim2.new(0, 0, 0, 0)
			tabbutton6.Size = UDim2.new(1, 0, 1, 0)
			tabbutton6.TextTransparency = 1
			tabbutton6.ZIndex = 1

			tab6name.Name = "tab6name"
			tab6name.Parent = tab6button
			tab6name.Font = Enum.Font.Code
			tab6name.BackgroundTransparency = 1
			tab6name.BorderSizePixel = 0
			tab6name.TextStrokeTransparency = 0
			tab6name.TextColor3 = color4
			tab6name.TextSize = 13
			tab6name.Text = ("Others")
			tab6name.Position = UDim2.new(0, 0, 0, 0)
			tab6name.Size = UDim2.new(1, 0, 1, -1)
			tab6name.Active = true
			tab6name.TextXAlignment = "Center"
			tab6name.ZIndex = 2

			tab6magicframe.Name = "tab6magicframe"
			tab6magicframe.Parent = tab6button
			tab6magicframe.BackgroundColor3 = color2
			tab6magicframe.BorderColor3 = color2
			tab6magicframe.BorderSizePixel = 0
			tab6magicframe.BackgroundTransparency = 1
			tab6magicframe.Position = UDim2.new(0, 0, 1, 0)
			tab6magicframe.Size = UDim2.new(1, -1, 0, 1)
			tab6magicframe.ZIndex = 2

			--

			tabframes.Name = "tabframes"
			tabframes.Parent = frame1
			tabframes.BackgroundColor3 = color2
			tabframes.BorderColor3 = color3
			tabframes.BorderSizePixel = 1
			tabframes.BackgroundTransparency = 0
			tabframes.Position = UDim2.new(0, 8, 0, 30)
			tabframes.Size = UDim2.new(1, -16, 1, -38)
			tabframes.ZIndex = 1

			--

			tab1frames.Name = "tab1frames"
			tab1frames.Parent = tabframes
			tab1frames.BackgroundColor3 = color2
			tab1frames.BorderColor3 = color3
			tab1frames.BorderSizePixel = 1
			tab1frames.BackgroundTransparency = 1
			tab1frames.Position = UDim2.new(0, 0, 0, 0)
			tab1frames.Size = UDim2.new(1, 0, 1, 0)
			tab1frames.ZIndex = 1
			tab1frames.Visible = true

			tab2frames.Name = "tab2frames"
			tab2frames.Parent = tabframes
			tab2frames.BackgroundColor3 = color2
			tab2frames.BorderColor3 = color3
			tab2frames.BorderSizePixel = 1
			tab2frames.BackgroundTransparency = 1
			tab2frames.Position = UDim2.new(0, 0, 0, 0)
			tab2frames.Size = UDim2.new(1, 0, 1, 0)
			tab2frames.ZIndex = 1
			tab2frames.Visible = false

			tab3frames.Name = "tab3frames"
			tab3frames.Parent = tabframes
			tab3frames.BackgroundColor3 = color2
			tab3frames.BorderColor3 = color3
			tab3frames.BorderSizePixel = 1
			tab3frames.BackgroundTransparency = 1
			tab3frames.Position = UDim2.new(0, 0, 0, 0)
			tab3frames.Size = UDim2.new(1, 0, 1, 0)
			tab3frames.ZIndex = 1
			tab3frames.Visible = false

			tab4frames.Name = "tab4frames"
			tab4frames.Parent = tabframes
			tab4frames.BackgroundColor3 = color2
			tab4frames.BorderColor3 = color3
			tab4frames.BorderSizePixel = 1
			tab4frames.BackgroundTransparency = 1
			tab4frames.Position = UDim2.new(0, 0, 0, 0)
			tab4frames.Size = UDim2.new(1, 0, 1, 0)
			tab4frames.ZIndex = 1
			tab4frames.Visible = false

			tab5frames.Name = "tab5frames"
			tab5frames.Parent = tabframes
			tab5frames.BackgroundColor3 = color2
			tab5frames.BorderColor3 = color3
			tab5frames.BorderSizePixel = 1
			tab5frames.BackgroundTransparency = 1
			tab5frames.Position = UDim2.new(0, 0, 0, 0)
			tab5frames.Size = UDim2.new(1, 0, 1, 0)
			tab5frames.ZIndex = 1
			tab5frames.Visible = false


			tab6frames.Name = "tab6frames"
			tab6frames.Parent = tabframes
			tab6frames.BackgroundColor3 = color2
			tab6frames.BorderColor3 = color3
			tab6frames.BorderSizePixel = 1
			tab6frames.BackgroundTransparency = 1
			tab6frames.Position = UDim2.new(0, 0, 0, 0)
			tab6frames.Size = UDim2.new(1, 0, 1, 0)
			tab6frames.ZIndex = 1
			tab6frames.Visible = false

			-- Tab 1 Start  ===================================================================================================

			-- Scroll Down Feature

			scrolingframe1.Name = "scrolingframe1"
			scrolingframe1.Parent = tab1frames
			scrolingframe1.BackgroundTransparency = 1
			scrolingframe1.Position = UDim2.new(0, 0, 0, 0)
			scrolingframe1.Size = UDim2.new(1, 6,1, 0)
			scrolingframe1.CanvasSize = UDim2.new(0, 0,1.4, 0)
			scrolingframe1.ScrollBarImageTransparency = 1

			--  Frame for right and left to scroll down

			frameleft1.Name = "frameleft1"
			frameleft1.Parent = scrolingframe1
			frameleft1.BackgroundColor3 = color4
			frameleft1.BorderColor3 = color3
			frameleft1.BorderSizePixel = 1
			frameleft1.BackgroundTransparency = 1
			frameleft1.Position = UDim2.new(0, 10, 0, 8)
			frameleft1.Size = UDim2.new(0, 225, 0, 470)
			frameleft1.ZIndex = 1

			frameright1.Name = "frameright1"
			frameright1.Parent = scrolingframe1
			frameright1.BackgroundColor3 = color4
			frameright1.BorderColor3 = color3
			frameright1.BorderSizePixel = 1
			frameright1.BackgroundTransparency = 1
			frameright1.Position = UDim2.new(0, 245, 0, 8)
			frameright1.Size = UDim2.new(0, 225, 0, 470)
			frameright1.ZIndex = 1

			-- Nice spacing betwen the frames

			frameleftuilist1.Name = "frameleftuilist1"
			frameleftuilist1.Parent = frameleft1
			frameleftuilist1.FillDirection = "Vertical"
			frameleftuilist1.HorizontalAlignment = "Left"
			frameleftuilist1.Padding = UDim.new(0, 8)
			frameleftuilist1.SortOrder = "LayoutOrder"
			frameleftuilist1.VerticalAlignment = "Top"

			framerightuilist1.Name = "framerightuilist1"
			framerightuilist1.Parent = frameright1
			framerightuilist1.FillDirection = "Vertical"
			framerightuilist1.HorizontalAlignment = "Left"
			framerightuilist1.Padding = UDim.new(0, 8)
			framerightuilist1.SortOrder = "LayoutOrder"
			framerightuilist1.VerticalAlignment = "Top"

			-- 1 Left frame

			leftframe1t1.Name = "leftframe1"
			leftframe1t1.Parent = frameleft1
			leftframe1t1.BackgroundColor3 = color2
			leftframe1t1.BorderColor3 = color3
			leftframe1t1.BorderSizePixel = 1
			leftframe1t1.BackgroundTransparency = 0
			leftframe1t1.Position = UDim2.new(0, 10, 0, 8)
			leftframe1t1.Size = UDim2.new(1, 0, 0, 200)
			leftframe1t1.ZIndex = 1

			leftframeoutline1t1.Name = "leftframeoutline1"
			leftframeoutline1t1.Parent = leftframe1t1
			leftframeoutline1t1.BackgroundColor3 = color2
			leftframeoutline1t1.BorderColor3 = color1
			leftframeoutline1t1.BorderSizePixel = 1
			leftframeoutline1t1.BackgroundTransparency = 0
			leftframeoutline1t1.Position = UDim2.new(0, 1, 0, 1)
			leftframeoutline1t1.Size = UDim2.new(1, -2, 1, -2)
			leftframeoutline1t1.ZIndex = 1

			leftmagicframe1t1.Name = "leftmagicframe1"
			leftmagicframe1t1.Parent = leftframeoutline1t1
			leftmagicframe1t1.BackgroundColor3 = color5
			leftmagicframe1t1.BorderColor3 = color3
			leftmagicframe1t1.BorderSizePixel = 0
			leftmagicframe1t1.BackgroundTransparency = 0
			leftmagicframe1t1.Position = UDim2.new(0, -1, 0, -1)
			leftmagicframe1t1.Size = UDim2.new(1, 2, 0, 1)
			leftmagicframe1t1.ZIndex = 1

			leftframename1t1.Name = "leftframename1"
			leftframename1t1.Parent = leftframeoutline1t1
			leftframename1t1.Font = Enum.Font.Code
			leftframename1t1.BackgroundTransparency = 1
			leftframename1t1.BorderSizePixel = 0
			leftframename1t1.TextStrokeTransparency = 0
			leftframename1t1.TextColor3 = color4
			leftframename1t1.TextSize = 13
			leftframename1t1.Text = ("AimBot")
			leftframename1t1.Position = UDim2.new(0, 4, 0, 2)
			leftframename1t1.Size = UDim2.new(1, 0, 0, 18)
			leftframename1t1.Active = true
			leftframename1t1.TextXAlignment = "Left"
			leftframename1t1.ZIndex = 2

			-- 2 Left frame

			leftframe2t1.Name = "leftframe2t1"
			leftframe2t1.Parent = frameleft1
			leftframe2t1.BackgroundColor3 = color2
			leftframe2t1.BorderColor3 = color3
			leftframe2t1.Position = UDim2.new(0, 10, 0, 8)
			leftframe2t1.Size = UDim2.new(1, 0, 0, 259)

			leftframeoutline2t1.Name = "leftframeoutline2"
			leftframeoutline2t1.Parent = leftframe2t1
			leftframeoutline2t1.BackgroundColor3 = color2
			leftframeoutline2t1.BorderColor3 = color1
			leftframeoutline2t1.Position = UDim2.new(0, 1, 0, 1)
			leftframeoutline2t1.Size = UDim2.new(1, -2, 1, -2)

			leftmagicframe2t1.Name = "leftmagicframe2"
			leftmagicframe2t1.Parent = leftframeoutline2t1
			leftmagicframe2t1.BackgroundColor3 = color5
			leftmagicframe2t1.BorderColor3 = color3
			leftmagicframe2t1.BorderSizePixel = 0
			leftmagicframe2t1.Position = UDim2.new(0, -1, 0, -1)
			leftmagicframe2t1.Size = UDim2.new(1, 2, 0, 1)

			leftframename2t1.Name = "leftframename2"
			leftframename2t1.Parent = leftframeoutline2t1
			leftframename2t1.Active = true
			leftframename2t1.BackgroundTransparency = 1.000
			leftframename2t1.BorderSizePixel = 0
			leftframename2t1.Position = UDim2.new(0, 4, 0, 0)
			leftframename2t1.Size = UDim2.new(1, 0, 0, 18)
			leftframename2t1.ZIndex = 2
			leftframename2t1.Font = Enum.Font.Code
			leftframename2t1.Text = "Settings"
			leftframename2t1.TextColor3 = color4
			leftframename2t1.TextSize = 13.000
			leftframename2t1.TextStrokeTransparency = 0.000
			leftframename2t1.TextXAlignment = Enum.TextXAlignment.Left

			-- 1 Right frame

			rightframe1t1.Name = "rightframe1t1"
			rightframe1t1.Parent = frameright1
			rightframe1t1.BackgroundColor3 = color2
			rightframe1t1.BorderColor3 = color3
			rightframe1t1.BorderSizePixel = 1
			rightframe1t1.BackgroundTransparency = 0
			rightframe1t1.Position = UDim2.new(0, 10, 0, 8)
			rightframe1t1.Size = UDim2.new(1,0,0,308)
			rightframe1t1.ZIndex = 1

			rightframeoutline1t1.Name = "rightframeoutline1"
			rightframeoutline1t1.Parent = rightframe1t1
			rightframeoutline1t1.BackgroundColor3 = color2
			rightframeoutline1t1.BorderColor3 = color1
			rightframeoutline1t1.BorderSizePixel = 1
			rightframeoutline1t1.BackgroundTransparency = 0
			rightframeoutline1t1.Position = UDim2.new(0, 1, 0, 1)
			rightframeoutline1t1.Size = UDim2.new(1, -2, 1, -2)
			rightframeoutline1t1.ZIndex = 1

			rightmagicframe1t1.Name = "rightmagicframe1"
			rightmagicframe1t1.Parent = rightframeoutline1t1
			rightmagicframe1t1.BackgroundColor3 = color5
			rightmagicframe1t1.BorderColor3 = color3
			rightmagicframe1t1.BorderSizePixel = 0
			rightmagicframe1t1.BackgroundTransparency = 0
			rightmagicframe1t1.Position = UDim2.new(0, -1, 0, -1)
			rightmagicframe1t1.Size = UDim2.new(1, 2, 0, 1)
			rightmagicframe1t1.ZIndex = 1

			rightframename1t1.Name = "rightframename1"
			rightframename1t1.Parent = rightframeoutline1t1
			rightframename1t1.Font = Enum.Font.Code
			rightframename1t1.BackgroundTransparency = 1
			rightframename1t1.BorderSizePixel = 0
			rightframename1t1.TextStrokeTransparency = 0
			rightframename1t1.TextColor3 = color4
			rightframename1t1.TextSize = 13
			rightframename1t1.Text = ("Weapons")
			rightframename1t1.Position = UDim2.new(0, 4, 0, 2)
			rightframename1t1.Size = UDim2.new(1, 0, 0, 18)
			rightframename1t1.Active = true
			rightframename1t1.TextXAlignment = "Left"
			rightframename1t1.ZIndex = 2


			-- Tab 1 End   ===================================================================================================

			-- Tab 6 Start ===================================================================================================

			-- Scroll Down Feature

			scrolingframe6.Name = "scrolingframe6"
			scrolingframe6.Parent = tab6frames
			scrolingframe6.BackgroundTransparency = 1
			scrolingframe6.Position = UDim2.new(0, 0, 0, 0)
			scrolingframe6.Size = UDim2.new(1, 6,1, 0)
			scrolingframe6.CanvasSize = UDim2.new(0, 0,1.4, 0)
			scrolingframe6.ScrollBarImageTransparency = 1

			-- Frame for right and left to scroll down

			frameleft6.Name = "frameleft6"
			frameleft6.Parent = scrolingframe6
			frameleft6.BackgroundColor3 = color4
			frameleft6.BorderColor3 = color3
			frameleft6.BorderSizePixel = 1
			frameleft6.BackgroundTransparency = 1
			frameleft6.Position = UDim2.new(0, 10, 0, 8)
			frameleft6.Size = UDim2.new(0, 225, 0, 470)
			frameleft6.ZIndex = 1

			frameright6.Name = "frameright6"
			frameright6.Parent = scrolingframe6
			frameright6.BackgroundColor3 = color4
			frameright6.BorderColor3 = color3
			frameright6.BorderSizePixel = 1
			frameright6.BackgroundTransparency = 1
			frameright6.Position = UDim2.new(0, 245, 0, 8)
			frameright6.Size = UDim2.new(0, 225, 0, 470)
			frameright6.ZIndex = 1

			-- Nice spacing betwen the frames

			frameleftuilist6.Name = "frameleftuilist6"
			frameleftuilist6.Parent = frameleft6
			frameleftuilist6.FillDirection = "Vertical"
			frameleftuilist6.HorizontalAlignment = "Left"
			frameleftuilist6.Padding = UDim.new(0, 8)
			frameleftuilist6.SortOrder = "LayoutOrder"
			frameleftuilist6.VerticalAlignment = "Top"

			framerightuilist6.Name = "framerightuilist6"
			framerightuilist6.Parent = frameright6
			framerightuilist6.FillDirection = "Vertical"
			framerightuilist6.HorizontalAlignment = "Left"
			framerightuilist6.Padding = UDim.new(0, 8)
			framerightuilist6.SortOrder = "LayoutOrder"
			framerightuilist6.VerticalAlignment = "Top"

			-- 1 Left frame

			leftframe1t6.Name = "leftframe1t6"
			leftframe1t6.Parent = frameleft6
			leftframe1t6.BackgroundColor3 = color2
			leftframe1t6.BorderColor3 = color3
			leftframe1t6.BorderSizePixel = 1
			leftframe1t6.BackgroundTransparency = 0
			leftframe1t6.Position = UDim2.new(0, 10, 0, 8)
			leftframe1t6.Size = UDim2.new(1, 0, 0, 75)
			leftframe1t6.ZIndex = 1

			leftframeoutline1t6.Name = "leftframeoutline1t6"
			leftframeoutline1t6.Parent = leftframe1t6
			leftframeoutline1t6.BackgroundColor3 = color2
			leftframeoutline1t6.BorderColor3 = color1
			leftframeoutline1t6.BorderSizePixel = 1
			leftframeoutline1t6.BackgroundTransparency = 0
			leftframeoutline1t6.Position = UDim2.new(0, 1, 0, 1)
			leftframeoutline1t6.Size = UDim2.new(1, -2, 1, -2)
			leftframeoutline1t6.ZIndex = 1

			leftmagicframe1t6.Name = "leftmagicframe1t6"
			leftmagicframe1t6.Parent = leftframeoutline1t6
			leftmagicframe1t6.BackgroundColor3 = color5
			leftmagicframe1t6.BorderColor3 = color3
			leftmagicframe1t6.BorderSizePixel = 0
			leftmagicframe1t6.BackgroundTransparency = 0
			leftmagicframe1t6.Position = UDim2.new(0, -1, 0, -1)
			leftmagicframe1t6.Size = UDim2.new(1, 2, 0, 1)
			leftmagicframe1t6.ZIndex = 1

			leftframename1t6.Name = "leftframename1t6"
			leftframename1t6.Parent = leftframeoutline1t6
			leftframename1t6.Font = Enum.Font.Code
			leftframename1t6.BackgroundTransparency = 1
			leftframename1t6.BorderSizePixel = 0
			leftframename1t6.TextStrokeTransparency = 0
			leftframename1t6.TextColor3 = color4
			leftframename1t6.TextSize = 13
			leftframename1t6.Text = ("Menu")
			leftframename1t6.Position = UDim2.new(0, 4, 0, 2)
			leftframename1t6.Size = UDim2.new(1, 0, 0, 18)
			leftframename1t6.Active = true
			leftframename1t6.TextXAlignment = "Left"
			leftframename1t6.ZIndex = 2

			-- 2 Left frame

			leftframe2t6.Name = "leftframe2t6"
			leftframe2t6.Parent = frameleft6
			leftframe2t6.BackgroundColor3 = color2
			leftframe2t6.BorderColor3 = color3
			leftframe2t6.Position = UDim2.new(0, 10, 0, 8)
			leftframe2t6.Size = UDim2.new(1, 0, 0, 85)

			leftframeoutline2t6.Name = "leftframeoutline2t6"
			leftframeoutline2t6.Parent = leftframe2t6
			leftframeoutline2t6.BackgroundColor3 = color2
			leftframeoutline2t6.BorderColor3 = color1
			leftframeoutline2t6.Position = UDim2.new(0, 1, 0, 1)
			leftframeoutline2t6.Size = UDim2.new(1, -2, 1, -2)

			leftmagicframe2t6.Name = "leftmagicframe2t6"
			leftmagicframe2t6.Parent = leftframeoutline2t6
			leftmagicframe2t6.BackgroundColor3 = color5
			leftmagicframe2t6.BorderColor3 = color3
			leftmagicframe2t6.BorderSizePixel = 0
			leftmagicframe2t6.Position = UDim2.new(0, -1, 0, -1)
			leftmagicframe2t6.Size = UDim2.new(1, 2, 0, 1)

			leftframename2t6.Name = "leftframename2t6"
			leftframename2t6.Parent = leftframeoutline2t6
			leftframename2t6.Active = true
			leftframename2t6.BackgroundTransparency = 1.000
			leftframename2t6.BorderSizePixel = 0
			leftframename2t6.Position = UDim2.new(0, 4, 0, 0)
			leftframename2t6.Size = UDim2.new(1, 0, 0, 18)
			leftframename2t6.ZIndex = 2
			leftframename2t6.Font = Enum.Font.Code
			leftframename2t6.Text = "Notify"
			leftframename2t6.TextColor3 = color4
			leftframename2t6.TextSize = 13.000
			leftframename2t6.TextStrokeTransparency = 0.000
			leftframename2t6.TextXAlignment = Enum.TextXAlignment.Left

			-- 1 Right frame

			rightframe1t6.Name = "rightframe1t6"
			rightframe1t6.Parent = frameright6
			rightframe1t6.BackgroundColor3 = color2
			rightframe1t6.BorderColor3 = color3
			rightframe1t6.BorderSizePixel = 1
			rightframe1t6.BackgroundTransparency = 0
			rightframe1t6.Position = UDim2.new(0, 10, 0, 8)
			rightframe1t6.Size = UDim2.new(1,0,0,308)
			rightframe1t6.ZIndex = 1

			rightframeoutline1t6.Name = "rightframeoutline1t6"
			rightframeoutline1t6.Parent = rightframe1t6
			rightframeoutline1t6.BackgroundColor3 = color2
			rightframeoutline1t6.BorderColor3 = color1
			rightframeoutline1t6.BorderSizePixel = 1
			rightframeoutline1t6.BackgroundTransparency = 0
			rightframeoutline1t6.Position = UDim2.new(0, 1, 0, 1)
			rightframeoutline1t6.Size = UDim2.new(1, -2, 1, -2)
			rightframeoutline1t6.ZIndex = 1

			rightmagicframe1t6.Name = "rightmagicframe1t6"
			rightmagicframe1t6.Parent = rightframeoutline1t6
			rightmagicframe1t6.BackgroundColor3 = color5
			rightmagicframe1t6.BorderColor3 = color3
			rightmagicframe1t6.BorderSizePixel = 0
			rightmagicframe1t6.BackgroundTransparency = 0
			rightmagicframe1t6.Position = UDim2.new(0, -1, 0, -1)
			rightmagicframe1t6.Size = UDim2.new(1, 2, 0, 1)
			rightmagicframe1t6.ZIndex = 1

			rightframename1t6.Name = "rightframename1t6"
			rightframename1t6.Parent = rightframeoutline1t6
			rightframename1t6.Font = Enum.Font.Code
			rightframename1t6.BackgroundTransparency = 1
			rightframename1t6.BorderSizePixel = 0
			rightframename1t6.TextStrokeTransparency = 0
			rightframename1t6.TextColor3 = color4
			rightframename1t6.TextSize = 13
			rightframename1t6.Text = ("Config")
			rightframename1t6.Position = UDim2.new(0, 4, 0, 2)
			rightframename1t6.Size = UDim2.new(1, 0, 0, 18)
			rightframename1t6.Active = true
			rightframename1t6.TextXAlignment = "Left"
			rightframename1t6.ZIndex = 2

			-- 1 Left frame Buttons Section

			leftutilitesframe1.Name = "leftutilitesframe1"
			leftutilitesframe1.Parent = leftframeoutline1t6
			leftutilitesframe1.BackgroundColor3 = color5
			leftutilitesframe1.BorderColor3 = color3
			leftutilitesframe1.BorderSizePixel = 0
			leftutilitesframe1.BackgroundTransparency = 1
			leftutilitesframe1.Position = UDim2.new(0, 4, 0, 20)
			leftutilitesframe1.Size = UDim2.new(1, -4, 1, -20)
			leftutilitesframe1.ZIndex = 1

			leftutilitesuilist1.Name = "leftutilitesuilist1"
			leftutilitesuilist1.Parent = leftutilitesframe1
			leftutilitesuilist1.FillDirection = "Vertical"
			leftutilitesuilist1.HorizontalAlignment = "Left"
			leftutilitesuilist1.Padding = UDim.new(0, 0)
			leftutilitesuilist1.SortOrder = "LayoutOrder"
			leftutilitesuilist1.VerticalAlignment = "Top"

			-- Toggle

			toggleoutline1.Name = "toggleoutline1"
			toggleoutline1.Parent = leftutilitesframe1
			toggleoutline1.BackgroundColor3 = color5
			toggleoutline1.BorderColor3 = color1
			toggleoutline1.BorderSizePixel = 1
			toggleoutline1.BackgroundTransparency = 0
			toggleoutline1.Position = UDim2.new(0, 0, 0, 0)
			toggleoutline1.Size = UDim2.new(0, 13, 0, 13)
			toggleoutline1.ZIndex = 1

			togglebutton1.Name = "togglebutton1"
			togglebutton1.Parent = toggleoutline1
			togglebutton1.AutoButtonColor = false
			togglebutton1.BackgroundColor3 = color2
			togglebutton1.BorderColor3 = color3
			togglebutton1.BorderSizePixel = 1
			togglebutton1.BackgroundTransparency = 0
			togglebutton1.Position = UDim2.new(0, 1, 0, 1)
			togglebutton1.Size = UDim2.new(1, -2, 1, -2)
			togglebutton1.TextTransparency = 1
			togglebutton1.ZIndex = 1

			buttonname1.Name = "buttonname1"
			buttonname1.Parent = toggleoutline1
			buttonname1.Font = Enum.Font.Code
			buttonname1.BackgroundTransparency = 1
			buttonname1.BorderSizePixel = 0
			buttonname1.TextStrokeTransparency = 0
			buttonname1.TextColor3 = color4
			buttonname1.TextSize = 14
			buttonname1.Text = ("Enable")
			buttonname1.Position = UDim2.new(1.6, 0, 0, 0)
			buttonname1.Size = UDim2.new(0, 0, 1, 0)
			buttonname1.Active = true
			buttonname1.TextXAlignment = "Left"
			buttonname1.ZIndex = 2

			-- 2 Left frame Buttons Section

			leftutilitesframe2.Name = "leftutilitesframe2"
			leftutilitesframe2.Parent = leftframeoutline2t6
			leftutilitesframe2.BackgroundColor3 = color5
			leftutilitesframe2.BorderColor3 = color3
			leftutilitesframe2.BorderSizePixel = 0
			leftutilitesframe2.BackgroundTransparency = 1
			leftutilitesframe2.Position = UDim2.new(0, 4, 0, 20)
			leftutilitesframe2.Size = UDim2.new(1, -4, 1, -20)
			leftutilitesframe2.ZIndex = 1

			leftutilitesuilist2.Name = "leftutilitesuilist2"
			leftutilitesuilist2.Parent = leftutilitesframe2
			leftutilitesuilist2.FillDirection = "Vertical"
			leftutilitesuilist2.HorizontalAlignment = "Left"
			leftutilitesuilist2.Padding = UDim.new(0, 3)
			leftutilitesuilist2.SortOrder = "LayoutOrder"
			leftutilitesuilist2.VerticalAlignment = "Center"

			-- TextBox1

			textboxframe1.Name = "textboxframe1"
			textboxframe1.Parent = leftutilitesframe2
			textboxframe1.BackgroundColor3 = color2
			textboxframe1.BorderColor3 = color1
			textboxframe1.BorderSizePixel = 1
			textboxframe1.BackgroundTransparency = 0
			textboxframe1.Position = UDim2.new(0, 0, 0, 0)
			textboxframe1.Size = UDim2.new(0.696, 0, 0.4, 0)
			textboxframe1.ZIndex = 1

			textbox1.Name = "textbox1"
			textbox1.Font = Enum.Font.Code
			textbox1.Parent = textboxframe1
			textbox1.BackgroundColor3 = color2
			textbox1.BorderColor3 = color3
			textbox1.TextColor3 = color4
			textbox1.TextSize = 14
			textbox1.Text = ""
			textbox1.PlaceholderText = "Text"
			textbox1.BorderSizePixel = 1
			textbox1.BackgroundTransparency = 0
			textbox1.TextStrokeTransparency = 0
			textbox1.Position = UDim2.new(0, 1, 0, 1)
			textbox1.Size = UDim2.new(1, -2, 1, -2)
			textbox1.ZIndex = 1

			-- TextBox2

			textboxframe2.Name = "textboxframe2"
			textboxframe2.Parent = textboxframe1
			textboxframe2.BackgroundColor3 = color2
			textboxframe2.BorderColor3 = color1
			textboxframe2.BorderSizePixel = 1
			textboxframe2.BackgroundTransparency = 0
			textboxframe2.Position = UDim2.new(1, 3, 0, 0)
			textboxframe2.Size = UDim2.new(0.4, -1, 1, 0)
			textboxframe2.ZIndex = 1

			textbox2.Name = "textbox2"
			textbox2.Font = Enum.Font.Code
			textbox2.Parent = textboxframe2
			textbox2.BackgroundColor3 = color2
			textbox2.BorderColor3 = color3
			textbox2.TextColor3 = color4
			textbox2.TextSize = 14
			textbox2.Text = ""
			textbox2.PlaceholderText = "Time"
			textbox2.BorderSizePixel = 1
			textbox2.BackgroundTransparency = 0
			textbox2.TextStrokeTransparency = 0
			textbox2.Position = UDim2.new(0, 1, 0, 1)
			textbox2.Size = UDim2.new(1, -2, 1, -2)
			textbox2.ZIndex = 1

			-- Test Button

			buttonoutline1.Name = "toggleoutline2"
			buttonoutline1.Parent = leftutilitesframe2
			buttonoutline1.BackgroundColor3 = color5
			buttonoutline1.BorderColor3 = color1
			buttonoutline1.BorderSizePixel = 1
			buttonoutline1.BackgroundTransparency = 0
			buttonoutline1.Position = UDim2.new(0, 0, 0, 0)
			buttonoutline1.Size = UDim2.new(1, -4,0.4, 0)
			buttonoutline1.ZIndex = 1

			clickbutton1.Name = "clickbutton1"
			clickbutton1.Parent = buttonoutline1
			clickbutton1.Font = Enum.Font.Code
			clickbutton1.AutoButtonColor = false
			clickbutton1.BackgroundColor3 = color2
			clickbutton1.BorderColor3 = color3
			clickbutton1.TextColor3 = color4
			clickbutton1.TextSize = 14
			clickbutton1.Text = "Test"
			clickbutton1.BorderSizePixel = 1
			clickbutton1.BackgroundTransparency = 0
			clickbutton1.Position = UDim2.new(0, 1, 0, 1)
			clickbutton1.Size = UDim2.new(1, -2,1, -2)
			clickbutton1.TextTransparency = 0
			clickbutton1.TextStrokeTransparency = 0
			clickbutton1.ZIndex = 1

			-- Buttons right

			rightutilitesframe.Name = "rightutilitesframe"
			rightutilitesframe.Parent = rightframeoutline1t6
			rightutilitesframe.BackgroundColor3 = color5
			rightutilitesframe.BorderColor3 = color3
			rightutilitesframe.BorderSizePixel = 0
			rightutilitesframe.BackgroundTransparency = 1
			rightutilitesframe.Position = UDim2.new(0, 4, 0, 20)
			rightutilitesframe.Size = UDim2.new(1, -4, 1, -20)
			rightutilitesframe.ZIndex = 1

			rightutilitesuilist.Name = "rightutilitesuilist"
			rightutilitesuilist.Parent = rightutilitesframe
			rightutilitesuilist.FillDirection = "Vertical"
			rightutilitesuilist.HorizontalAlignment = "Left"
			rightutilitesuilist.Padding = UDim.new(0, 0)
			rightutilitesuilist.SortOrder = "LayoutOrder"
			rightutilitesuilist.VerticalAlignment = "Top"

			-- Tab 6 End ===================================================================================================

			togglebutton1.Activated:Connect(function()
				if clicked == false then
					clicked = true
					togglebutton1.BackgroundColor3 = Color3.fromHex("#323232")
					togglebutton1.BorderColor3 = Color3.fromHex("#000000")
					toggleoutline1.BorderColor3 = Color3.fromHex("#323232")
				elseif clicked == true then
					togglebutton1.BackgroundColor3 = Color3.fromHex("#0c0c0c")
					--togglebutton1.BorderColor3 = Color3.fromHex("#323232")
					--toggleoutline1.BorderColor3 = Color3.fromHex("#000000")
					clicked = false
				end
			end)

			clickbutton1.Activated:Connect(function()
				notify(textbox1.Text, tonumber(textbox2.Text), 0)
			end)

			for i , framebutton in pairs(tabbuttons:GetChildren()) do
				for i , button in pairs(framebutton:GetChildren()) do  
					if button:IsA("TextButton") then
						button.MouseButton1Click:Connect(function()
							print(button.Name)
							ButtonClicked(button)

						end)
					end
				end
			end

			function ButtonClicked(Button)
				local frameNumber = tonumber(Button.Name:match("tabbutton(%d+)"))
				local tabframe = tabframes:FindFirstChild("tab"..frameNumber.."frames")
				for _, framebutton in pairs(tabbuttons:GetChildren()) do
					for _, frame in pairs(framebutton:GetChildren()) do  
						if frame:IsA("Frame") then
							frame.BackgroundTransparency = 1
						end
					end
				end
				for _, frame in pairs(tabframes:GetChildren()) do
					if frame:IsA("Frame") then
						frame.Visible = false
					end
				end
				tabframe.Visible = true
				Button.Parent:FindFirstChildOfClass("Frame").BackgroundTransparency = 0
			end

			
			--[[ rewited above dont know it works tho xd  1:58 am 15/08/2023

			tabbutton1.MouseButton1Click:Connect(function()
				tab1magicframe.BackgroundTransparency = 0 -- tab1button frame
				tab2magicframe.BackgroundTransparency = 1
				tab3magicframe.BackgroundTransparency = 1
				tab4magicframe.BackgroundTransparency = 1
				tab5magicframe.BackgroundTransparency = 1
				tab6magicframe.BackgroundTransparency = 1
				tab1frames.Visible = true -- tabframes
				tab2frames.Visible = false
				tab3frames.Visible = false
				tab4frames.Visible = false
				tab5frames.Visible = false
				tab6frames.Visible = false
				notify("Aimbot tab opened", 0, 0) -- this shit only works because the script is loaded until down lol xD
			end)

			tabbutton2.MouseButton1Click:Connect(function()
				tab1magicframe.BackgroundTransparency = 1
				tab2magicframe.BackgroundTransparency = 0
				tab3magicframe.BackgroundTransparency = 1
				tab4magicframe.BackgroundTransparency = 1
				tab5magicframe.BackgroundTransparency = 1
				tab6magicframe.BackgroundTransparency = 1
				tab1frames.Visible = false
				tab2frames.Visible = true
				tab3frames.Visible = false
				tab4frames.Visible = false
				tab5frames.Visible = false
				tab6frames.Visible = false
				notify("RageBot tab opened", 0, 0)
			end)

			tabbutton3.MouseButton1Click:Connect(function()
				tab1magicframe.BackgroundTransparency = 1
				tab2magicframe.BackgroundTransparency = 1
				tab3magicframe.BackgroundTransparency = 0
				tab4magicframe.BackgroundTransparency = 1
				tab5magicframe.BackgroundTransparency = 1
				tab6magicframe.BackgroundTransparency = 1
				tab1frames.Visible = false
				tab2frames.Visible = false
				tab3frames.Visible = true
				tab4frames.Visible = false
				tab5frames.Visible = false
				tab6frames.Visible = false
				notify("Visuals tab opened", 0, 0)
			end)

			tabbutton4.MouseButton1Click:Connect(function()
				tab1magicframe.BackgroundTransparency = 1
				tab2magicframe.BackgroundTransparency = 1
				tab3magicframe.BackgroundTransparency = 1
				tab4magicframe.BackgroundTransparency = 0
				tab5magicframe.BackgroundTransparency = 1
				tab6magicframe.BackgroundTransparency = 1
				tab1frames.Visible = false
				tab2frames.Visible = false
				tab3frames.Visible = false
				tab4frames.Visible = true
				tab5frames.Visible = false
				tab6frames.Visible = false
				notify("Skins tab opened", 0, 0)
			end)

			tabbutton5.MouseButton1Click:Connect(function()
				tab1magicframe.BackgroundTransparency = 1
				tab2magicframe.BackgroundTransparency = 1
				tab3magicframe.BackgroundTransparency = 1
				tab4magicframe.BackgroundTransparency = 1
				tab5magicframe.BackgroundTransparency = 0
				tab6magicframe.BackgroundTransparency = 1
				tab1frames.Visible = false
				tab2frames.Visible = false
				tab3frames.Visible = false
				tab4frames.Visible = false
				tab5frames.Visible = true
				tab6frames.Visible = false
				notify("Misc tab opened", 0, 0)
			end)

			tabbutton6.MouseButton1Click:Connect(function()
				tab1magicframe.BackgroundTransparency = 1
				tab2magicframe.BackgroundTransparency = 1
				tab3magicframe.BackgroundTransparency = 1
				tab4magicframe.BackgroundTransparency = 1
				tab5magicframe.BackgroundTransparency = 1
				tab6magicframe.BackgroundTransparency = 0
				tab1frames.Visible = false
				tab2frames.Visible = false
				tab3frames.Visible = false
				tab4frames.Visible = false
				tab5frames.Visible = false
				tab6frames.Visible = true
				notify("Others tab opened", 0, 0)
			end)

			--]]

			local function getTextBounds(Text, Font, Size, Resolution)
				local Bounds = TextService:GetTextSize(Text, Size, Font, Resolution or Vector2.new(1920, 1080))
			return Bounds.X, Bounds.Y
			end

			function notify(Text, WaitTime, Time)

				task.spawn(function ()
					
					local notifyeroutline = Instance.new("Frame")
					local notifyermain = Instance.new("Frame")
					local notifyerline = Instance.new("Frame")
					local notifyertext = Instance.new("TextLabel")

					notifyeruilist.Name = "uilistlayout"
					notifyeruilist.Parent = notifyer
					notifyeruilist.FillDirection = "Vertical"
					notifyeruilist.HorizontalAlignment = "Left"
					notifyeruilist.Padding = UDim.new(0, 4)
					notifyeruilist.SortOrder = "LayoutOrder"
					notifyeruilist.VerticalAlignment = "Top"

					notifyeroutline.Name = "notifyeroutline"
					notifyeroutline.Parent = notifyer
					notifyeroutline.BackgroundColor3 = color3
					notifyeroutline.BorderColor3 = color1
					notifyeroutline.BorderSizePixel = 1
					notifyeroutline.BackgroundTransparency = 0
					notifyeroutline.Position = UDim2.new(0, 1, 0, 1)
					notifyeroutline.Size = UDim2.new(0, 151, 0, 21)
					notifyeroutline.Active = true
					notifyeroutline.ZIndex = 0

					notifyerline.Name = "notifyerline"
					notifyerline.Parent = notifyeroutline
					notifyerline.BackgroundColor3 = color5
					notifyerline.BorderColor3 = color1
					notifyerline.BorderSizePixel = 0
					notifyerline.BackgroundTransparency = 0
					notifyerline.Position = UDim2.new(0, -1, 0, 0)
					notifyerline.Size = UDim2.new(0, 3, 1, 0)
					notifyerline.Active = true
					notifyerline.ZIndex = 1

					notifyermain.Name = "notifyermain"
					notifyermain.Parent = notifyeroutline
					notifyermain.BackgroundColor3 = color2
					notifyermain.BorderColor3 = color3
					notifyermain.BorderSizePixel = 1
					notifyermain.BackgroundTransparency = 0
					notifyermain.Position = UDim2.new(0, 1, 0, 1)
					notifyermain.Size = UDim2.new(1, -2, 1, -2)
					notifyermain.Active = true
					notifyermain.ZIndex = 0

					notifyertext.Name = "notifyertext"
					notifyertext.Parent = notifyermain
					notifyertext.Font = Enum.Font.Code
					notifyertext.BackgroundTransparency = 1
					notifyertext.BorderSizePixel = 0
					notifyertext.TextStrokeTransparency = 0
					notifyertext.TextColor3 = color4
					notifyertext.TextSize = 13
					notifyertext.Text = (Text)
					notifyertext.Position = UDim2.new(0, 5, 1, -10)
					notifyertext.Size = UDim2.new(0, 0, 0, 0)
					notifyertext.Active = true
					notifyertext.TextXAlignment = "Left"
					notifyertext.ZIndex = 2

					local Xsize, Ysize = getTextBounds(notifyertext.Text, Enum.Font.Code, 13)
					print(Xsize)

					notifyeroutline.Size = UDim2.new(0, 0, 0, 21)

					if Time == 0 or nil then
						Time = 0.7
					else
						if Xsize >= 49 then
							Time += (49 / 7)/ 8  
						else
							Time = Time
						end
					end

					if WaitTime == 0 or nil then
						WaitTime = 2.6
					else
						WaitTime = WaitTime
					end

					local willTween = notifyeroutline:TweenSize(
						UDim2.new(0, Xsize + 10, 0, 21),  -- endSize (required)
						Enum.EasingDirection.Out,    -- easingDirection (default Out)
						Enum.EasingStyle.Quart,      -- easingStyle (default Quad)
						Time,                          -- time (default: 1)
						true                        -- should this tween override ones in-progress? (default: false)
					)

					wait(WaitTime)

					while notifyertext.TextTransparency <= 1 and notifyertext.TextStrokeTransparency <= 1 do
					
						notifyertext.TextTransparency = notifyertext.TextTransparency + 0.1
						notifyertext.TextStrokeTransparency  = notifyertext.TextStrokeTransparency  + 0.1
						wait(0.01)

					end

					local willTween = notifyeroutline:TweenSize(
						UDim2.new(0, 0, 0, 21),  -- endSize (required)
						Enum.EasingDirection.Out,    -- easingDirection (default Out)
						Enum.EasingStyle.Quad,      -- easingStyle (default Quad)
						Time,                          -- time (default: 1)
						true                        -- should this tween override ones in-progress? (default: false)
					)

					wait(0.6)

					notifyeroutline:Destroy()


				end)
			end

			notify("welcome to net.cut "..player.Name, 0, 0)



			screengui:Destroy()
		end
	end
end)

settings.MouseButton1Click:Connect(function()

	if click == false then 

		click = not click

		mainframe1.Name = "secondframe"
		mainframe1.AnchorPoint = Vector2.new(0, 0)
		mainframe1.Size = UDim2.new(0, 228, 0, 202)
		mainframe1.Position = UDim2.fromOffset((mainframe.Position.X.Offset) + (mainframe.Size.X.Offset) + 30, (mainframe.Position.Y.Offset) + (mainframe.Size.Y.Offset / 2) - (mainframe1.Size.Y.Offset / 2))
		mainframe1.Parent = screengui
		mainframe1.BackgroundColor3 = color1	
		mainframe1.BorderColor3 = color3
		mainframe1.BorderSizePixel = 0
		mainframe1.BackgroundTransparency = 0
		mainframe1.Active = true
		mainframe1.Selectable = true
		mainframe1.Draggable = true

		frame1.Name = "frame"
		frame1.Parent = mainframe1
		frame1.BackgroundColor3 = color2
		frame1.BorderColor3 = color3
		frame1.BorderSizePixel = 1
		frame1.BackgroundTransparency = 0
		frame1.Position = UDim2.new(0, 2, 0, 2)
		frame1.Size = UDim2.new(0, 224, 0, 198)
		frame1.Active = true

		outline1.Name = "outline"
		outline1.Parent = frame1
		outline1.BackgroundColor3 = color2
		outline1.BorderColor3 = color3
		outline1.BorderSizePixel = 1
		outline1.BackgroundTransparency = 0
		outline1.Position = UDim2.new(0, 0, 0, 0)
		outline1.Size = UDim2.new(0, 224, 0, 37)
		outline1.Active = true

		settings1.Name = "settings"
		settings1.Parent = outline1
		settings1.Font = Enum.Font.Ubuntu
		settings1.BorderSizePixel = 0
		settings1.TextColor3 = color3
		settings1.TextSize = 15
		settings1.Text = "Settings"
		settings1.Position = UDim2.new(0, 108, 0, 18)
		settings1.Size = UDim2.new(0, 0, 0, 0)
		settings1.Active = true

		screengui.secondframe.Visible = true

	else 

		click = not click

		screengui.secondframe.Visible = false

	end
end)


