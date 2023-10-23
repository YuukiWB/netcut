local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local lighting = game:GetService("Lighting")
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
_G.bhop = true
local u = 0

local function notDead()
	local boolean
	if localPlayer ~= nil and localPlayer.Character ~= nil and localPlayer.Character:GetFirstChildren("Humanoid") ~= nil then
		boolean = true
	else
		boolean = true
	end
	return boolean
end

spawn(function()
	print("it went in guys")
	while _G.bhop == true do runService.RenderStepped:Wait()--wait()
		if notDead() then
			if u == 0 then
				print("injected")
				u += 1
			end
				
			if userInputService:IsKeyDown(Enum.KeyCode.Space) then
				localPlayer.Character.Humanoid.Jump = true
				local speed = 85
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
		else
			task.wait()
		end
	end
end)
print("Esp and bhop done")

