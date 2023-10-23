				if _G.chams == true then
					_G.chams = false
					while _G.chams == false do
						local cham = game.Workspace.trocindavid_alt6.HumanoidRootPart:Clone()
						for _, object in ipairs(cham:GetChildren())  do
							if object:IsA("SurfaceGui") or object:IsA("Decal") or object:IsA("BillboardGui") then
								object:Destroy()
							end
						end
						cham.Parent = game.Workspace
						cham.Anchored = true
						cham.Material = "ForceField"
						while cham.Transparency <= 1 do
							cham.Transparency = cham.Transparency + 0.08
							wait(0.1)
						end
						cham:Destroy()
					end
				end