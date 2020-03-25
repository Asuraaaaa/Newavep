Config = {}

Config.PriceBlista = 800
Config.PriceVespa = 500
Config.PriceBmx = 200


Config.openHours = 5
Config.closeHours = 20
Config.Hours = false
Config.Blip = true
Config.GPS = true

Config.PriceWeedF = 50000
Config.PriceWeedT = 55000
Config.PriceWeedR = 80000

Config.PriceOpiumF = 90000
Config.PriceOpiumT = 125000
Config.PriceOpiumR = 180000

Config.PriceCokeF = 150000
Config.PriceCokeT = 250000
Config.PriceCokeR = 300000

Config.PriceMethF = 90000
Config.PriceMethT = 125000
Config.PriceMethR = 180000


	--[[
	WeedField           = {x=3659.7,  		y=4574.0,    	z=25.4,     name = _U('weed_field'),         sprite = 496,    color = 2},		--- ok
	WeedProcessing      = {x=372.081,  		y=-1791.591, 	z=29.095,   name = _U('weed_processing'),    sprite = 496,    color = 2},		--- ok
	WeedDealer          = {x=1110.605, 		y=-464.805,	 	z=66.319,   name = _U('weed_dealer'),        sprite = 500,    color = 2}, 		--- ok
	--]]

Config.WeedFarm = {   ----
	x = 3659.7,
	y = 4574.0,
	z = 25.4
}

	Config.WeedTreatment = {
		x = 372.081,
		y = -1791.591,
		z = 29.095
	}

		Config.WeedResell = {
			x = 1110.605,
			y = -464.805,
			z = 66.319
		}

--[[
	OpiumField      	= {x=1838.24,		y=5035.191,  	z=57.272,	name = _U('opium_field'),		 sprite = 51,	color = 8},		---	a revoir
	OpiumProcessing 	= {x=-438.544,  	y=-2184.25,  	z=10.522,	name = _U('opium_processing'),	 sprite = 51,	color = 8},		---	a revoir
	OpiumDealer     	= {x=-1217.199, 	y=-1055.398, 	z=8.412,	name = _U('opium_dealer'),		 sprite = 500,	color = 8},		---	a revoir  
]]

Config.OpiumFarm = { ---
	x = 1838.24,
	y = 5035.191,
	z = 57.272
}

	Config.OpiumTreatment = {
		x = 91.061386108398,
		y = 3750.0380859375,
		z = 39.77326965332
	}

		Config.OpiumResell = {
			x = -54.249694824219,
			y = -1443.3666992188,
			z = 31.068626403809
		}

--[[
CokeField           = {x=1919.66,		y=3729.08,		z=32.95,	name = _U('coke_field'),         sprite = 501,    color = 1},		---	a changer la position pour la recolte de la coke (genre montagne)
CokeProcessing      = {x=1459.405,		y=-1930.637,	z=71.805,	name = _U('coke_processing'),    sprite = 478,    color = 1},		--- X: 1459.405, Y: -1930.637, Z: 71.805 (pres du depot essence)
CokeDealer          = {x=-1901.375,		y=-586.013,		z=10.871,    name = _U('coke_dealer'),        sprite = 500,    color = 1}, 		---{X: -1901.375, Y: -586.013, Z: 11.871} {H: 143.194} {Comment: cokedealbody},
--]]

Config.CokeFarm = {   -----
	x = -77.096038818359,
	y = -1562.2381591797,
	z = 30.678163528442
}

	Config.CokeTreatment = {
		x = 1502.6511230469,
		y = 1722.5709228516,
		z = 108.7786026001
	}

		Config.CokeResell = {
			x = -1187.2404785156,
			y = -1263.1259765625,
			z = 5.7401547431946
		}
--[[
		MethField           = {x=2299.642,  	y=-1638.519, 	z=89.178,   name = _U('meth_field'),         sprite = 499,    color = 9},	---	a revoir
		MethlabField        = {x=1956.104,  	y=5053.0,    	z=41.413,   name = _U('methlab_field'),      sprite = 499,    color = 9},	---	a revoir
		AcetoneField        = {x=1774.42,   	y=3841.21,   	z=34.32,    name = _U('acetone_field'),      sprite = 499,    color = 9},	---	a revoir
		LithiumField        = {x=-233.89,   	y=6276.41,   	z=31.68,    name = _U('lithium_field'),      sprite = 499,    color = 9},	---	a revoir
		MethProcessing      = {x=0.0,  	    	y=0.0,       	z=0.0,      name = _U('meth_processing'),    sprite = 499,    color = 9},	---	a revoir
		MethDealer          = {x=93.52,     	y=3753.52,   	z=40.77,    name = _U('meth_dealer'),        sprite = 500,    color = 9}	---	a revoir
]]

