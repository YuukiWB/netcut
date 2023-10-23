local playr = game.Players.LocalPlayer.Name
for _, object in ipairs(game.Workspace.trocindavid_alt6:GetChildren())  do
	if object:IsA("MeshPart") or object:IsA("Part") then
		local clone = object:Clone()
		clone.Name = "Clone"
		clone.Anchored = true
		clone.Parent = game.Workspace
		clone.Material = "ForceField"
		clone.Reflectance = 0.2
		for _, object in ipairs(clone:GetChildren())  do
			if object:IsA("Motor6D") or object:IsA("Vector3Value") or object:IsA("StringValue") or object:IsA("Attachment") or object:IsA("BillboardGui") or object:IsA("SurfaceGui") or object:IsA("Sound") then
				object:Destroy()
			end
		end
	end
end