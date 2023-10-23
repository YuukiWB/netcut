local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local lighting = game:GetService("Lighting")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local textservice = game:GetService('TextService')

local Parts = {} 
for i, Part in pairs(localPlayer.Character:GetChildren()) do
	if Part:IsA("Part") then
		table.insert(Parts, Part.Name)
		print("game.Workspace."..localPlayer.Name.."."..Part.Name)
	end
	--[[
	for i, Part in pairs(Parts) do
		Part:Clone()
		Part.Parent = game.Workspace
		for i, Partc in pairs(Part:GetChildren()) do
			Partc:Destroy()
		end
		Part.Material = Enum.Material.ForceField
		Part.Reflectance = 0.2
	end	
	--]]
end