Config.Shop['burgershot'] = { -- job name
	blip = {enable = true, name = 'Burgershot', sprite = 536, color = 28, size = 0.6, radius = 0.0, radius_color = 4},
	boss_action = vector3(-1198.09, -897.62, 13.8),
	management = vector3(-1200.74, -896.65, 13.8),
	managementRankFor = {
		price = 2,
		stock = 2,
	},
	autoStock = {         		 -- auto refill shop items
	    enable = true,
	    slots = 500,             -- container size
	    regeneration = 10,       -- regenerate item every 10 minutes
	    add = 10,                -- add 1 item to the stock
	},
	crafting = {
		menu =vector3(-1185.56, -899.12, 13.8),
		data = {
			bacon_double_cheeseburger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					--{item = 'water', quantity = 1, willremove = false}, 
					--{item = 'bread', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting bacon...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			bacon_ham_sausage = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting bacon...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			bacon_king = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting bacon...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			big_fish = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting fish...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			bs_chicken_jr = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1193.31, -898.46, 13.8, 32.68),  delay = 3, msg = 'Getting chicken...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			bs_hamburger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting hamburger meat...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			buttermilk_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			deluxe_chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1193.31, -898.46, 13.8, 32.68),  delay = 3, msg = 'Getting chicken...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			double_cheeseburger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting burger meat...'},	-- x, y, z, heading, second, messagee
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			double_sausage_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting sausage...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			double_sausage_croissanwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting sausage...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			ham_egg_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			original_chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1193.31, -898.46, 13.8, 32.68),  delay = 3, msg = 'Getting chicken...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			rodeo_burger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting burger meat...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			sausage_croissanwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting sausage...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			spicy_deluxe_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			texas_double_whopper = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting meat...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			whopper_with_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting meat...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},

			bs_mozzarella_sticks = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting mozzarella...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message	-- x, y, z, heading, second, message
				}
			},
			cheesy_tots = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1193.31, -898.46, 13.8, 32.68),  delay = 3, msg = 'Getting chicken...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_nuggets = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1193.31, -898.46, 13.8, 32.68),  delay = 3, msg = 'Getting chicken...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			egg_normous_burrito = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			french_toast_sticks = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			jalapeno_cheddar_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			small_classic_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1186.31, -901.99, 13.8, 215.75),  delay = 10, msg = 'Grabbing potatoes...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			small_hash_browns = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1186.31, -901.99, 13.8, 215.75),  delay = 10, msg = 'Grabbing potatoes...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			small_onion_rings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			soft_serve_cone = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1192.24, -898.91, 13.8, 306.55),  delay = 20, msg = 'Getting Milk...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1191.25, -901.03, 13.8, 29.48),  delay = 15, msg = 'Making ice...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			soft_serve_cup = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1192.24, -898.91, 13.8, 306.55),  delay = 20, msg = 'Getting Milk...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1191.25, -901.03, 13.8, 29.48),  delay = 15, msg = 'Making ice...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			sundae_pie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1192.24, -898.91, 13.8, 306.55),  delay = 20, msg = 'Getting Milk...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			

			cheeseburger_king_jr = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'applesauce', quantity = 1, willremove = true}, 
					{item = 'sun_apple_juice', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1188.61, -901.47, 13.8, 304.81),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			croissanwich_meal = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'bs_cafe_decaf', quantity = 1, willremove = true}, 
					{item = 'chicken_nuggets', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			family_bundle_classic = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'small_classic_fries', quantity = 2, willremove = true}, 
					{item = 'sundae_pie', quantity = 2, willremove = true},
					{item = 'bs_coca_cola', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			hamburger_king_jr = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'applesauce', quantity = 1, willremove = true}, 
					{item = 'sun_apple_juice', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			loaded_croissanwich_meal = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chicken_nuggets', quantity = 1, willremove = true}, 
					{item = 'bs_orange_juice', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			nuggets_king_jr = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chicken_nuggets', quantity = 1, willremove = true}, 
					{item = 'sun_apple_juice', quantity = 1, willremove = true},
					{item = 'applesauce', quantity = 1, willremove = true},
				},	
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1187.85, -899.08, 13.8, 217.48),  delay = 15, msg = 'Frying...'},	
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			pancake_sausage_platter = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1184.25, -900.66, 13.8, 215.35),  delay = 3, msg = 'Getting ingredients...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1186.49, -901.16, 13.8, 35.83),  delay = 20, msg = 'Cooking...'},
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			


			barqs_diet_beer = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bottle_diet_coke = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_barqs_beer = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_cafe_decaf = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},-- x, y, z, heading, second, message
				}
			},
			bs_coca_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_diet_coke = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_dr_pepper = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_fanta_orange = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_fruit_punch = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 10, msg = 'Packaging...'},	-- x, y, z, heading, second, message
				}
			},
			bs_iced_tea = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_sprite = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_sprite_zero = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			bs_yello_mello = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_cookie_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			cookie_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			pink_lemonade = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			plain_iced_coffee = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			strawberry_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			vanilla_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1184.23, -900.65, 13.8, 213.32),  delay = 3, msg = 'Grabbing Drink...'},	-- x, y, z, heading, second, message
				}
			},
			
		}
	},
	storage = {
		pos = vector4(-1203.1, -895.42, 14.0, 0.0), 		-- x, y, z, heading
		prop = nil,
		items = {
            applesauce = {
                name = 'Applesauce',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            bs_orange_juice = {
                name = 'Orange Juice',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            sun_apple_juice = {
                name = 'Orange Juice',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		--vector3(-1189.02, -893.05, 13.8),
		--vector3(-1190.41, -893.97, 13.8),
		--vector3(-1191.81, -895.08, 13.8)
	},
	data = {
		market_items = {					-- Here you configure the items definitions
			bacon_double_cheeseburger = {				-- The item ID
				name = "Bacon Double Cheeseburger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bacon_ham_sausage = {				-- The item ID
				name = "Fully Loaded Bacon Ham Sausage",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			big_fish = {				-- The item ID
				name = "Big Fish",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bs_chicken_jr = {				-- The item ID
				name = "Chicken Jr.",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bs_hamburger = {				-- The item ID
				name = "Hamburger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			buttermilk_biscuit = {				-- The item ID
				name = "Fully Loaded Buttermilk",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			deluxe_chicken_sandwich = {				-- The item ID
				name = "Ch King Deluxe Chicken Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_cheeseburger = {				-- The item ID
				name = "Double Cheeseburger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_sausage_biscuit = {				-- The item ID
				name = "Double Sausage, Egg, & Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_sausage_croissanwich = {				-- The item ID
				name = "Double Sausage, Egg, & Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			ham_egg_cheese = {				-- The item ID
				name = "Ham, Egg, & Cheese CroissanWich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			original_chicken_sandwich = {				-- The item ID
				name = "Original Chicken Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			rodeo_burger = {				-- The item ID
				name = "Rodeo Burger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			sausage_croissanwich = {				-- The item ID
				name = "Sausage, Egg, & Cheese CroissanWich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			spicy_deluxe_sandwich = {				-- The item ID
				name = "Spicy Ch King Deluxe Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			texas_double_whopper = {				-- The item ID
				name = "Texas Double Whopper",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			whopper_with_cheese = {				-- The item ID
				name = "Triple Whopper with Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},

			cheeseburger_king_jr = {				-- The item ID
				name = "Cheeseburger King Jr Meal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			croissanwich_meal = {				-- The item ID
				name = "Sausage, Egg & Cheese Small",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			family_bundle_classic = {				-- The item ID
				name = "Family Bundle Classic",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			hamburger_king_jr = {				-- The item ID
				name = "Hamburger King Jr. Meal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			loaded_croissanwich_meal = {				-- The item ID
				name = "Bacon, Sausage & Ham Meal Small",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			nuggets_king_jr = {				-- The item ID
				name = "Chicken Nuggets King Jr Meal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			pancake_sausage_platter = {				-- The item ID
				name = "Pancake & Sausage Platter",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},

			bs_mozzarella_sticks = {				-- The item ID
				name = "Mozzarella Sticks",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			cheesy_tots = {				-- The item ID
				name = "Cheesy Tots",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_fries = {				-- The item ID
				name = "9 PC Chicken Fries",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_nuggets = {				-- The item ID
				name = "Chicken Nuggets",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			egg_normous_burrito = {				-- The item ID
				name = "Egg Normous Burrito",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			french_toast_sticks = {				-- The item ID
				name = "3 French Toast Sticks",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			jalapeno_cheddar_bites = {				-- The item ID
				name = "Jalapeno Cheddar Bites",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			small_classic_fries = {				-- The item ID
				name = "Small Classic Fries",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			small_hash_browns = {				-- The item ID
				name = "Small Hash Browns",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			small_onion_rings = {				-- The item ID
				name = "Small Onion Rings",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			soft_serve_cone = {				-- The item ID
				name = "Soft Serve Cone",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			soft_serve_cup = {				-- The item ID
				name = "Soft Serve Cup",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			sundae_pie = {				-- The item ID
				name = "HERSHEYS Sundae Pie",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			sun_apple_juice = {				-- The item ID
				name = "Capri Sun Apple Juice",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = false
			},
			bs_orange_juice = {				-- The item ID
				name = "Capri Sun Apple Juice",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = false
			},
			

			barqs_diet_beer = {				-- The item ID
				name = "Medium Diet Barqs Root Beer",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bottle_diet_coke = {				-- The item ID
				name = "20oz Bottle Diet Coke",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_barqs_beer = {				-- The item ID
				name = "Medium Barqs Root Beer",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_cafe_decaf = {				-- The item ID
				name = "Medium BK Cafe Decaf",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_coca_cola = {				-- The item ID
				name = "Medium Coca-Cola",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_diet_coke = {				-- The item ID
				name = "Medium Diet Coke",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_dr_pepper = {				-- The item ID
				name = "Medium Dr. Pepper",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_fanta_orange = {				-- The item ID
				name = "Medium Fanta Orange",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_fruit_punch = {				-- The item ID
				name = "Medium Hi-C Fruit Punch",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_iced_tea = {				-- The item ID
				name = "Medium Sweetened Iced Tea",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_sprite = {				-- The item ID
				name = "Medium Sprite",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_sprite_zero = {				-- The item ID
				name = "Medium Sprite Zero",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_yello_mello = {				-- The item ID
				name = "Medium Mello Yello",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			chocolate_cookie_shake = {				-- The item ID
				name = "Chocolate OREO Cookie Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			chocolate_shake = {				-- The item ID
				name = "Chocolate Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			cookie_shake = {				-- The item ID
				name = "OREO Cookie Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			pink_lemonade = {				-- The item ID
				name = "Medium Hi-C Pink Lemonade",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			plain_iced_coffee = {				-- The item ID
				name = "Plain Iced Coffee Medium",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			strawberry_shake = {				-- The item ID
				name = "Strawberry Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			vanilla_shake = {				-- The item ID
				name = "Vanilla Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Burger", icon = 'fa-link'},
			[1] = {name = "Combo", icon = 'fa-link'},
			[2] = {name = "Others", icon = 'fa-link'},
			[3] = {name = "Drinks", icon = 'fa-link'},
		}
	}
}