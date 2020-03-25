Config = {}
Config.DrawDistance = 20.0
Config.HideRadar = true -- Hide HUD?
Config.AnimTime = 60 -- Animation for the hacking in seconds. 60 = 1 minute / 60 seconds!

Config.Locale = 'fr'
Config.pNotify = true -- Only enable this if you have pNotify (https://github.com/Nick78111/pNotify)
Config.Hacking = true -- Only enable if you have mhacking (https://github.com/GHMatti/FiveM-Scripts/tree/master/mhacking)

-- Connect to the cameras
-- Place: In the polices armory room
Config.Zones = {
	Cameras = {
		--Pos   = {x = 454.38, y = -979.35, z = 29.69},
		--{X: 465.636, Y: -975.497, Z: 24.915} {H: 186.496} {Comment: 156},
		Pos   = {x = 465.636, y = -975.497, z = 23.915},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 27,
	}
}

-- Keep these the same
-- Place: Behind the polices desk in the policestation
-- Screenshot: https://i.imgur.com/f5WNrRj.jpg
Config.HackingPolice = {
	HackingPolice = {
		Pos   = {x = 440.17, y = -975.74, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 27,
	}
}

Config.UnHackPolice = {
	UnHackPolice = {
		Pos   = {x = 440.17, y = -975.74, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 27,
	}
}

-- Keep these the same
-- Place: Down at the bank vault
-- Screenshot: https://i.imgur.com/nvcFUhu.jpg
Config.HackingBank = {
	HackingBank = {
		Pos   = {x = 264.87, y = 219.93, z = 100.68},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 27,
	}
}

Config.UnHackBank = {
	UnHackBank = {
		Pos   = {x = 264.87, y = 219.93, z = 100.68},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 27,
	}
}

-- Cameras. You could add more cameras for other banks, apartments, houses, buildings etc. (Remember the "," after each row, but not on the last row)
Config.Locations = {
	{
	bankCamLabel = {label = _U('pacific_standard_bank')},
		bankCameras = {
			{label = _U('bcam'), x = 232.86, y = 221.46, z = 107.83, r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = true},
			{label = _U('bcam2'), x = 257.45, y = 210.07, z = 109.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
			{label = _U('bcam3'), x = 261.50, y = 218.08, z = 107.95, r = {x = -25.0, y = 0.0, z = -149.49}, canRotate = true},
			{label = _U('bcam4'), x = 241.64, y = 233.83, z = 111.48, r = {x = -35.0, y = 0.0, z = 120.46}, canRotate = true},
			{label = _U('bcam5'), x = 269.66, y = 223.67, z = 113.23, r = {x = -30.0, y = 0.0, z = 111.29}, canRotate = true},
			{label = _U('bcam6'), x = 261.98, y = 217.92, z = 113.25, r = {x = -40.0, y = 0.0, z = -159.49}, canRotate = true},
			{label = _U('bcam7'), x = 258.44, y = 204.97, z = 113.25, r = {x = -30.0, y = 0.0, z = 10.50}, canRotate = true},
			{label = _U('bcam8'), x = 235.53, y = 227.37, z = 113.23, r = {x = -35.0, y = 0.0, z = -160.29}, canRotate = true},
			{label = _U('bcam9'), x = 254.72, y = 206.06, z = 113.28, r = {x = -35.0, y = 0.0, z = 44.70}, canRotate = true},
			{label = _U('bcam10'), x = 269.89, y = 223.76, z = 106.48, r = {x = -35.0, y = 0.0, z = 112.62}, canRotate = true},
			{label = _U('bcam11'), x = 252.27, y = 225.52, z = 103.99, r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = true}
		},

	policeCamLabel = {label = _U('police_station')},
		policeCameras = {
-- outside lspd
			{label = _U('pcam'), x = 423.729, y = -995.338, z = 33.725, r = {x = -30.0, y = 0.0, z = 100.29}, canRotate = true},
			{label = _U('pcam2'), x = 414.588, y = -1017.973, z = 32.089, r = {x = -30.0, y = 0.0, z = 100.29}, canRotate = true},
			{label = _U('pcam3'), x = 458.476, y = -1002.001, z = 38.358, r = {x = -35.0, y = 0.0, z = 90.46}, canRotate = true},
			{label = _U('pcam4'), x = 420.241, y = -1009.010, z = 34.95, r = {x = -25.0, y = 0.0, z = 230.95}, canRotate = true},
			{label = _U('pcam5'), x = 434.2613, y = -978.0045, z = 33.04038, r = {x = -40.0, y = 0.0, z = 100.49}, canRotate = false},
-- outside lspd
-- inside lspd
		--{X: 444.759, Y: -975.056, Z: 30.689} {H: 342.665} {Comment: entrance},
			{label = _U('pcam6'), x = 444.7036, y = -974.7626, z = 33.69012, r = {x = -25.0, y = 0.0, z = 90.01}, canRotate = true},		
							--{X: 449.537, Y: -988.287, Z: 31.163} {H: 195.585} {Comment: entrance2},	
			{label = _U('pcam7'), x = 449.574, y = -988.8395, z = 33.21012, r = {x = -30.0, y = 0.0, z = 50.50}, canRotate = true}
		--	{label = _U('pcam8'),  x = 1801.281, y = 2479.288, z = -117.2525, r = {x = -25.0, y = 0.0, z = 45.0}, canRotate = true},
		--	{label = _U('pcam9'), x = 1785.808, y = 2486.758, z = -120.5894, r = {x = -45, y = 0.0, z = 230.95}, canRotate = true},
		--	{label = _U('pcam10'), x = 1785.808, y = 2486.854, z = -117.1499, r = {x = -35.0, y = 0.0, z = 230.95}, canRotate = true},
		--	{label = _U('pcam11'), x = 1706.41, y = 2582.03, z = -67.41, r = {x = -35.0, y = 0.0, z = 130.0}, canRotate = true}
		--	{label = _U('pcam12'), x = 474.869, y = -994.415, z = 26.68, r = {x = -35.0, y = 0.0, z = 130.0}, canRotate = true}			
		--	{X: 474.869, Y: -994.415, Z: 26.68} {H: 135.993} {Comment: camp},

		},
	},
}