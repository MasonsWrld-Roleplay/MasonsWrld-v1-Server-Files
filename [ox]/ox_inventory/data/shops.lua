return {
	General = {
		name = 'Shop',
		blip = {
			id = 59, colour = 69, scale = 0.4
		}, inventory = {
			{ name = 'burger', price = 5000 },
			{ name = 'water_bottle', price = 30 },
			{ name = 'cheap_lighter', price = 20 },
			{ name = 'snikkel_candy', price = 3000 },
			{ name = 'coffee', price = 2000 },
			{ name = 'rolling_paper', price = 25 },
			{ name = 'sandwich', price = 5000 },
			{ name = 'lighter', price = 25 },
		}, locations = {
			vec3(25.65, -1346.91, 29.5),
			vec3(-3039.73, 585.59, 7.91),
			vec3(-3242.59, 1001.36, 12.83),
			vec3(1729.15, 6414.99, 35.04),
			vec3(1961.0, 3741.15, 32.34),
			vec3(547.9, 2670.61, 42.16),
			vec3(2678.25, 3280.7, 55.24),
			vec3(2556.66, 382.06, 108.62),
			vec3(373.89, 326.64, 103.57),
			vec3(-47.97, -1757.48, 29.42),
			vec3(-707.4, -914.2, 19.22),
			vec3(-1820.76, 792.99, 138.11),
			vec3(1163.52, -323.39, 69.21),
			vec3(1698.46, 4924.2, 42.06),
			vec3(-1222.73, -907.1, 12.33),
			vec3(-1487.41, -378.85, 40.16),
			vec3(-2967.86, 391.08, 15.04),
			vec3(1165.84, 2709.44, 38.16),
			vec3(1135.65, -982.51, 46.42),
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
			{ loc = vec3(239.14, -898.64, 29.62), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},



	pooltables = {
		name = 'PoolTables',
		blip = {
			id = 58, colour = 57, scale = 0.8
		}, inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
			{ name = 'burger', price = 15 },
		}, locations = {
			vector3(-326.11, -1004.87, 27.64),
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	minigolf = {
		name = 'GalaxyNightclub',
		blip = {
			id = 121, colour = 27, scale = 0.8
		}, inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
			{ name = 'burger', price = 15 },
		}, locations = {
			vector3(349.22, 280.55, 88.91),
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},


	YouTool = {
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'rope', price = 250 },
			{ name = 'bag', price = 250 },
			{ name = 'bobby_pin', price = 1500 },
			{ name = 'pooch_bag', price = 10 },
			{ name = 'empty_lean_bottle', price = 5 },
			{ name = 'boombox', price = 5000 },
			{ name = 'spray', price = 2000 },
			{ name = 'spray_remover', price = 1000 },
			{ name = 'bandage', price = 2000 },
			
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		}, targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	koi = {
		name = 'koi',
		blip = false,
		 inventory = {
			{ name = 'rice', price = 200 },
			{ name = 'rice_flour', price = 200 },
			{ name = 'rice_noodles', price = 200 },
			{ name = 'rice_paper', price = 200 },
			{ name = 'rice_vinegar', price = 200 },
			{ name = 'sake', price = 200 },
			{ name = 'salad', price = 200 },
			{ name = 'sesame_oil', price = 200 },
			{ name = 'sesame_seeds', price = 200 },
			{ name = 'shelled_peanuts', price = 200 },
			{ name = 'shrimp', price = 200 },
			{ name = 'soba', price = 200 },
			{ name = 'soba_noodles', price = 200 },
			{ name = 'soy_sauce', price = 200 },
			{ name = 'spring_onion', price = 200 },
			{ name = 'spring_rolls', price = 200 },
			{ name = 'sprite', price = 200 },
			{ name = 'sugar', price = 200 },
			{ name = 'sushi', price = 200 },
			{ name = 'sushi_rice', price = 200 },
			{ name = 'tofu', price = 200 },
			{ name = 'turmeric', price = 200 },
			{ name = 'udon', price = 200 },
			{ name = 'udon_noodles', price = 200 },
			{ name = 'wakame', price = 200 },
			{ name = 'wasabi_paste', price = 200 },
			{ name = 'white_cabbage', price = 200 },
			{ name = 'yakitori', price = 200 },
			{ name = 'yellow_pepper', price = 200 },
			{ name = 'red_pepper', price = 200 },
			{ name = 'ramune_watermelon', price = 200 },
			{ name = 'ramune_strawberry', price = 200 },
			{ name = 'ramune_original', price = 200 },
			{ name = 'ramune_lychee', price = 200 },
			{ name = 'potato_starch', price = 200 },
			{ name = 'plate', price = 200 },
			{ name = 'peanut_butter', price = 200 },
			{ name = 'onigiri', price = 200 },
			{ name = 'okonomiyaki_sauce', price = 200 },
			{ name = 'okonomiyaki_mixtures', price = 200 },
			{ name = 'okonomiyaki', price = 200 },
			{ name = 'oil', price = 200 },
			{ name = 'nori', price = 200 },
			{ name = 'mungo_sprouts', price = 200 },
			{ name = 'mugichatea', price = 200 },
			{ name = 'mirin', price = 200 },
			{ name = 'milk', price = 200 },
			{ name = 'mayonese', price = 200 },
			{ name = 'matchatea', price = 200 },
			{ name = 'matcha_swiss_plate', price = 200 },
			{ name = 'matcha_swiss', price = 200 },
			{ name = 'lemon', price = 200 },
			{ name = 'leek', price = 200 },
			{ name = 'kungpao', price = 200 },
			{ name = 'kombucha', price = 200 },
			{ name = 'japanese_cheesecake_plate', price = 200 },
			{ name = 'japanese_cheesecake', price = 200 },
			{ name = 'chocolate', price = 200 },
			{ name = 'chinese_rice_wine', price = 200 },
			{ name = 'chilli', price = 200 },
			{ name = 'chicken_meat', price = 200 },
			{ name = 'gyokuro', price = 200 },
			{ name = 'greentea', price = 200 },
			{ name = 'glass', price = 200 },
			{ name = 'garlic', price = 200 },
			{ name = 'fish_sauce', price = 200 },
			{ name = 'fanta', price = 200 },
			{ name = 'eggs', price = 200 },
			{ name = 'dried_tuna_katsuobushi', price = 200 },
			{ name = 'dorayaki_plate', price = 200 },
			{ name = 'dorayaki', price = 200 },
			{ name = 'dirty_plate', price = 200 },
			{ name = 'dirty_glass', price = 200 },
			{ name = 'dirty_cup', price = 200 },
			{ name = 'cup', price = 200 },
			{ name = 'cucumber', price = 200 },
			{ name = 'coriander', price = 200 },
			{ name = 'coconut_milk', price = 200 },
			{ name = 'cocacola_clear', price = 200 },
			{ name = 'cocacola', price = 200 },
			{ name = 'carrot', price = 200 },
			{ name = 'cane_sugar', price = 200 },
			{ name = 'bunbonambo', price = 200 },
			{ name = 'brocoli', price = 200 },
			{ name = 'brisket', price = 200 },
			{ name = 'beef_leg', price = 200 },
			{ name = 'banhxeo', price = 200 },
			{ name = 'bamboo_skewers', price = 200 },
			{ name = 'bacon', price = 200 },
			{ name = 'avocado', price = 200 },

        }, locations = {
			vec3(-1075.8, -1439.92, -1.42),
			
		}, targets = {
			{ loc = vec3(-1075.76, -1439.97, -1.42), length = 0.6, width = 3.0, heading = 47.68, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	PhoneShop = {
		name = 'PhoneShop',
		blip = {
			id = 606, colour = 27, scale = 0.6
		}, inventory = {
			{ name = 'radio', price = 350 },
			{ name = 'phone', price = 350 },
			{ name = 'boombox_white_large', price = 50000 },
			{ name = 'boombox_red_large', price = 50000 },
			{ name = 'boombox_purple_large', price = 50000 },
			{ name = 'boombox_pink_large', price = 50000 },
			{ name = 'boombox_orange_large', price = 50000 },
			{ name = 'boombox_green_large', price = 50000 },
			{ name = 'boombox_blue_large', price = 50000 },
			{ name = 'boombox_white_medium', price = 25000 },
			{ name = 'boombox_red_medium', price = 25000 },
			{ name = 'boombox_purple_medium', price = 25000 },
			{ name = 'boombox_pink_medium', price = 25000 },
			{ name = 'boombox_orange_medium', price = 25000 },
			{ name = 'boombox_green_medium', price = 25000 },
			{ name = 'boombox_blue_medium', price = 25000 },
			{ name = 'boombox_white_small', price = 15000 },
			{ name = 'boombox_red_small', price = 15000 },
			{ name = 'boombox_purple_small', price = 15000 },
			{ name = 'boombox_pink_small', price = 15000 },
			{ name = 'boombox_orange_small', price = 15000 },
			{ name = 'boombox_green_small', price = 15000 },
			{ name = 'boombox_blue_small', price = 15000 },
			
		}, locations = {
			vec3(-769.01, -610.9, 30.28),
		}, targets = {
			{ loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},


	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 154, colour = 55, scale = 0.8
		}, inventory = {
			
			
			{ name = 'weapon_screwdriver', price = 60000 },
			{ name = 'weapon_rustyshank', price = 68000 },
			{ name = 'WEAPON_KNIFE', price = 100000 },
			{ name = 'WEAPON_HATCHET', price = 75000 },
			{ name = 'weapon_kitchenknife', price = 90000 },
			
		}, locations = {
			vec3(-660.81, -938.49, 21.83),
			vec3(813.71, -2153.49, 29.62),
			vec3(1695.83, 3757.01, 34.71),
			vec3(-328.18, 6080.83, 31.45),
			vec3(248.77, -50.03, 69.94),
			vec3(16.81, -1109.45, 29.8),
			vec3(2566.46, 297.55, 108.73),
			vec3(-1114.64, 2696.93, 18.55),
			vec3(842.89, -1030.12, 28.19),
			vec3(-1309.03, -392.81, 36.7),
			vec3(-3168.98, 1085.93, 20.84),
		}, targets = {
			{ loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			{ loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			{ loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			{ loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			{ loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			{ loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			{ loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			{ loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

	-- PoliceArmoury = {
	-- 	name = 'Police Armoury',
	-- 	groups = shared.police,
	-- 	blip = {
	-- 		id = 110, colour = 84, scale = 0.8
	-- 	}, inventory = {
	-- 		{ name = 'ammo-9', price = 5, },
	-- 		{ name = 'ammo-rifle', price = 5, },
	-- 		{ name = 'WEAPON_FLASHLIGHT', price = 0 },
	-- 		{ name = 'WEAPON_NIGHTSTICK', price = 0 },
	-- 		{ name = 'handcuffs', price = 0 },
	-- 		{ name = 'WEAPON_COMBATPISTOL', price = 0, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
	-- 		{ name = 'WEAPON_CARBINERIFLE', price = 0, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
	-- 		{ name = 'WEAPON_STUNGUN', price = 0, metadata = { registered = true, serial = 'POL'} }
	-- 	}, locations = {
	-- 		vec3(486.94, -995.81, 30.69)
	-- 	}, targets = {
	-- 		{ loc = vec3(453.21, -980.03, 30.68), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
	-- 	}
	-- },

	Medicine = {
		name = 'Medicine Cabinet',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'medikit', price = 26 },
			{ name = 'bandage', price = 5 }
		}, locations = {
			vec3(306.3687, -601.5139, 43.28406)
		}, targets = {

		}
	},

	BlackMarketArms = {
		name = 'Black Market (Arms)',
		inventory = {
			{ name = 'rope', price = 250 },
			{ name = 'drill', price = 3250 },
			{ name = 'cutter', price = 4250 },
			{ name = 'bag', price = 250 },
			{ name = 'big_drill', price = 4500 },
			{ name = 'thermite', price = 4500 },
			{ name = 'hack_usb', price = 4500 },
			{ name = 'hack_laptop', price = 4500 },
			{ name = 'bobby_pin', price = 1500 },
			{ name = 'bomb', price = 2500 },
			{ name = 'c4_bomb', price = 2500 },
			{ name = 'big_bomb', price = 2500 },
			{ name = 'contracts_tablet', price = 500000 },
			{ name = 'WEAPON_MACHETE', price = 150000 },

		}, locations = {
			vec3(-1253.61, -168.25, 40.41)
		}, targets = {

		}
	},

	BlackMarket1 = {
		name = 'Black Market',
		inventory = {
			{ name = 'WEAPON_PISTOL91', price = 1200000 },
			{ name = 'WEAPON_KNRDRUM', price = 4000000 },
			{ name = 'ammo-91', price = 1000 },

		}, locations = {
			vec3(-1501.07, -294.87, 48.75)
		}, targets = {

		}
	},

	BlackMarket2 = {
		name = 'Black Market',
		inventory = {
			{ name = 'WEAPON_TANSTICK', price = 1200000 },
			{ name = 'WEAPON_LOWROUND', price = 1200000 },
			{ name = 'WEAPON_PISTOL9', price = 2500000 },
			{ name = 'ammo-91', price = 1000 },

		}, locations = {
			vec3(-761.82, 351.51, 88.0)
		}, targets = {

		}
	},

	BlackMarket3 = {
		name = 'Black Market',
		inventory = {
			{ name = 'WEAPON_DRUMSWITCH', price = 1200000 },
			{ name = 'WEAPON_MASHEEN', price = 1200000 },
			{ name = 'ammo-91', price = 1000 },

		}, locations = {
			vec3(474.2, -635.8, 25.65)
		}, targets = {

		}
	},
	




	VendingMachineDrinks = {
		name = 'Vending Machine',
		inventory = {
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	}

}




