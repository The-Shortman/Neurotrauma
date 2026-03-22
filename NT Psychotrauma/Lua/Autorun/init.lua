NTPT = {} -- Neurotrauma Psychotrauma
NTPT.Name = "Psychotrauma"
NTPT.Version = "0.1.0"
NTPT.VersionNum = 00010000
NTPT.MinNTVersion = "A1.15.4"
NTPT.MinNTVersionNum = 01150400
NTPT.Path = table.pack(...)[1]
Timer.Wait(function()
	if NTC ~= nil and NTC.RegisterExpansion ~= nil then
		NTC.RegisterExpansion(NTPT)
	end
end, 1)

-- server-side code (also run in singleplayer)
if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
	Timer.Wait(function()
		if NTC == nil then
			print("Error loading NT Psychotrauma: It appears Neurotrauma isn't loaded!")
			return
		end

		-- dofile(NTPT.Path .. "/Lua/Scripts/test.lua")
		dofile(NTPT.Path .. "/Lua/Scripts/afflictions.lua")
	end, 1)
end
