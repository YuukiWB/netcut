---@diagnostic disable: undefined-global
local lp = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local viewport = game.workspace.Camera.ViewportSize
local worldToViewportPoint = CurrentCamera.WorldToViewportPoint -- Fixed capitalization
local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)

local espConnection = nil

_G.Esp = false
_G.TeamColor = false
_G.TeamHealthBar = false
_G.EnemeyHealthBar = true
_G.EnemeyOnly = true

function ToggleESP()
    _G.Esp = not _G.Esp
    if _G.Esp then
        print("ESP Enabled")
		if _G.Esp == true then
			for i, v in pairs(game.Players:GetChildren()) do
				
				local BoxOutline = Drawing.new("Square")
				BoxOutline.Visible = false
				BoxOutline.Color = Color3.new(0, 0, 0)
				BoxOutline.Thickness = 3
				BoxOutline.Transparency = 1
				BoxOutline.Filled = false

				local Box = Drawing.new("Square")
				Box.Visible = false
				Box.Color = Color3.new(1, 1, 1)
				Box.Thickness = 1
				Box.Transparency = 1
				Box.Filled = false

				local HealthBarOutline = Drawing.new("Square")
				HealthBarOutline.Visible = false
				HealthBarOutline.Color = Color3.new(0, 0, 0)
				HealthBarOutline.Thickness = 3
				HealthBarOutline.Transparency = 1
				HealthBarOutline.Filled = false

				local HealthBar = Drawing.new("Square")
				HealthBar.Visible = false
				--HealthBar.Color = Color3.new(0, 1, 0)
				HealthBar.Thickness = 1
				HealthBar.Transparency = 1
				HealthBar.Filled = false

				function boxesp()
					espConnection = game:GetService("RunService").RenderStepped:Connect(function()
						if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lp and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") then
							local Vector, onScreen = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position) -- Fixed capitalization
							local RootPart = v.Character.HumanoidRootPart 
							local Head = v.Character.Head
							local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position) -- Fixed variable name
							local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff) -- Fixed variable name
							local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff) -- Fixed variable name

							if onScreen then 

								--               ok so this make it go small  this makes the size
								--BoxOutline.Size = Vector2.new(viewport.X / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
								--                               this makes it so it is line up nicely on the x and this on y
								---BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)

								BoxOutline.Size = Vector2.new(viewport.X / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
								BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
								BoxOutline.Visible = true

								Box.Size = Vector2.new(viewport.X / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
								Box.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
								Box.Visible = true

								HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
								HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
								HealthBarOutline.Visible = true

								HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (100 / math.clamp(v.Character.Humanoid.Health, 0, 100)))
								HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
								HealthBar.Color = Color3.fromRGB(255 - 255 / (100 / v.Character.Humanoid.Health), 255 / (v.Character.Humanoid.Health / 100), 0)
								HealthBar.Visible = true

								if _G.TeamColor == true then
									if v.TeamColor == lp.TeamColor then
										Box.Color = Color3.New(0,1,0)
									else
										Box.Color = Color3.New(1,0,0)
									end
								end

								if _G.EnemeyOnly == true then
									if v.TeamColor == lp.TeamColor then
										BoxOutline.Visible = false
										Box.Visible = false
										if _G.TeamHealthBar == true then
											HealthBarOutline.Visible = true
											HealthBar.Visible = true
										else
											HealthBarOutline.Visible = false
											HealthBar.Visible = false
										end
									else
										BoxOutline.Visible = true
										Box.Visible = true
										if _G.EnemeyHealthBar == true then
											HealthBarOutline.Visible = true
											HealthBar.Visible = true
										else
											HealthBarOutline.Visible = false
											HealthBar.Visible = false
										end
									end
								end

							else
								BoxOutline.Visible = false
								Box.Visible = false
								HealthBarOutline.Visible = false
								HealthBar.Visible = false
							end
						else
							BoxOutline.Visible = false
							Box.Visible = false
							HealthBarOutline.Visible = false
							HealthBar.Visible = false
						end
					end)
				end
				coroutine.wrap(boxesp)()
			end

			game.Players.PlayerAdded:Connect(function(v) -- Fixed capitalization
				if _G.Esp == true then
					
					local BoxOutline = Drawing.new("Square")
					BoxOutline.Visible = false
					BoxOutline.Color = Color3.new(0, 0, 0)
					BoxOutline.Thickness = 3
					BoxOutline.Transparency = 1
					BoxOutline.Filled = false

					local Box = Drawing.new("Square")
					Box.Visible = false
					Box.Color = Color3.new(1, 1, 1)
					Box.Thickness = 1
					Box.Transparency = 1
					Box.Filled = false

					local HealthBarOutline = Drawing.new("Square")
					HealthBarOutline.Visible = false
					HealthBarOutline.Color = Color3.new(0, 0, 0)
					HealthBarOutline.Thickness = 3
					HealthBarOutline.Transparency = 1
					HealthBarOutline.Filled = false

					local HealthBar = Drawing.new("Square")
					HealthBar.Visible = false
					--HealthBar.Color = Color3.new(0, 1, 0)
					HealthBar.Thickness = 1
					HealthBar.Transparency = 1
					HealthBar.Filled = false

					function boxesp()
						espConnection = game:GetService("RunService").RenderStepped:Connect(function()
							if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lp and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") then
								local Vector, onScreen = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position) -- Fixed capitalization
								local RootPart = v.Character.HumanoidRootPart 
								local Head = v.Character.Head
								local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position) -- Fixed variable name
								local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff) -- Fixed variable name
								local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff) -- Fixed variable name

								if onScreen then 

									--               ok so this make it go small  this makes the size
									--BoxOutline.Size = Vector2.new(viewport.X / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
									--                               this makes it so it is line up nicely on the x and this on y
									---BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)

									BoxOutline.Size = Vector2.new(viewport.X / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
									BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
									BoxOutline.Visible = true

									Box.Size = Vector2.new(viewport.X / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
									Box.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
									Box.Visible = true

									HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
									HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
									HealthBarOutline.Visible = true

									HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (100 / math.clamp(v.Character.Humanoid.Health, 0, 100)))
									HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
									HealthBar.Color = Color3.fromRGB(255 - 255 / (100 / v.Character.Humanoid.Health), 255 / (v.Character.Humanoid.Health / 100), 0)
									HealthBar.Visible = true

									if _G.TeamColor == true then
										if v.TeamColor == lp.TeamColor then
											Box.Color = Color3.New(0,1,0)
										else
											Box.Color = Color3.New(1,0,0)
										end
									end

									if _G.EnemeyOnly == true then
									if v.TeamColor == lp.TeamColor then
										BoxOutline.Visible = false
										Box.Visible = false
										if _G.TeamHealthBar == true then
											HealthBarOutline.Visible = true
											HealthBar.Visible = true
										else
											HealthBarOutline.Visible = false
											HealthBar.Visible = false
										end
									else
										BoxOutline.Visible = true
										Box.Visible = true
										if _G.EnemeyHealthBar == true then
											HealthBarOutline.Visible = true
											HealthBar.Visible = true
										else
											HealthBarOutline.Visible = false
											HealthBar.Visible = false
										end
									end
								end

								else
									BoxOutline.Visible = false
									Box.Visible = false
									HealthBarOutline.Visible = false
									HealthBar.Visible = false
								end
							else
								BoxOutline.Visible = false
								Box.Visible = false
								HealthBarOutline.Visible = false
								HealthBar.Visible = false
							end
						end)
					end
					coroutine.wrap(boxesp)()
				end
			end)
		end
    else
        print("ESP Disabled")
		Drawing.clear()
        espConnection:Disconnect() -- Disconnect the RenderStepped event
        espConnection = nil
    end
end

-- Example: Toggle ESP when 'e' key is pressed
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        ToggleESP()
    end
end)