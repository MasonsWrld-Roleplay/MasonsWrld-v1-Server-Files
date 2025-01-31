Config = {}

Config.GiveBlack = false --enable marked bills

Config.Blips = { --Commnent out if you don't need blips


}

Config.DrugDealerItems = {
	-- [1] = {
	-- 	name = 'DrugDealer Weed', --Any name
	-- 	pos = vector3(-1171.06, -1571.31, -106.25), --Position of the dealer
	-- 	items = {
	-- 		['weed_pooch'] = 1, --item name and price
	-- 	},
	-- },
	-- [2] = {
	-- 	name = 'DrugDealer Coke',
	-- 	pos = vector3(348.04, 168.61, 102.12),
	-- 	items = {
	-- 		['coke_pooch'] = 1,
	-- 		['heroin_shot'] = 1,
	-- 	},
	-- },
	-- [3] = {
	-- 	name = 'DrugDealer Spice',
	-- 	pos = vector3(-1146.53, 4940.75, 221.3),
	-- 	items = {
	-- 		['spice_pooch'] = 1,
	-- 	},
	-- },
	-- [4] = {
	-- 	name = 'DrugDealer Lean',
	-- 	pos = vector3(42.23, 3706.88, 38.78),
	-- 	items = {
	-- 		['lean_bottle'] = 1,
	-- 		['double_cup'] = 1, --Download ak47_usabledrugs for this
	-- 	},
	-- },
	-- [5] = {
	-- 	name = 'DrugDealer X-Pill',
	-- 	pos = vector3(32.46, -627.4, 10.8),
	-- 	items = {
	-- 		['xpills'] = 1,
	-- 	},
	-- },
	-- [6] = {
	-- 	name = 'DrugDealer Meth',
	-- 	pos = vector3(495.28, -1823.37, 28.9),
	-- 	items = {
	-- 		['meth_pooch'] = 1,
	-- 	},
	-- },
}