Config.MethFarm = {  
	x = -2234.1413574219,
	y = 4282.755859375,
	z = 45.987499237061
}

	Config.MethTreatment = {
		x = 91.061386108398,
		y = 3750.0380859375,
		z = 42.695987701416
	}

		Config.MethResell = {
			x = -414.09884643555,
			y = -2665.1447753906,
			z = 5.0251846313477
		}


	--[[
	CrackField          = {x=1099.826,  	y=-3194.494, 	z=-38.993,	name = _U('crack_field'),		 sprite = 501,	color = 3},		--- ok voir esx teleporter
	CrackProcessing     = {x=1093.462,  	y=-3197.138, 	z=-38.993,	name = _U('crack_processing'),	 sprite = 478,	color = 3},		--- ok voir esx teleporter
	CrackDealer         = {x=-603.277,  	y=-1628.447, 	z=27.011,	name = _U('crack_dealer'),		 sprite = 500,	color = 3},	
	--]]
Config.CrackFarm = {
	--x = 1099.826,
	--y = -3194.494, 
	--z = -38.993
	--old
	x = -143.549,
	y = 174.973,
	z = 88.628
}
	Config.CrackTreatment = {
		x = 1093.462,
		y = -3197.138,
		z = -38.993
	}
		Config.CrackResell = {
			x = -603.277,
			y = -1628.447,
			z = 27.011
		}


Config.KetamineFarm = {
	x = 1003.198,
	y = -2190.342,
	z = -30.533
}
	Config.KetamineTreatment = {
		x = 1010.293,
		y = -3196.814,
		z = -38.993 
	}
		Config.KetamineResel = {
			x = 1469.923,
			y = 1134.3,
			z = 114.323
		}

	--[[
	KetamineField       = {x=1003.198,  	y=-3199.675, 	z=-37.993,	name = _U('ketamine_field'),	 sprite = 499,	color = 5},		--- ok voir esx teleporter
	KetamineProcessing  = {x=1010.293,  	y=-3196.814, 	z=-38.993,	name = _U('ketamine_processing'),sprite = 499,	color = 5},		--- ok voir esx teleporter
	KetamineDealer      = {x=1469.923,  	y=1134.3,  		z=114.323,	name = _U('ketamine_dealer'),	 sprite = 500,	color = 5},		--- ok
	]]

Config.EcstasyFarm = {
	x = 94.215,
	y = -2694.652,
	z = 5.0
}
	Config.EcstasyTreatment = {
		x = 1037.009,
		y = -3205.336,
		z = -38.171
	}
		Config.EcstasyResel = {
			x = -1653.911,
			y = -3205.336,
			z = 5.856
		}
	--[[-------------------------------------------------------------------------------------------------------------------------
	EcstasyField        = {x=1057.68,   	y=-3196.309, 	z=-39.161,	name = _U('ecstasy_field'),		 sprite = 496,	color = 6},		---	ok voir esx teleporter
	EcstasyProcessing   = {x=1037.009,  	y=-3205.336, 	z=-38.171,	name = _U('ecstasy_processing'), sprite = 496,	color = 6},		--- ok voir esx teleporter
	EcstasyDealer       = {x=-1653.911, 	y=-1005.452, 	z=5.856,	name = _U('ecstasy_dealer'),	 sprite = 500,	color = 6},		--- ok
	---------------------------------------------------------------------------------------------------------------------------

	---------------------------------------------------------------------------------------------------------------------------
	BilletField         = {x=605.4480,  	y=-3093.4470,	z=6.0692,	name = _U('billet_field'),		 sprite = 500,	color = 7},		---	a revoir
	BilletProcessing    = {x=-1077.92,  	y=-1678.19,  	z=3.57,	    name = _U('billet_processing'),	 sprite = 500,	color = 7},		---	a revoir
	BilletDealer        = {x=1486.75,   	y=1131.6477, 	z=113.33,	name = _U('billet_dealer'),		 sprite = 500,	color = 7},		---	a revoir

 


		]]