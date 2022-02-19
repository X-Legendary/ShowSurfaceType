--[[
	Created by X7legendary
	Source: X-Legendary/ShowSurfaceType
	The code is a bit of a mess, but at least I am transparent about it.
	License: MIT
	Last Updated: 19/02/2022
--]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Selection = game:GetService("Selection")
-- --
local toolbar = plugin:CreateToolbar("X7legendary's Plugins")
local thankYouText = "Thank you for using Show Surface Type Plugin!"
-- --
local toolbarButton = toolbar:CreateButton("Show Surface Type", "Shows surface type on the selected part(s)", "rbxassetid://413369028")

toolbarButton.Click:Connect(function()
	
	local selectedObjects = Selection:Get()
	
	if #selectedObjects == 1 then
		local object = selectedObjects[1]
		if object.ClassName == "Part" then
			local toProcceed = true
			if object.FrontSurface == Enum.SurfaceType.Smooth and toProcceed == true then
				object.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				print("Showed Surface Type fo part "..object.Name)
				ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..object.Name)
				toProcceed = false
			end
			if object.BottomSurface == Enum.SurfaceType.Smooth and toProcceed == true then
				object.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				print("Showed Surface Type fo part "..object.Name)
				ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..object.Name)
				toProcceed = false
			end
			if object.BackSurface == Enum.SurfaceType.Smooth and toProcceed == true then
				object.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				print("Showed Surface Type fo part "..object.Name)
				ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..object.Name)
				toProcceed = false
			end
			if object.RightSurface == Enum.SurfaceType.Smooth and toProcceed == true then
				object.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				print("Showed Surface Type fo part "..object.Name)
				ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..object.Name)
				toProcceed = false
			end
			if object.LeftSurface == Enum.SurfaceType.Smooth and toProcceed == true then
				object.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				print("Showed Surface Type fo part "..object.Name)
				ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..object.Name)
				toProcceed = false
			end
			if object.TopSurface == Enum.SurfaceType.Smooth and toProcceed == true then
				object.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				print("Showed Surface Type fo part "..object.Name)
				ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..object.Name)
				toProcceed = false
			end
			print(thankYouText)
		end
	elseif #selectedObjects > 1 then
		for i, v in pairs(selectedObjects)do
			if v.ClassName == "Part" then
				local toProcceed = true
				if v.FrontSurface == Enum.SurfaceType.Smooth and toProcceed == true then
					v.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
					print("Showed Surface Type fo part "..v.Name)
					ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..v.Name)
					toProcceed = false
				end
				if v.BottomSurface == Enum.SurfaceType.Smooth and toProcceed == true then
					v.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
					print("Showed Surface Type fo part "..v.Name)
					ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..v.Name)
					toProcceed = false
				end
				if v.BackSurface == Enum.SurfaceType.Smooth and toProcceed == true then
					v.BackSurface = Enum.SurfaceType.SmoothNoOutlines
					print("Showed Surface Type fo part "..v.Name)
					ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..v.Name)
					toProcceed = false
				end
				if v.RightSurface == Enum.SurfaceType.Smooth and toProcceed == true then
					v.RightSurface = Enum.SurfaceType.SmoothNoOutlines
					print("Showed Surface Type fo part "..v.Name)
					ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..v.Name)
					toProcceed = false
				end
				if v.LeftSurface == Enum.SurfaceType.Smooth and toProcceed == true then
					v.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
					print("Showed Surface Type fo part "..v.Name)
					ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..v.Name)
					toProcceed = false
				end
				if v.TopSurface == Enum.SurfaceType.Smooth and toProcceed == true then
					v.TopSurface = Enum.SurfaceType.SmoothNoOutlines
					print("Showed Surface Type fo part "..v.Name)
					ChangeHistoryService:SetWaypoint("Changed Surface Type fo part "..v.Name)
					toProcceed = false
				end
			end
		end
		print(thankYouText)
	end
end)