Config.CircleZones = {
	[1] = {
		collect = { --Drug collect points
			[1] = {pos = vector3(1057.51, -3196.77, -40.13), heading = 175.7, quantity = 1},
			[2] = {pos = vector3(1060.13, -3193.63, -40.13), heading = 275.42, quantity = 1},
			[3] = {pos = vector3(1054.19, -3192.18, -40.13), heading = 47.96, quantity = 1},
		}, 
		process = { --Drug process Points
			[1] = {pos = vector3(1037.56, -3205.25, -39.15), heading = 274.9},
			[2] = {pos = vector3(1039.14, -3205.28, -39.15), heading = 91.65},
			[3] = {pos = vector3(1034.57, -3205.47, -39.15), heading = 84.13},
			[4] = {pos = vector3(1033.03, -3205.47, -39.15), heading = 267.92},
		},
		processDelay = 10, --in second
		collectDelay = 5, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if you don't need any require item.(requiredForProcess = false)
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'weed_leaf', xQuantity = 1, --xItem is the raw item and xQuantity is the required quantity for process
		xLabel = 'Weed leaf', --Any Name
		yItem = 'weed_pooch', yQuantity = 1, --yItem is the item after process and it's quantity is yQuantity
		yLabel = 'Weed Pooch', --Any name
	},
	[2] = {
		collect = {
			[1] = {pos = vector3(90.38, 3745.86, 40.77), heading = 65.22, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(93.61, 3754.28, 40.77), heading = 71.78},
			[2] = {pos = vector3(91.03, 3751.67, 40.77), heading = 105.23},
		},
		processDelay = 15, --in second
		collectDelay = 5, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'cokebrick', xQuantity = 1,
		xLabel = 'Coke Brick',
		yItem = 'coke_pooch', yQuantity = 1,
		yLabel = 'Coke Pooch',
	},
	[3] = {
		collect = {
			[1] = {pos = vector3(2884.0, 4385.56, 50.74), heading = 142.4, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(2888.46, 4387.46, 50.74), heading = 223.45},

		},
		processDelay = 10, --in second
		collectDelay = 5, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'spice_leaf', xQuantity = 1,
		xLabel = 'Spice leaf',
		yItem = 'spice_pooch', yQuantity = 1,
		yLabel = 'Spice Pooch',
	},
	[4] = {
		collect = {
			[1] = {pos = vector3(94.47, -1294.07, 29.27), heading = 116.27, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(-1288.41, 353.91, 67.81), heading = 35.15},
		},
		processDelay = 10, --in second
		collectDelay = 5, --in second
		requiredForProcess = 'empty_lean_bottle', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Empty lean Bottle', --Any name
		removable = true,
		xItem = 'raw_lean', xQuantity = 1,
		xLabel = 'Lean ingredients',
		yItem = 'lean_bottle', yQuantity = 1,
		yLabel = 'Lean bottle',
	},
	[5] = {
		collect = {
			[1] = {pos = vector3(374.99, -824.74, 29.29 - 1.0), heading = 260.66, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(93.31, -1291.38, 29.27), heading = 351.67},
		},
		processDelay = 10, --in second
		collectDelay = 5, --in second
		requiredForProcess = false, -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = '', --Any name
		removable = false,
		xItem = 'chemicals', xQuantity = 1,
		xLabel = 'Chemicals',
		yItem = 'xpills', yQuantity = 1,
		yLabel = 'X Pills',
	},
	[6] = {
		collect = {
			[1] = {pos = vector3(-3421.56, 973.96, 11.9), heading = 309.63, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(-3420.61, 963.46, 11.91), heading = 258.45},
			[2] = {pos = vector3(-3421.56, 960.65, 11.91), heading = 255.69},
			[3] = {pos = vector3(-3420.64, 958.06, 11.91), heading = 299},
			[4] = {pos = vector3(-3417.47, 957.6, 11.91), heading = 321.55},
		},
		processDelay = 10, --in second
		collectDelay = 5, --in second
		requiredForProcess = 'lighter', -- Set it false if not require like requiredForProcess = false,
		removable = false, 
		requiredForProcessLabel = 'Lighter', --Any name
		xItem = 'heroin', xQuantity = 1,
		xLabel = 'Heroin',
		yItem = 'heroin_shot', yQuantity = 1,
		yLabel = 'Heroin Shot',
	},

	[7] = {
		collect = {
			[1] = {pos = vector3(1016.18, -3195.62, -39.96), heading = 270.00, quantity = 1},
		}, 
		process = {
			[1] = {pos = vector3(1014.25, -3194.94, -39.96), heading = 1.48},
			[2] = {pos = vector3(1012.09, -3194.94, -39.96), heading = 1.48},
			[3] = {pos = vector3(1006.93, -3194.87, -39.96), heading = 1.48},
			[4] = {pos = vector3(1004.7, -3194.92, -39.96), heading = 1.48},
		},
		processDelay = 10, --in second
		collectDelay = 5, --in second
		requiredForProcess = 'pooch_bag', -- Set it false if not require like requiredForProcess = false,
		requiredForProcessLabel = 'Pooch Bag', --Any name
		removable = true,
		xItem = 'meth_raw', xQuantity = 3,
		xLabel = 'Raw meth',
		yItem = 'meth_pooch', yQuantity = 1,
		yLabel = 'Meth pooch',
	},
}

Config.Teleports = {
	['Coke Lab'] = {enter = vector3(-3261.62, 7554.37, 48.72), exit = vector3(1088.61, -3188.4, -39.96)},
	['Weed Lab'] = {enter = vector3(-3261.62, 7554.37, 48.72), exit = vector3(1065.92, -3183.51, -40.13)},
	['Meth Lab'] = {enter = vector3(1915.57, 582.68, 176.37), exit = vector3(997.13, -3200.64, -37.36)},
}