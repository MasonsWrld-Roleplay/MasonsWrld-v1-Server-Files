Locale = {}
Config = {

	Debug = false,
	Target = 'ox_target',								-- 'qb-target' | 'ox_target'
	ProgressBar = 'ox',									-- 'qb' (progressbar) | 'ox' (ox_lib)
	Skillbar = 'qb',									-- 'none' | 'ps-ui' | 'ox' | 'qb' | Add more in shared.lua
	Link = 'nui://ox_inventory/web/images/',					-- Path to your inventory images folder
	JobRole = 'galaxy',
	Language = 'en',
	Animations = 'rpemotes',
	MenuDisplay = 'qb',								-- 'ps-ui' | Add more in shared.lua
	Stashes = 'ox',									-- 'qb' (qb-inventory) | 'other' (includes old QBCore) | Add more in shared.lua

	CraftingEmote = 'type3',
	
	BusinessName = 'Galaxy',
	Interior = 'fiv3devs',
	
	Locations = {
		['fiv3devs'] = {
			DutyZone = {
				vector2(325.05133056641, 334.18072509766),
				vector2(443.5192565918, 298.97262573242),
				vector2(407.1921081543, 220.80142211914),
				vector2(299.17611694336, 257.65179443359)
			},
			MapBlip = { name = 'Galaxy Nightclub', location = vector3(347.45, 278.75, 91.19), sprite = 93, colour = 5, enable = true },
			Menus = {		-- Requires ps-ui to create viewable menu images on-screen. Delete these otherwise.
				[1] = { itemName = 'galaxymenu', imageLink = 'https://r2.fivemanage.com/pub/29u4htay3c59.png' },
			},
			ClockIn = {
				[1] = { location = vector4(379.33, 259.24, 92.09, 213.66), length = 1.0, width = 4.0, minZ = 91.2, maxZ = 93.2, useProp = false },
			},
			BossMenu = {
				[1] = { location = vector4(407.05, 243.34, 91.86, 254.0), length = 1.0, width = 2.5, minZ = 91.0, maxZ = 92.5, minBossRank = 3, useProp = false, enable = false },
			},
			Tills = {
				[1] = { location = vector4(352.1, 289.1, 91.13, 342.96), length = 0.5, width = 0.5, minZ = 91.2, maxZ = 91.7, useProp = false },
				[2] = { location = vector4(355.55, 282.85, 94.09, 75.92), length = 0.5, width = 0.5, minZ = 94.2, maxZ = 94.7, useProp = false },
				[3] = { location = vector4(383.41, 280.18, 94.95, 96.15), length = 0.5, width = 0.5, minZ = 94.9, maxZ = 95.4, useProp = true },
				[4] = { location = vector4(406.57, 250.71, 92.1, 191.93), length = 0.5, width = 0.5, minZ = 92.1, maxZ = 92.6, useProp = true },
			},
			Trays = {
				[1] = { location = vector4(353.9, 285.1, 91.26, 165.3), length = 0.5, width = 0.6, minZ = 91.2, maxZ = 91.7, weight = 50, slots = 10, useProp = true },
				[2] = { location = vector4(359.4, 282.2, 94.26, 254.5), length = 0.5, width = 0.6, minZ = 94.2, maxZ = 94.7, weight = 50, slots = 10, useProp = true },
				[3] = { location = vector4(358.85, 280.1, 94.26, 254.5), length = 0.5, width = 0.6, minZ = 94.2, maxZ = 94.7, weight = 50, slots = 10, useProp = true },
				[4] = { location = vector4(382.83, 278.33, 94.97, 253.04), length = 0.5, width = 0.6, minZ = 94.9, maxZ = 95.5, weight = 50, slots = 10, useProp = true },
				[5] = { location = vector4(407.3, 250.5, 92.13, 344.87), length = 0.5, width = 0.6, minZ = 92.05, maxZ = 92.55, weight = 50, slots = 10, useProp = true },
			},
			Wardrobes = {
				[1] = { location = vector4(393.7, 279.5, 94.99, 345.0), length = 0.7, width = 1.2, minZ = 94.0, maxZ = 96.5 },
			},
			Sinks = {
				[1] = { location = vector4(352.8, 277.4, 93.82, 75.59), length = 0.8, width = 1.6, minZ = 93.2, maxZ = 94.7 },
				[2] = { location = vector4(357.6, 278.7, 93.84, 255.56), length = 0.8, width = 1.2, minZ = 93.2, maxZ = 94.7 },
			},
			Fridges = {
				[1] = { location = vector4(352.0, 274.6, 94.19, 76.29), length = 0.6, width = 1.8, minZ = 93.2, maxZ = 95.2, hasStash = true, hasShop = true, weight = 1000, slots = 50, shopType = 1 },
				[2] = { location = vector4(354.99, 288.17, 91.21, 344.38), length = 0.4, width = 1.6, minZ = 90.2, maxZ = 92.3, hasStash = true, hasShop = true, weight = 1000, slots = 50, shopType = 2 },
				[3] = { location = vector4(356.6, 283.2, 94.19, 344.76), length = 0.2, width = 1.1, minZ = 93.2, maxZ = 95.2, hasStash = true, hasShop = true, weight = 1000, slots = 50, shopType = 2 },
				[4] = { location = vector4(407.8, 248.18, 92.18, 164.19), length = 0.2, width = 0.9, minZ = 91.2, maxZ = 93.2, hasStash = true, hasShop = true, weight = 1000, slots = 50, shopType = 2 },
			},
			Cookers = {
				[1] = { location = vector4(353.47, 273.85, 93.19, 344.38), length = 1.0, width = 1.5, minZ = 93.2, maxZ = 94.2, label = 'Use Cooker', icon = 'fas fa-fire',
						heading = 'Galaxy Nightclub Cooker', subheading = 'Prepare astral appetisers for customers', menu = 1, useProp = true },
				[2] = { location = vector4(353.12, 285.5, 91.17, 163.91), length = 0.5, width = 0.7, minZ = 91.2, maxZ = 91.7, label = 'Prepare Cocktails', icon = 'fas fa-martini-glass',
						heading = 'Galaxy Nightclub Cocktail Bar', subheading = 'Prepare cosmic cocktails for customers', menu = 2 },
				[3] = { location = vector4(355.4, 281.89, 94.19, 75.45), length = 0.5, width = 1.4, minZ = 94.2, maxZ = 94.7, label = 'Prepare Cocktails', icon = 'fas fa-martini-glass',
						heading = 'Galaxy Nightclub Cocktail Bar', subheading = 'Prepare cosmic cocktails for customers', menu = 2 },
			},
			Tables = {
				[1] = { location = vector4(367.14, 267.21, 94.39, 208.78), length = 0.8, width = 0.8, minZ = 93.4, maxZ = 94.4, weight = 200, slots = 20 },
			},
			Chairs = {
				[1] = { sitting = vector4(371.31, 266.89, 93.9, 75.0), standing = vector3(369.78, 266.77, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[2] = { sitting = vector4(371.07, 265.98, 93.9, 75.0), standing = vector3(369.78, 266.77, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[3] = { sitting = vector4(370.82, 265.1, 93.9, 75.0), standing = vector3(369.88, 264.55, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[4] = { sitting = vector4(370.59, 264.26, 93.9, 75.0), standing = vector3(369.88, 264.55, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[5] = { sitting = vector4(369.34, 263.65, 93.9, 345.0), standing = vector3(368.89, 264.79, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[6] = { sitting = vector4(368.58, 263.86, 93.9, 345.0), standing = vector3(368.89, 264.79, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[7] = { sitting = vector4(367.56, 264.14, 93.9, 345.0), standing = vector3(367.65, 265.29, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[8] = { sitting = vector4(366.81, 264.35, 93.9, 345.0), standing = vector3(367.65, 265.29, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[9] = { sitting = vector4(365.84, 264.62, 93.9, 345.0), standing = vector3(365.93, 265.63, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[10] = { sitting = vector4(365.04, 264.84, 93.9, 345.0), standing = vector3(365.93, 265.63, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[11] = { sitting = vector4(364.17, 265.08, 93.9, 345.0), standing = vector3(364.46, 266.1, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[12] = { sitting = vector4(363.26, 265.33, 93.9, 345.0), standing = vector3(364.46, 266.1, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[13] = { sitting = vector4(362.7, 266.4, 93.9, 255.0), standing = vector3(363.8, 267.51, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[14] = { sitting = vector4(362.89, 267.3, 93.9, 255.0), standing = vector3(363.8, 267.51, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[15] = { sitting = vector4(363.21, 268.39, 93.9, 255.0), standing = vector3(364.22, 268.56, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[16] = { sitting = vector4(363.4, 269.15, 93.9, 255.0), standing = vector3(364.22, 268.56, 93.39), length = 0.8, width = 0.6, minZ = 93.4, maxZ = 94.9 },
				[17] = { sitting = vector4(355.04, 278.7, 90.7, 345.0), standing = vector3(355.82, 279.41, 90.19), length = 0.8, width = 0.6, minZ = 90.4, maxZ = 91.9 },
				[18] = { sitting = vector4(356.07, 278.41, 90.7, 345.0), standing = vector3(355.82, 279.41, 90.19), length = 0.8, width = 0.6, minZ = 90.4, maxZ = 91.9 },
				[19] = { sitting = vector4(356.94, 278.17, 90.7, 345.0), standing = vector3(357.55, 278.92, 90.19), length = 0.8, width = 0.6, minZ = 90.4, maxZ = 91.9 },
				[20] = { sitting = vector4(357.65, 277.98, 90.7, 345.0), standing = vector3(357.55, 278.92, 90.19), length = 0.8, width = 0.6, minZ = 90.4, maxZ = 91.9 },
				[21] = { sitting = vector4(380.71, 270.3, 94.5, 165.0), standing = vector3(381.14, 269.13, 93.99), length = 0.8, width = 0.6, minZ = 94.0, maxZ = 95.5 },
				[22] = { sitting = vector4(381.49, 270.12, 94.5, 165.0), standing = vector3(381.14, 269.13, 93.99), length = 0.8, width = 0.6, minZ = 94.0, maxZ = 95.5 },
				[23] = { sitting = vector4(382.28, 269.84, 94.5, 165.0), standing = vector3(381.14, 269.13, 93.99), length = 0.8, width = 0.6, minZ = 94.0, maxZ = 95.5 },
				[24] = { sitting = vector4(382.54, 272.17, 94.5, 345.0), standing = vector3(382.78, 273.08, 93.99), length = 0.8, width = 0.6, minZ = 94.0, maxZ = 95.5 },
				[25] = { sitting = vector4(381.73, 272.36, 94.5, 345.0), standing = vector3(382.78, 273.08, 93.99), length = 0.8, width = 0.6, minZ = 94.0, maxZ = 95.5 },
			},
			LuckyBox = {
				[1] = {
					name = '',	-- Add name of lucky box item
					contents = {
						[1] = { name = '', amount = 1 },	-- List of items and amounts you'll get from the lucky box
					},
					collectable = {
						enable = true,	-- Toggle whether or not you want to receive a collectible item
						list = {
							[1] = { name = '' },	-- List of 'collectible' item per box (you'll only get one of them)
						}
					}
				},
			},
			Shop = {
				[1] = {
					{ name = 'bacon', price = 5 },
					{ name = 'blueberry', price = 5 },
					{ name = 'cheddar', price = 5 },
					{ name = 'cocoabean', price = 5 },
					{ name = 'cod', price = 10 },
					{ name = 'coffeebean', price = 5 },
					{ name = 'crisps', price = 10 },
					{ name = 'lemon', price = 5 },
					{ name = 'lime', price = 5 },
					{ name = 'mint', price = 5 },
					{ name = 'orange', price = 5 },
					{ name = 'peach', price = 5 },
					{ name = 'sugar', price = 5 },
				},
				[2] = {
					{ name = 'ecola', price = 10 },
					{ name = 'ecolalight', price = 10 },
					{ name = 'rum', price = 10 },
					{ name = 'sprunk', price = 10 },
					{ name = 'sprunklight', price = 10 },
					{ name = 'tequila', price = 10 },
					{ name = 'vodka', price = 10 },
					{ name = 'water_bottle', price = 10 },
					{ name = 'whiskey', price = 10 },
					--{ name = 'galaxymenu', price = 2 },
				}
			},
			Crafting = {
				[1] = {
					{ name = 'codstellationbites', recipe = { ['cod'] = 1, ['crisps'] = 1, ['lemon'] = 1 }, amount = 1 },
					{ name = 'moonpie', recipe = { ['cocoabean'] = 1, ['sugar'] = 1 }, amount = 1 },
					{ name = 'rocketfuelednachos', recipe = { ['crisps'] = 1, ['cheddar'] = 1, ['bacon'] = 1 }, amount = 1 },
				},
				[2] = {
					{ name = 'astralelixir', recipe = { ['rum'] = 1, ['peach'] = 1, ['sugar'] = 1 }, amount = 1 },
					{ name = 'blackhole', recipe = { ['vodka'] = 1, ['coffeebean'] = 2 }, amount = 1 },
					{ name = 'cometcrush', recipe = { ['vodka'] = 1, ['blueberry'] = 1, ['sugar'] = 1 }, amount = 1 },
					{ name = 'deepbluemojito', recipe = { ['rum'] = 1, ['mint'] = 1, ['blueberry'] = 1, ['lime'] = 1, ['sugar'] = 1 }, amount = 1 },
					{ name = 'galacticglimpse', recipe = { ['whiskey'] = 1, ['water_bottle'] = 1, ['orange'] = 1, ['sugar'] = 1 }, amount = 1 },
					{ name = 'solarflaresipper', recipe = { ['tequila'] = 1, ['orange'] = 1, ['lime'] = 1, ['sugar'] = 1 }, amount = 1 },
					{ name = 'starrynight', recipe = { ['tequila'] = 1, ['lemon'] = 1, ['sugar'] = 1 }, amount = 1 },
				}
			}
		}
	}
}