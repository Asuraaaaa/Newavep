Config              = {}
Config.MarkerType   = -1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 2.0, y = 2.0, z = 2.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips    = false

Config.RequiredCopsWeed  	= 0
Config.RequiredCopsCoke  	= 0
--------------------------------
--------------------------------
Config.RequiredCopsMeth     = 0
Config.RequiredCopsMethlab  = 0
Config.RequiredCopsAcetone  = 0
Config.RequiredCopsLithium  = 0
--------------------------------
--------------------------------
Config.RequiredCopsCrack    = 0
Config.RequiredCopsKetamine = 0
Config.RequiredCopsEcstasy  = 0
-------------------------------
Config.RequiredCopsBillet   = 0
-------------------------------
Config.RequiredCopsOpium    = 0

Config.TimeToFarm           = 1 * 500 --1000
Config.TimeToProcess        = 1 * 500 --1000
Config.TimeToSell           = 1 * 500 --1000

Config.Locale = 'fr'

Config.Zones = {
	WeedField           = {x=3659.7,  		y=4574.0,    	z=25.4,     name = _U('weed_field'),         sprite = 496,    color = 2},		--- ok
	WeedProcessing      = {x=372.081,  		y=-1791.591, 	z=29.095,   name = _U('weed_processing'),    sprite = 496,    color = 2},		--- ok
	WeedDealer          = {x=1110.605, 		y=-464.805,	 	z=66.319,   name = _U('weed_dealer'),        sprite = 500,    color = 2}, 		--- ok
	---------------------------------------------------------------------------------------------------------------------------
	OpiumField      	= {x=1838.24,		y=5035.191,  	z=57.272,	name = _U('opium_field'),		 sprite = 51,	color = 8},		---	ok
	OpiumProcessing 	= {x=-438.544,  	y=-2184.25,  	z=10.522,	name = _U('opium_processing'),	 sprite = 51,	color = 8},		---	mwai ajouter pnj
	OpiumDealer     	= {x=-1217.199, 	y=-1055.398, 	z=8.412,	name = _U('opium_dealer'),		 sprite = 500,	color = 8},		---	mwai ajouter pnj 
	---------------------------------------------------------------------------------------------------------------------------
    CokeField           = {x=1919.66,		y=3729.08,		z=32.95,	name = _U('coke_field'),         sprite = 501,    color = 1},		---	a changer la position pour la recolte de la coke (genre montagne)
    CokeProcessing      = {x=1459.405,		y=-1930.637,	z=71.805,	name = _U('coke_processing'),    sprite = 478,    color = 1},		--- X: 1459.405, Y: -1930.637, Z: 71.805 (pres du depot essence)
    CokeDealer          = {x=-1901.375,		y=-586.013,		z=10.871,    name = _U('coke_dealer'),        sprite = 500,    color = 1}, 		---{X: -1901.375, Y: -586.013, Z: 11.871} {H: 143.194} {Comment: cokedealbody},
	---------------------------------------------------------------------------------------------------------------------------
	MethField           = {x=2299.642,  	y=-1638.519, 	z=89.178,   name = _U('meth_field'),         sprite = 499,    color = 9},	---	ok
	--MethlabField        = {x=0.0,  			y=0.0,	    	z=0.0,   name = _U('methlab_field'),      sprite = 499,    color = 9},	---	rm utilisé avec le van de la meth
	--AcetoneField        = {x=0.0,   		y=0.0,		   	z=0.0,    name = _U('acetone_field'),      sprite = 499,    color = 9},	----	rm utilisé avec le van de la meth
	--LithiumField        = {x=0.0,   		y=0.0,   		z=0.,    name = _U('lithium_field'),      sprite = 499,    color = 9},	----	rm utilisé avec le van de la meth
	MethProcessing      = {x=435.288,  	   	y=6455.796,       	z=28.745,      name = _U('meth_processing'),    sprite = 499,    color = 9},	---	a revoir
    MethDealer          = {x=93.52,     	y=3753.52,   	z=40.77,    name = _U('meth_dealer'),        sprite = 500,    color = 9},	---	ok
	---------------------------------------------------------------------------------------------------------------------------
	CrackField          = {x=1099.826,  	y=-3194.494, 	z=-38.993,	name = _U('crack_field'),		 sprite = 501,	color = 3},		--- ok voir esx teleporter
	CrackProcessing     = {x=1093.462,  	y=-3197.138, 	z=-38.993,	name = _U('crack_processing'),	 sprite = 478,	color = 3},		--- ok voir esx teleporter
	CrackDealer         = {x=-603.277,  	y=-1628.447, 	z=27.011,	name = _U('crack_dealer'),		 sprite = 500,	color = 3},		--- ok 
	---------------------------------------------------------------------------------------------------------------------------
	KetamineField       = {x=1003.198,  	y=-3199.675, 	z=-37.993,	name = _U('ketamine_field'),	 sprite = 499,	color = 5},		--- ok voir esx teleporter
	KetamineProcessing  = {x=1010.293,  	y=-3196.814, 	z=-38.993,	name = _U('ketamine_processing'),sprite = 499,	color = 5},		--- ok voir esx teleporter
	KetamineDealer      = {x=1469.923,  	y=1134.3,  		z=114.323,	name = _U('ketamine_dealer'),	 sprite = 500,	color = 5},		--- ok
	---------------------------------------------------------------------------------------------------------------------------
	EcstasyField        = {x=1057.68,   	y=-3196.309, 	z=-39.161,	name = _U('ecstasy_field'),		 sprite = 496,	color = 6},		---	ok voir esx teleporter
	EcstasyProcessing   = {x=1037.009,  	y=-3205.336, 	z=-38.171,	name = _U('ecstasy_processing'), sprite = 496,	color = 6},		--- ok voir esx teleporter
	EcstasyDealer       = {x=-1653.911, 	y=-1005.452, 	z=5.856,	name = _U('ecstasy_dealer'),	 sprite = 500,	color = 6},		--- ok
 	---------------------------------------------------------------------------------------------------------------------------
	--BilletField         = {x=605.4480,  	y=-3093.4470,	z=6.0692,	name = _U('billet_field'),		 sprite = 500,	color = 7},		---	mwai
	--BilletProcessing    = {x=-1077.92,  	y=-1678.19,  	z=3.57,	    name = _U('billet_processing'),	 sprite = 500,	color = 7},		---	mwai ajouter pnj
	--BilletDealer        = {x=1486.75,   	y=1131.6477, 	z=113.33,	name = _U('billet_dealer'),		 sprite = 500,	color = 7}		---	mwai ajouter pnj
	---------------------------------------------------------------------------------------------------------------------------

}
 