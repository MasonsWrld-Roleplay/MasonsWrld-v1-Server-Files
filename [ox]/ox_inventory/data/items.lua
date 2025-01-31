return {

    ['cigarrete'] = {
        label = 'Cigarrete',
        weight = 100,
        stack = true,
        close = true,
        consume = 0,
    },

            


    ['wire_cutter'] = {
        label = 'cutter',
        weight = 100,
        stack = true,
        close = true,
        consume = 0,
    },

            

    ['donut'] = {
        label = 'Donut',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_amb_donut`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Donut',
        },
    },
            

    ['chips'] = {
        label = 'Chips',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_food_cb_chips`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Chips',
        },
    },
            

    ['pizza_ham'] = {
        label = 'Pizza Ham',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_food_cb_chips`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Fries',
        },
    },
            

    ['fries'] = {
        label = 'Fries',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_food_cb_chips`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Fries',
        },
    },
            

    ['coffee'] = {
        label = 'Coffee',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

    ['ecola'] = {
        label = 'Ecola',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

    ['ecola_light'] = {
        label = 'Ecola light',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

    ['sludgie'] = {
        label = 'Sludgie',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			['basic_rod'] = {
				label = 'Fishing rod',
				stack = false,
				weight = 250
			},
		
			['graphite_rod'] = {
				label = 'Graphite rod',
				stack = false,
				weight = 350
			},
		
			['titanium_rod'] = {
				label = 'Titanium rod',
				stack = false,
				weight = 450
			},
		
			['worms'] = {
				label = 'Worms',
				weight = 10
			},
		
			['artificial_bait'] = {
				label = 'Artificial bait',
				weight = 30
			},
		
			['anchovy'] = {
				label = 'Anchovy',
				weight = 20
			},
		
			['grouper'] = {
				label = 'Grouper',
				weight = 3500
			},
		
			['haddock'] = {
				label = 'Haddock',
				weight = 500
			},
		
			['mahi_mahi'] = {
				label = 'Mahi Mahi',
				weight = 3500
			},
		
			['piranha'] = {
				label = 'Piranha',
				weight = 1500
			},
		
			['red_snapper'] = {
				label = 'Red Snapper',
				weight = 2500
			},
		
			['salmon'] = {
				label = 'Salmon',
				weight = 1000
			},
		
			['shark'] = {
				label = 'Shark',
				weight = 7500
			},
		
			['trout'] = {
				label = 'Trout',
				weight = 750
			},
		
			['tuna'] = {
				label = 'Tuna',
				weight = 10000
			},
		

			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['ibuprofen'] = {
		label = 'Ibuprofen',
		weight = 80,
		client = {
			event = "consumables:client:UseIbuprofen",
		}
	},

	['ifak'] = {
		label = 'IFAK',
		weight = 80,
		client = {
			event = "consumables:client:UseIfak",
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["chick_n_strips"] = {
		label = "Chick-n-Strips",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chick_n_strips.png",
		}
	},

	["suspension5"] = {
		label = "Tier 5 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension5.png",
		}
	},

	["haddock"] = {
		label = "Haddock",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "haddock.png",
		}
	},

	["deluxe_sandwich"] = {
		label = "Deluxe Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "deluxe_sandwich.png",
		}
	},

	["hydrochloricacid"] = {
		label = "Hydrochloric Acid",
		weight = 1500,
		stack = true,
		close = false,
		description = "Disolves food pretty well..",
		client = {
			image = "hydrochloricacid.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["weed_zkittlez_crop"] = {
		label = "Zkittlez: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest zkittlez flower!",
		client = {
			image = "weed_zkittlez_crop.png",
		}
	},

	["rodeo_burger"] = {
		label = "Rodeo Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rodeo_burger.png",
		}
	},

	["blue_tomyz"] = {
		label = "Blue Tomyz",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blue_tomyz.png",
		}
	},

	["slakedlime"] = {
		label = "Slaked Lime",
		weight = 1000,
		stack = true,
		close = true,
		description = "Supposed to be used in preparation of dry mixer for painting and white washing.. However..",
		client = {
			image = "slakedlime.png",
		}
	},

	["burnerphone"] = {
		label = "Burner Phone",
		weight = 250,
		stack = true,
		close = true,
		description = "A burner phone, what do you need one of these for?",
		client = {
			image = "burnerphone.png",
		}
	},

	["aceticacid"] = {
		label = "Acetic Acid",
		weight = 1000,
		stack = true,
		close = true,
		description = "Acetic Acid is a clear colourless liquid which has a pungent, vinegar-like odour.",
		client = {
			image = "aceticacid.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["weed_ogkush_seed_f"] = {
		label = "OG-Kush: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized og-kush seed.",
		client = {
			image = "weed_ogkush_seed_f.png",
		}
	},

	["mofo_fantasia"] = {
		label = "Adios Mofo Fantasia",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "mofo_fantasia.png",
		}
	},

	["necklace_dogtag"] = {
		label = "Necklace Dogtag",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "necklace_dogtag.png",
		}
	},

	["icedream_cone"] = {
		label = "Icedream Cone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icedream_cone.png",
		}
	},

	["iced_macchiatto"] = {
		label = "ICED MACCHIATO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "iced_macchiatto.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["cheeseburger_king_jr"] = {
		label = "Cheeseburger King Jr Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheeseburger_king_jr.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["suspension1"] = {
		label = "Tier 1 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension1.png",
		}
	},

	["oreoz_joint"] = {
		label = "Oreoz Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oreoz_joint.png",
		}
	},

	["gold_uzi"] = {
		label = "Gold Uzi",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_uzi.png",
		}
	},

	["raw_cone_king"] = {
		label = "Raw Cone King",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "raw_cone_king.png",
		}
	},

	["buffalo_ranch_fries"] = {
		label = "BUFFALO RANCH FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "buffalo_ranch_fries.png",
		}
	},

	["spoiler"] = {
		label = "Vehicle Spoiler",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["ether_joint"] = {
		label = "Ether Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ether_joint.png",
		}
	},

	["cocaleaf"] = {
		label = "Cocaine Leaf",
		weight = 200,
		stack = true,
		close = false,
		description = "Makes that premium nose candy!",
		client = {
			image = "cocaleaf.png",
		}
	},

	["cables1"] = {
		label = "Tier 1 Battery Cables",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cables1.png",
		}
	},

	["memphis_bbq_chicken"] = {
		label = "Memphis BBQ Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "memphis_bbq_chicken.png",
		}
	},

	["gary_payton"] = {
		label = "Gary Payton",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gary_payton.png",
		}
	},

	["iced_cappuccino"] = {
		label = "ICED CAPPUCCINO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "iced_cappuccino.png",
		}
	},

	["xenonsrose"] = {
		label = "Pink Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsrose.png",
		}
	},

	["cinnamon_twists"] = {
		label = "Cinnamon Twists",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cinnamon_twists.png",
		}
	},

	["weed_amnesia_crop"] = {
		label = "Amnesia: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest amnesia flower!",
		client = {
			image = "weed_amnesia_crop.png",
		}
	},

	["double_cheeseburger"] = {
		label = "Double Cheeseburger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "double_cheeseburger.png",
		}
	},

	["toolbox"] = {
		label = "Toolbox",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for Performance part removal",
		client = {
			image = "toolbox.png",
		}
	},

	["vanilla_shake"] = {
		label = "Vanilla Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vanilla_shake.png",
		}
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},

	["chicken_fries"] = {
		label = "9 pc Chicken Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_fries.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["livery"] = {
		label = "Livery Roll",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["d_fruit_punch"] = {
		label = "Fruit Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "d_fruit_punch.png",
		}
	},

	["crispy_chicken_sandwich"] = {
		label = "Crispy Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crispy_chicken_sandwich.png",
		}
	},

	["graphite_rod"] = {
		label = "Graphite rod",
		weight = 350,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "graphite_rod.png",
		}
	},

	["cake_mix_joint"] = {
		label = "Cake Mix Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cake_mix_joint.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["chain_m"] = {
		label = "Chain M",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_m.png",
		}
	},

	["red_stone"] = {
		label = "Red Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_stone.png",
		}
	},

	["diagold_earrings"] = {
		label = "Diagold Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diagold_earrings.png",
		}
	},

	["customplate"] = {
		label = "Customized Plates",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["anklemonitor"] = {
		label = "Ankle Monitor",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "anklemonitor.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["trowel"] = {
		label = "Trowel",
		weight = 1000,
		stack = true,
		close = true,
		description = "Small handheld garden shovel",
		client = {
			image = "trowel.png",
		}
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["tweezers"] = {
		label = "Tweezers",
		weight = 50,
		stack = true,
		close = true,
		description = "For picking out bullets",
		client = {
			image = "tweezers.png",
		}
	},

	["cookie_craze"] = {
		label = "Cookie Craze",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cookie_craze.png",
		}
	},

	["razorblade"] = {
		label = "Razor Blade",
		weight = 10,
		stack = true,
		close = true,
		description = "A sharp razorblade, be careful not to cut yourself!",
		client = {
			image = "razorblade.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest ak47 flower!",
		client = {
			image = "weed_ak47.png",
		}
	},

	["chocolate_chunk_brownie"] = {
		label = "TRIPLE CHOCOLATE CHUNK BROWNIE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_chunk_brownie.png",
		}
	},

	["extra_vagan_zza"] = {
		label = "Extra Vagan ZZa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "extra_vagan_zza.png",
		}
	},

	["hamburger_king_jr"] = {
		label = "Hamburger King Jr. Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hamburger_king_jr.png",
		}
	},

	["morphine30"] = {
		label = "Morphine 30MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "morphine30.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["weed_skunk_seed_m"] = {
		label = "Skunk: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male skunk seed!",
		client = {
			image = "weed_skunk_seed_m.png",
		}
	},

	["bottle"] = {
		label = "Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Stolen Artwork",
		client = {
			image = "vanbottle.png",
		}
	},

	["xenonsbleu"] = {
		label = "Blue Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsbleu.png",
		}
	},

	["seat"] = {
		label = "Seat Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["mc_combo_chicken"] = {
		label = "Combo Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_combo_chicken.png",
		}
	},

	["italian_sandwich"] = {
		label = "Italian Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "italian_sandwich.png",
		}
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["chicken_caesar_salad"] = {
		label = "Chicken Caesar Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_caesar_salad.png",
		}
	},

	["crispy_chicken_staco"] = {
		label = "Crispy Chicken Soft Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crispy_chicken_staco.png",
		}
	},

	["original_chicken_sandwich"] = {
		label = "Original Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "original_chicken_sandwich.png",
		}
	},

	["boneless_meal_deal"] = {
		label = "Boneless Meal Deal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "boneless_meal_deal.png",
		}
	},

	["snow_man"] = {
		label = "Snow Man",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "snow_man.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["chain_ls"] = {
		label = "Chain LS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_ls.png",
		}
	},

	["skull_bracelet"] = {
		label = "Skull Bracelet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "skull_bracelet.png",
		}
	},

	["hot_fudge_sundae"] = {
		label = "Hot Fudge Sundae",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hot_fudge_sundae.png",
		}
	},

	["medium_sweet_tea"] = {
		label = "Medium Sweet Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_sweet_tea.png",
		}
	},

	["marathon_joint"] = {
		label = "Marathon Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "marathon_joint.png",
		}
	},

	["crunchwrap_supreme"] = {
		label = "Crunchwrap Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crunchwrap_supreme.png",
		}
	},

	["cheese_fries"] = {
		label = "CHEESE FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheese_fries.png",
		}
	},

	["meal_for_two"] = {
		label = "15PC MEAL FOR 2",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meal_for_two.png",
		}
	},

	["jalapeno_cheddar_bites"] = {
		label = "Jalapeno Cheddar Bites",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jalapeno_cheddar_bites.png",
		}
	},

	["egg_cheese_muffin"] = {
		label = "Egg & Cheese Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "egg_cheese_muffin.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["cheetah_piss_joint"] = {
		label = "Cheetah Piss Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheetah_piss_joint.png",
		}
	},

	["foil_poker"] = {
		label = "Foil Poker",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "foil_poker.png",
		}
	},

	["grilled_nuggets"] = {
		label = "Grilled Nuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grilled_nuggets.png",
		}
	},

	["tenders_medium_combo"] = {
		label = "Tenders Medium Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tenders_medium_combo.png",
		}
	},

	["zushi_joint"] = {
		label = "Zushi Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "zushi_joint.png",
		}
	},

	["packaged_tea"] = {
		label = "PACKAGED TEA",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "packaged_tea.png",
		}
	},

	["mc_nuggets_happy_meal"] = {
		label = "McNuggets Happy Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_nuggets_happy_meal.png",
		}
	},

	["ether"] = {
		label = "Petroleum Ether",
		weight = 1000,
		stack = true,
		close = true,
		description = "Petroleum ether is the petroleum fraction consisting of aliphatic hydrocarbons, commonly used as a laboratory solvent.",
		client = {
			image = "ether.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mechanic tools",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["xenonsvert"] = {
		label = "Green Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsvert.png",
		}
	},

	["red_beans_rice"] = {
		label = "Regular Red Beans & Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_beans_rice.png",
		}
	},

	["dunkin_hash_browns"] = {
		label = "HASH BROWNS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_hash_browns.png",
		}
	},

	["hood"] = {
		label = "Vehicle Hood",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["kale_crunch_side"] = {
		label = "Kale Crunch Side",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kale_crunch_side.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["cement"] = {
		label = "Cement",
		weight = 1000,
		stack = true,
		close = true,
		description = "Just a regular bag of builders cement.",
		client = {
			image = "cement.png",
		}
	},

	["weed_purplehaze_joint"] = {
		label = "Purple-Haze: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest purple-haze!",
		client = {
			image = "weed_purplehaze_joint.png",
		}
	},

	["van_necklace"] = {
		label = "vannecklace",
		weight = 100,
		stack = true,
		close = true,
		description = "Stolen Artwork",
		client = {
			image = "van_necklace.png",
		}
	},

	["weed_gelato_seed_m"] = {
		label = "Gelato: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male gelato seed!",
		client = {
			image = "weed_gelato_seed_m.png",
		}
	},

	["weed_purple-haze_crop"] = {
		label = "Purple-Haze: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest purple-haze flower!",
		client = {
			image = "weed_purple-haze_crop.png",
		}
	},

	["t_pepsi_max"] = {
		label = "Pepsi Max",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "t_pepsi_max.png",
		}
	},

	["weed_ak47_seed_f"] = {
		label = "AK47: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized ak47 seed.",
		client = {
			image = "weed_ak47_seed_f.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["pig_angel"] = {
		label = "Angel Pig",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "pig_angel.png",
		}
	},

	["moon_rock"] = {
		label = "Moon Rock",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "moon_rock.png",
		}
	},

	["d_fanta_orange"] = {
		label = "Fanta Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "d_fanta_orange.png",
		}
	},

	["marshmallow_og"] = {
		label = "Marshmallow OG",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "marshmallow_og.png",
		}
	},

	["biscotti"] = {
		label = "Biscotti",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "biscotti.png",
		}
	},

	["sausage_biscuit"] = {
		label = "Sausage Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sausage_biscuit.png",
		}
	},

	["transmission4"] = {
		label = "Tier 4 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission4.png",
		}
	},

	["fishtaco"] = {
		label = "Fish Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fishtaco.png",
		}
	},

	["munchkins_donut_hole"] = {
		label = "MUNCHKINS DONUT HOLE TREATS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "munchkins_donut_hole.png",
		}
	},

	["gold"] = {
		label = "Gold Bar",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["bubbles"] = {
		label = "Bubbles",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "bubbles.png",
		}
	},

	["brown_scramble_burrito"] = {
		label = "Brown Scramble Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "brown_scramble_burrito.png",
		}
	},

	["salmon_caesar_salad"] = {
		label = "Salmon Caesar Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "salmon_caesar_salad.png",
		}
	},

	["group_pack"] = {
		label = "WINGS & THIGH BITES GROUP PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "group_pack.png",
		}
	},

	["shrimp_and_crab_dip"] = {
		label = "Shrimp & Crab Dip",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shrimp_and_crab_dip.png",
		}
	},

	["goldhex_earrings"] = {
		label = "GoldHex Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldhex_earrings.png",
		}
	},

	["glazed_salmon"] = {
		label = "Glazed Salmon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "glazed_salmon.png",
		}
	},

	["noscan"] = {
		label = "Empty NOS Bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "An Empty bottle of NOS",
		client = {
			image = "noscan.png",
		}
	},

	["weed_pot"] = {
		label = "Weed Pot",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_pot.png",
		}
	},

	["mc_flurry_cookies"] = {
		label = "McFlurry Cookies",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_flurry_cookies.png",
		}
	},

	["chicken_and_waffles"] = {
		label = "Chicken & Waffles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_and_waffles.png",
		}
	},

	["mc_flurry_candies"] = {
		label = "McFlurry Candies",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_flurry_candies.png",
		}
	},

	["d_dr_pepper"] = {
		label = "Dr Pepper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "d_dr_pepper.png",
		}
	},

	["weed_skunk_crop"] = {
		label = "Skunk: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest skunk flower!",
		client = {
			image = "weed_skunk_crop.png",
		}
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["casino_earrings"] = {
		label = "Casino Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "casino_earrings.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["peach_milkshake"] = {
		label = "Peach Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "peach_milkshake.png",
		}
	},

	["drives2"] = {
		label = "Tier 2 Drive Shaft",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drives2.png",
		}
	},

	["heroin_1oz"] = {
		label = "Ounce of Heroin",
		weight = 280,
		stack = true,
		close = true,
		description = "A large amount of heroin.",
		client = {
			image = "heroin_1oz.png",
		}
	},

	["large_thigh_bites"] = {
		label = "LARGE THIGH BITES",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "large_thigh_bites.png",
		}
	},

	["sedative"] = {
		label = "Sedative",
		weight = 20,
		stack = true,
		close = true,
		description = "If needed, this will sedate patient",
		client = {
			image = "sedative.png",
		}
	},

	["cables3"] = {
		label = "Tier 3 Battery Cables",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cables3.png",
		}
	},

	["weed_gelato_crop"] = {
		label = "Gelato: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest gelato flower!",
		client = {
			image = "weed_gelato_crop.png",
		}
	},

	["salmon"] = {
		label = "Salmon",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "salmon.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["spicy_southwest_salad"] = {
		label = "Spicy Southwest Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spicy_southwest_salad.png",
		}
	},

	["surf_turf_combo"] = {
		label = "Surf & Turf Small Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "surf_turf_combo.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["coke_1oz"] = {
		label = "Ounce of Cocaine",
		weight = 280,
		stack = true,
		close = true,
		description = "A ounce of the finest nose candy!",
		client = {
			image = "coke_1oz.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["tropical_chicken_salad"] = {
		label = "Tropical Chicken Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tropical_chicken_salad.png",
		}
	},

	["stuffed_bagel_minis"] = {
		label = "STUFFED BAGEL MINIS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "stuffed_bagel_minis.png",
		}
	},

	["pigeonmeat"] = {
        label = "Pigeon Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Delicious pigeon meat for your culinary adventures.",
    },
    ["pigeonfeather"] = {
        label = "Pigeon Feather",
        weight = 1000,
        stack = true,
        close = true,
        description = "A soft and lightweight feather from a pigeon.",
    },
    ["crowmeat"] = {
        label = "Crow Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Tasty crow meat, perfect for daring gourmets.",
    },
    ["crowfeather"] = {
        label = "Crow Feather",
        weight = 1000,
        stack = true,
        close = true,
        description = "A sleek and dark feather from a crow.",
    },
    ["seagullmeat"] = {
        label = "Seagull Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Savory seagull meat, a delicacy among fishermen.",
    },
    ["seagullfeather"] = {
        label = "Seagull Feather",
        weight = 1000,
        stack = true,
        close = true,
        description = "A graceful and light feather from a seagull.",
    },
    ["cormorantmeat"] = {
        label = "Cormorant Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Meaty cormorant meat, a rare find for adventurous eaters.",
    },
    ["cormorantbeak"] = {
        label = "Cormorant Beak",
        weight = 1000,
        stack = true,
        close = true,
        description = "A sturdy and pointed beak from a cormorant.",
    },
    ["deermeat"] = {
        label = "Deer Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Succulent deer meat, a favorite among hunters.",
    },
    ["deerhorn"] = {
        label = "Deer Horn",
        weight = 1000,
        stack = true,
        close = true,
        description = "A majestic horn from a deer, prized for its beauty.",
    },
    ["rabbitmeat"] = {
        label = "Rabbit Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Tender rabbit meat, perfect for stews and roasts.",
    },
    ["rabbitskin"] = {
        label = "Rabbit Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "A soft and supple skin from a rabbit, ideal for crafting.",
    },
    ["ratmeat"] = {
        label = "Rat Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Edible rat meat, a survivalist's choice in desperate times.",
    },
    ["pigmeat"] = {
        label = "Pig Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Juicy pig meat, a staple in many hearty meals.",
    },
    ["pigskin"] = {
        label = "Pig Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Thick and durable pig skin, useful for crafting leather goods.",
    },
    ["coyotemeat"] = {
        label = "Coyote Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Lean and gamey coyote meat, favored by wilderness enthusiasts.",
    },
    ["coyoteskin"] = {
        label = "Coyote Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Tough and weather-resistant coyote skin, perfect for outdoor gear.",
    },
    ["coguarmeat"] = {
        label = "Cougarmeat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Exotic cougarmeat, a delicacy for adventurous palates.",
    },
    ["coguarskin"] = {
        label = "Cougar Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Supple cougar skin, highly valued in the fashion industry.",
    },
    ["boarmeat"] = {
        label = "Boar Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Hearty boar meat, a popular choice among hunters and chefs.",
    },
    ["boarskin"] = {
        label = "Boar Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Tough boar skin, excellent for crafting rugged goods.",
    },
    ["snakemeat"] = {
        label = "Snake Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Savory snake meat, a delicacy in some cultures.",
    },
    ["boarhorn"] = {
        label = "Boar Horn",
        weight = 1000,
        stack = true,
        close = true,
        description = "A large and impressive horn from a boar.",
    },
    ["snakeskin"] = {
        label = "Snake Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Smooth and patterned snake skin, used for various crafts.",
    },
    ["hawkmeat"] = {
        label = "Hawk Meat",
        weight = 1000,
        stack = true,
        close = true,
        description = "Lean and gamey hawk meat, a rare delicacy among hunters.",
    },
    ["hawkskin"] = {
        label = "Hawk Skin",
        weight = 1000,
        stack = true,
        close = true,
        description = "Beautiful hawk skin, prized for its unique markings.",
    },
    ["hawkpeak"] = {
        label = "Hawk Peak",
        weight = 1000,
        stack = true,
        close = true,
        description = "A majestic feather from a hawk's peak, a symbol of freedom.",
    },
	

	["world_famous_fries"] = {
		label = "World Famous Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "world_famous_fries.png",
		}
	},

	["homestyle_mac_cheese"] = {
		label = "Regular Homestyle Mac & Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "homestyle_mac_cheese.png",
		}
	},

	["drug_grinder"] = {
		label = "Grinder",
		weight = 150,
		stack = true,
		close = false,
		description = "A grinder for grinding herbs.. or other things..",
		client = {
			image = "drug_grinder.png",
		}
	},

	["bs_sprite"] = {
		label = "Medium Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_sprite.png",
		}
	},

	["hex4you_earrings"] = {
		label = "Hex4You Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hex4you_earrings.png",
		}
	},

	["w_dr_pepper"] = {
		label = "Dr Pepper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_dr_pepper.png",
		}
	},

	["hexdia_earrings"] = {
		label = "HexDia Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hexdia_earrings.png",
		}
	},

	["exhaust"] = {
		label = "Vehicle Exhaust",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["paris_fog"] = {
		label = "Paris Fog",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "paris_fog.png",
		}
	},

	["cookie_shake"] = {
		label = "OREO Cookie Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cookie_shake.png",
		}
	},

	["wing_combo"] = {
		label = "LARGE 10 PC WING COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wing_combo.png",
		}
	},

	["louisiana_voodoo_fries"] = {
		label = "LOUISIANA VOODOO FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "louisiana_voodoo_fries.png",
		}
	},

	["weed_whitewidow"] = {
		label = "White-Widow: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest white-widow flower!",
		client = {
			image = "weed_whitewidow.png",
		}
	},

	["manual"] = {
		label = "Manual Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "Manual Transmission change for vehicles",
		client = {
			image = "manual.png",
		}
	},

	["peppermint_shake"] = {
		label = "Trifecta Blonde Peppermint Shake",
		weight = 10,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "peppermint_shake.png",
		}
	},

	["suspension2"] = {
		label = "Tier 2 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension2.png",
		}
	},

	["drifttires"] = {
		label = "Drift Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["mc_dr_pepper"] = {
		label = "Dr Pepper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_dr_pepper.png",
		}
	},

	["hot_coals"] = {
		label = "Hot Coals",
		weight = 300,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "hot_coals.png",
		}
	},

	["sparkplugs"] = {
		label = "Spark Plugs",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparkplugs.png",
		}
	},

	["strawberry_watermelon_slushie"] = {
		label = "Strawberry Watermelon Slushie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_watermelon_slushie.png",
		}
	},

	["chicken_carbonara"] = {
		label = "Chicken Carbonara",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_carbonara.png",
		}
	},

	["thigh_bites_combo"] = {
		label = "LARGE THIGH BITES COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "thigh_bites_combo.png",
		}
	},

	["pearls_coffee"] = {
		label = "Pearls Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pearls_coffee.png",
		}
	},

	["medium_fanta_strawberry"] = {
		label = "Medium Fanta Strawberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_fanta_strawberry.png",
		}
	},

	["jefe_joint"] = {
		label = "Jefe Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jefe_joint.png",
		}
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},

	["patron_margarita"] = {
		label = "Patron Margarita",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "patron_margarita.png",
		}
	},

	["lobster_bisque"] = {
		label = "Lobster Bisque",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lobster_bisque.png",
		}
	},

	["mimosa"] = {
		label = "Mimosa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mimosa.png",
		}
	},

	["gelatti"] = {
		label = "Gelatti",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gelatti.png",
		}
	},

	["khalifa_kush"] = {
		label = "Khalifa Kush",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "khalifa_kush.png",
		}
	},

	["xenonsdefault"] = {
		label = "White Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsdefault.png",
		}
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["50_below"] = {
		label = "50 Below Nirvana Dokha",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "50_below.png",
		}
	},

	["chicken_bundle"] = {
		label = "11Pc Chicken Bundle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_bundle.png",
		}
	},

	["get_figgy"] = {
		label = "Get Figgy",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "get_figgy.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["weed_amnesia_seed_m"] = {
		label = "Amnesia: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male amnesia seed!",
		client = {
			image = "weed_amnesia_seed_m.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["anchovy"] = {
		label = "Anchovy",
		weight = 20,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "anchovy.png",
		}
	},

	["weed_amnesia_joint"] = {
		label = "Amnesia: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest amnesia!",
		client = {
			image = "weed_amnesia_joint.png",
		}
	},

	["cake_mix"] = {
		label = "Cake Mix",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cake_mix.png",
		}
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["roof"] = {
		label = "Vehicle Roof",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["family_bundle_classic"] = {
		label = "Family Bundle Classic",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "family_bundle_classic.png",
		}
	},

	["chocolate_chunk_cookie"] = {
		label = "Chocolate Chunk Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_chunk_cookie.png",
		}
	},

	["liquidheroin"] = {
		label = "Liquid Heroin",
		weight = 10,
		stack = true,
		close = true,
		description = "Heroin. Destroying lives since 1898!",
		client = {
			image = "liquidheroin.png",
		}
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},

	["boombox"] = {
		label = "boombox",
		weight = 1000,
		stack = true,
		close = true,
		description = "boombox",
		client = {
			image = "boombox.png",
		}
	},

	['spray'] = {
        label = 'Spray',
        weight = 250,
        close = true,
        consume = 0,
        client = {},
        server = {
            export = 'rcore_spray.spray',
        },
    },
    ['spray_remover'] = {
        label = 'Spray Remover',
        weight = 250,
        close = true,
        consume = 0,
        client = {},
        server = {
            export = 'rcore_spray.spray_remover',
        },
    },

	["stancekit"] = {
		label = "stancekit",
		weight = 1000,
		stack = true,
		close = true,
		description = "stancekit",
		client = {
			image = "stancekit.png",
		}
	},

	["questing_mouse"] = {
		label = "Quest Mouse",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "questing_mouse.png",
		}
	},

	["pink_sandy"] = {
		label = "Pink Sandy",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pink_sandy.png",
		}
	},

	["detector"] = {
		label = "Detector",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "detector.png",
		}
	},

	["soft_serve_cup"] = {
		label = "Soft Serve Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soft_serve_cup.png",
		}
	},

	["headlights"] = {
		label = "Xenon Headlights",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "headlights.png",
		}
	},

	["t_diet_pepsi"] = {
		label = "Diet Pepsi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "t_diet_pepsi.png",
		}
	},

	["oysters_half_shell"] = {
		label = "Oysters On the Half Shell",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oysters_half_shell.png",
		}
	},

	["suspension3"] = {
		label = "Tier 3 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension3.png",
		}
	},

	["underglow_controller"] = {
		label = "Neon Controller",
		weight = 0,
		stack = true,
		close = true,
		description = "RGB LED Vehicle Remote",
		client = {
			image = "underglow_controller.png",
		}
	},

	["buffalo_chicken_strips"] = {
		label = "Buffalo Chicken Strips",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "buffalo_chicken_strips.png",
		}
	},

	["drives1"] = {
		label = "Tier 1 Drive Shaft",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drives1.png",
		}
	},

	["xenonsbleuelect"] = {
		label = "Electric Blue Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsbleuelect.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["morphine"] = {
		label = "Morphine",
		weight = 10,
		stack = true,
		close = true,
		description = "Morphine. Good for pain but also a good time!",
		client = {
			image = "morphine.png",
		}
	},

	["froties"] = {
		label = "Froties",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "froties.png",
		}
	},

	["coals"] = {
		label = "Shisha Coals",
		weight = 300,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "coals.png",
		}
	},

	["dunkin_americano"] = {
		label = "AMERICANO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_americano.png",
		}
	},

	["shark_boi"] = {
		label = "Shark Boi",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "shark_boi.png",
		}
	},

	["pizza_deluxe"] = {
		label = "Pizza Deluxe",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pizza_deluxe.png",
		}
	},

	["heroinbase"] = {
		label = "Heroin Base",
		weight = 1000,
		stack = true,
		close = true,
		description = "Heroin base. Refine this into heroin powder.",
		client = {
			image = "heroinbase.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["cutter"] = {
		label = "cutter",
		weight = 5,
		stack = true,
		close = false,
		description = "Cutter",
		client = {
			image = "cutter.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["t_seven_up"] = {
		label = "Seven Up",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "t_seven_up.png",
		}
	},

	["cuff"] = {
		label = "Cuff",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "cuff.png",
		}
	},

	["pirckly_pear_joint"] = {
		label = "Pirckly Pear Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pirckly_pear_joint.png",
		}
	},

	["sun_apple_juice"] = {
		label = "Capri Sun Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sun_apple_juice.png",
		}
	},

	["strawberry_banana_crepes"] = {
		label = "Strawberry Banana Crepes",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_banana_crepes.png",
		}
	},

	["rope"] = {
		label = "Rope",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "rope.png",
		}
	},

	["mickey_mouse"] = {
		label = "Mickey Mouse",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "mickey_mouse.png",
		}
	},

	["ps_sprite"] = {
		label = "Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ps_sprite.png",
		}
	},

	["paintcan"] = {
		label = "Vehicle Spray Can",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["egg_normous_burrito"] = {
		label = "Egg Normous Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "egg_normous_burrito.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["basic_rod"] = {
		label = "Fishing rod",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "basic_rod.png",
		}
	},

	["apple_juice"] = {
		label = "Honest Kids Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_juice.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "carbattery.png",
		}
	},

	["no_99"] = {
		label = "NO 99",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "no_99.png",
		}
	},

	["crowbar"] = {
		label = "Crowbar",
		weight = 5,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "crowbar.png",
		}
	},

	["sparetire"] = {
		label = "Spare Tire",
		weight = 0,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "sparetire.png",
		}
	},

	["cheetah_piss"] = {
		label = "Cheetah Piss",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheetah_piss.png",
		}
	},

	["fries_grande"] = {
		label = "Fries Grande",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fries_grande.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},

	["water_jerrycan"] = {
		label = "Water Jerrycan",
		weight = 3500,
		stack = true,
		close = false,
		description = "Water from a tanker.. it could be a dirty but who cares..",
		client = {
			image = "water_jerrycan.png",
		}
	},

	["barqs_diet_beer"] = {
		label = "Medium Diet Barqs Root Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "barqs_diet_beer.png",
		}
	},

	["sangria_lemonade"] = {
		label = "Sangria Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sangria_lemonade.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},

	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
		client = {
			image = "veh_armor.png",
		}
	},

	["c4_bomb"] = {
		label = "C4",
		weight = 100,
		stack = false,
		close = true,
		description = "0x0x",
		client = {
			image = "weapon_stickybomb.png",
		}
	},

	['basic_rod'] = {
		label = 'Fishing rod',
		stack = false,
		weight = 250
	},

	['graphite_rod'] = {
		label = 'Graphite rod',
		stack = false,
		weight = 350
	},

	['titanium_rod'] = {
		label = 'Titanium rod',
		stack = false,
		weight = 450
	},

	['worms'] = {
		label = 'Worms',
		weight = 10
	},

	['artificial_bait'] = {
		label = 'Artificial bait',
		weight = 30
	},

	['anchovy'] = {
		label = 'Anchovy',
		weight = 20
	},

	['grouper'] = {
		label = 'Grouper',
		weight = 3500
	},

	['haddock'] = {
		label = 'Haddock',
		weight = 500
	},

	['mahi_mahi'] = {
		label = 'Mahi Mahi',
		weight = 3500
	},

	['piranha'] = {
		label = 'Piranha',
		weight = 1500
	},

	['red_snapper'] = {
		label = 'Red Snapper',
		weight = 2500
	},

	['salmon'] = {
		label = 'Salmon',
		weight = 1000
	},

	['shark'] = {
		label = 'Shark',
		weight = 7500
	},

	['trout'] = {
		label = 'Trout',
		weight = 750
	},

	['tuna'] = {
		label = 'Tuna',
		weight = 10000
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["meth_raw"] = {
		label = "Raw Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "meth_raw.png",
		}
	},

	["chocolate_fudge_brownie"] = {
		label = "Chocolate Fudge Brownie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_fudge_brownie.png",
		}
	},

	["spicy_chicken_burrito"] = {
		label = "Spicy Chicken Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spicy_chicken_burrito.png",
		}
	},

	["gem"] = {
		label = "Gem",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "gem.png",
		}
	},

	["trout"] = {
		label = "Trout",
		weight = 750,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "trout.png",
		}
	},

	["heroin_shot"] = {
		label = "Heroin Shot",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "heroin_shot.png",
		}
	},

	["zomo_cream"] = {
		label = "Acai Cream Zomo",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "zomo_cream.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["seed_weed"] = {
		label = "Weed Seed",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "seed_weed.png",
		}
	},

	["bs_orange_juice"] = {
		label = "Simply Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_orange_juice.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["fueltank3"] = {
		label = "Tier 3 Fuel Tank",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fueltank3.png",
		}
	},

	["weed_pooch"] = {
		label = "Weed Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "weed_pooch.png",
		}
	},

	["xanax"] = {
		label = "xanax",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "xanax.png",
		}
	},

	["pill_casings"] = {
		label = "pill casings",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "pill_casings.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["classic_wings_combo"] = {
		label = "CLASSIC WINGS COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "classic_wings_combo.png",
		}
	},

	["etherweed"] = {
		label = "Ether",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "etherweed.png",
		}
	},

	["payticket"] = {
		label = "Receipt",
		weight = 150,
		stack = true,
		close = false,
		description = "Cash these in at the bank!",
		client = {
			image = "ticket.png",
		}
	},

	["drug_shears"] = {
		label = "Trimming Shears",
		weight = 200,
		stack = true,
		close = false,
		description = "A set of high quality trimming shears.",
		client = {
			image = "drug_shears.png",
		}
	},

	["ammo_pistol"] = {
		label = "Pistol Ammo",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["bacon_double_cheeseburger"] = {
		label = "Bacon Double Cheeseburger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bacon_double_cheeseburger.png",
		}
	},

	["apple_gelato_joint"] = {
		label = "Apple Gelato Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_gelato_joint.png",
		}
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},

	["small_classic_fries"] = {
		label = "Small Classic Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "small_classic_fries.png",
		}
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 0,
		stack = false,
		close = true,
		description = "A full bottle of NOS",
		client = {
			image = "nos.png",
		}
	},

	["monkey_punk"] = {
		label = "Monkey Punk",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "monkey_punk.png",
		}
	},

	["hose"] = {
		label = "Shisha Hose",
		weight = 250,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "hose.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["hennessy_shot"] = {
		label = "Hennessy Shot",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hennessy_shot.png",
		}
	},

	["fertilizer"] = {
		label = "Fertilizer",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "fertilizer.png",
		}
	},

	["blue_mist"] = {
		label = "Starbuzz Blue Mist",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "blue_mist.png",
		}
	},

	["paxton_pearl_cigars"] = {
		label = "Paxton Pearl Cigars",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "paxton_pearl_cigars.png",
		}
	},

	["beefy_nacho"] = {
		label = "Beefy Nacho",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "beefy_nacho.png",
		}
	},

	["scrap2"] = {
		label = "Scrap M",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["engine5"] = {
		label = "Tier 5 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine5.png",
		}
	},

	["acidsupply"] = {
		label = "Acid Supply",
		weight = 1000,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "acidsupply.png",
		}
	},

	["weed_amnesia_seed_f"] = {
		label = "Amnesia: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized amnesia seed.",
		client = {
			image = "weed_amnesia_seed_f.png",
		}
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},

	["buttercup"] = {
		label = "Buttercup",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "buttercup.png",
		}
	},

	["md_seltzer_water"] = {
		label = "MD Seltzer Water",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "md_seltzer_water.png",
		}
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},

	["vangelico_key"] = {
		label = "Vangelico Key",
		weight = 5,
		stack = true,
		close = false,
		description = "Cutter",
		client = {
			image = "vangelico_key.png",
		}
	},

	["big_drill"] = {
		label = "big_drill",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "big_drill.png",
		}
	},

	["drives3"] = {
		label = "Tier 3 Drive Shaft",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drives3.png",
		}
	},

	["chocolate_milkshake"] = {
		label = "Chocolate Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_milkshake.png",
		}
	},

	["cane_mint"] = {
		label = "Tangiers Cane Mint",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "cane_mint.png",
		}
	},

	["mc_fanta_orange"] = {
		label = "Fanta Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_fanta_orange.png",
		}
	},

	["bs_coca_cola"] = {
		label = "Medium Coca-Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_coca_cola.png",
		}
	},

	["spice_pooch"] = {
		label = "Spice Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "spice_pooch.png",
		}
	},

	["plain_iced_coffee"] = {
		label = "Plain Iced Coffee Medium",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "plain_iced_coffee.png",
		}
	},

	["loaded_croissanwich_meal"] = {
		label = "Bacon, Sausage & Ham Meal Small",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "loaded_croissanwich_meal.png",
		}
	},

	["bs_chicken_jr"] = {
		label = "Chicken Jr.",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_chicken_jr.png",
		}
	},

	["baby_lobster_pasta"] = {
		label = "Baby Lobster Pasta",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "baby_lobster_pasta.png",
		}
	},

	["bs_yello_mello"] = {
		label = "Medium Mello Yello",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_yello_mello.png",
		}
	},

	["weed_whitewidow_crop"] = {
		label = "White-Widow: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest white-widow flower!",
		client = {
			image = "weed_whitewidow_crop.png",
		}
	},

	["crunchytaco"] = {
		label = "Crunchy Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crunchytaco.png",
		}
	},

	["georgia_pie_joint"] = {
		label = "Georgia Pie Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "georgia_pie_joint.png",
		}
	},

	["collins_ave"] = {
		label = "Collins AVE",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "collins_ave.png",
		}
	},

	["morphine15"] = {
		label = "Morphine 15MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "morphine15.png",
		}
	},

	["artegg"] = {
		label = "Art Egg",
		weight = 100,
		stack = true,
		close = true,
		description = "Stolen Artwork",
		client = {
			image = "vannecklace.png",
		}
	},

	["biscotti_joint"] = {
		label = "Biscotti Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "biscotti_joint.png",
		}
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["shrimp_alfredo"] = {
		label = "Shrimp Alfredo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shrimp_alfredo.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},

	["chocolate_shake"] = {
		label = "Chocolate Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_shake.png",
		}
	},

	["dunkin_donuts"] = {
		label = "DONUTS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_donuts.png",
		}
	},

	["car_armor"] = {
		label = "Vehicle Armor",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "car_armour.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["big_bomb"] = {
		label = "Big Bomb",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "big_bomb.png",
		}
	},

	["carte_biscuit"] = {
		label = "À la Carte Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "carte_biscuit.png",
		}
	},

	["scrap"] = {
		label = "Scrap L",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["korean_q_wings"] = {
		label = "Korean Q Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "korean_q_wings.png",
		}
	},

	["ducttape"] = {
		label = "Duct Tape",
		weight = 0,
		stack = false,
		close = true,
		description = "Good for quick fixes",
		client = {
			image = "bodyrepair.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["chicken_nuggets"] = {
		label = "Chicken Nuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_nuggets.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["shrimp_and_grits"] = {
		label = "Shrimp & Grits",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shrimp_and_grits.png",
		}
	},

	["2005_blueberry"] = {
		label = "2005 Blueberry Tangiers",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "2005_blueberry.png",
		}
	},

	["w_medium_fanta_orange"] = {
		label = "Ice Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_medium_fanta_orange.png",
		}
	},

	["bumper"] = {
		label = "Vehicle Bumper",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["bs_fruit_punch"] = {
		label = "Medium Hi-C Fruit Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_fruit_punch.png",
		}
	},

	["internals"] = {
		label = "Internal Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["ammo_rifle"] = {
		label = "Rifle Ammo",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ammo_rifle.png",
		}
	},

	["engine2"] = {
		label = "Tier 2 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine2.png",
		}
	},

	["mild_tenders_box"] = {
		label = "10Pc Mild Tenders Box",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mild_tenders_box.png",
		}
	},

	["strawberry_shake"] = {
		label = "Strawberry Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_shake.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["crunchwrap_supreme_meal"] = {
		label = "Crunchwrap Supreme Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crunchwrap_supreme_meal.png",
		}
	},

	["brakes3"] = {
		label = "Tier 3 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["tacomeet"] = {
		label = "Taco Meet",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tacomeet.png",
		}
	},

	["karaoke_earrings"] = {
		label = "Karaoke Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "karaoke_earrings.png",
		}
	},

	["philly_cheese_sandwich"] = {
		label = "Philly Cheese Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "philly_cheese_sandwich.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["garlic_parmesan_wings"] = {
		label = "Garlic Parmesan Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "garlic_parmesan_wings.png",
		}
	},

	["green_stone"] = {
		label = "Green Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "green_stone.png",
		}
	},

	["chain_is"] = {
		label = "Chain IS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_is.png",
		}
	},

	["upeel_shrimp"] = {
		label = "U-Peel Shrimp",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "upeel_shrimp.png",
		}
	},

	["shamrock_cookie"] = {
		label = "Shamrock Cookie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shamrock_cookie.png",
		}
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["frosted_coffee"] = {
		label = "Frosted Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "frosted_coffee.png",
		}
	},

	["mc_strawberry_shake"] = {
		label = "Strawberry Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_strawberry_shake.png",
		}
	},

	["weed_ogkush_seed_m"] = {
		label = "OG-Kush: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male og-kush seed!",
		client = {
			image = "weed_ogkush_seed_m.png",
		}
	},

	["bs_barqs_beer"] = {
		label = "Medium Barqs Root Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_barqs_beer.png",
		}
	},

	["dunkin_refresher"] = {
		label = "DUNKIN REFRESHERS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_refresher.png",
		}
	},

	["xenonsblacklight"] = {
		label = "Blacklight Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsblacklight.png",
		}
	},

	["xenonsrose2"] = {
		label = "Hot Pink Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsrose2.png",
		}
	},

	["side_of_flavor"] = {
		label = "SIDE OF FLAVOR",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "side_of_flavor.png",
		}
	},

	["platinum_bar"] = {
		label = "Platinum Bar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "platinum_bar.png",
		}
	},

	["chick_fil_a_lemonade"] = {
		label = "Chick-fil-A Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chick_fil_a_lemonade.png",
		}
	},

	["pacific_veggie"] = {
		label = "Pacific Veggie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pacific_veggie.png",
		}
	},

	["regular_cajun_rice"] = {
		label = "Regular Cajun Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "regular_cajun_rice.png",
		}
	},

	["oilp1"] = {
		label = "Tier 1 Oil Pump",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "oilp1.png",
		}
	},

	["texas_double_whopper"] = {
		label = "Texas Double Whopper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "texas_double_whopper.png",
		}
	},

	["crab_cakes"] = {
		label = "Crab Cakes",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crab_cakes.png",
		}
	},

	["spicy_crispy_chicken_sandwich"] = {
		label = "Spicy Crispy Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spicy_crispy_chicken_sandwich.png",
		}
	},

	["sodiumcarbonate"] = {
		label = "Sodium Carbonate",
		weight = 200,
		stack = true,
		close = true,
		description = "Sodium Carbonate is the disodium salt of carbonic acid with alkalinizing property.",
		client = {
			image = "sodiumcarbonate.png",
		}
	},

	["strawberry_jam_cookie"] = {
		label = "Strawberry Jam Cookie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_jam_cookie.png",
		}
	},

	["apple_sauce"] = {
		label = "Apple Sauce",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_sauce.png",
		}
	},

	["double_quarter_pounder"] = {
		label = "Double Quarter Pounder",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "double_quarter_pounder.png",
		}
	},

	["cokebrick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "cokebrick.png",
		}
	},

	["necklace_family"] = {
		label = "Necklace Family",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "necklace_family.png",
		}
	},

	["w_diet_coke"] = {
		label = "Diet Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_diet_coke.png",
		}
	},

	["boltcutter"] = {
		label = "Bolt Cutter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "boltcutter.png",
		}
	},

	["xenonsorange"] = {
		label = "Orange Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsorange.png",
		}
	},

	["engine4"] = {
		label = "Tier 4 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine4.png",
		}
	},

	["veggie_sticks"] = {
		label = "VEGGIE STICKS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "veggie_sticks.png",
		}
	},

	["chain_medal"] = {
		label = "Chain Medal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_medal.png",
		}
	},

	["morphinebase"] = {
		label = "Morphine Base",
		weight = 1000,
		stack = true,
		close = true,
		description = "Morphine base. You can turn this into morphine or heroin.",
		client = {
			image = "morphinebase.png",
		}
	},

	["mc_sprite"] = {
		label = "Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_sprite.png",
		}
	},

	["sausage_burrito"] = {
		label = "Sausage Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sausage_burrito.png",
		}
	},

	["blue_stone"] = {
		label = "Blue Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blue_stone.png",
		}
	},

	["earrings_sgold"] = {
		label = "Earrings SGold",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "earrings_sgold.png",
		}
	},

	["methylamine"] = {
		label = "Methylamine",
		weight = 1500,
		stack = true,
		close = true,
		description = "Methylamine? What is this breaking bad?",
		client = {
			image = "methylamine.png",
		}
	},

	["vanilla_milkshake"] = {
		label = "Vanilla Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vanilla_milkshake.png",
		}
	},

	["liquidketamine"] = {
		label = "Liquid Ketamine",
		weight = 500,
		stack = true,
		close = true,
		description = "A vial of liquid ketamine!",
		client = {
			image = "liquidketamine.png",
		}
	},

	["brown_scramble_bowl"] = {
		label = "Brown Scramble Bowl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "brown_scramble_bowl.png",
		}
	},

	["hex_gold"] = {
		label = "Hex Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hex_gold.png",
		}
	},

	["methpouch"] = {
		label = "Meth Pouch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "methpouch.png",
		}
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["perc10"] = {
		label = "Percocet 10MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "perc10.png",
		}
	},

	["omlet"] = {
		label = "Omelette",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "omlet.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["fueltank1"] = {
		label = "Tier 1 Fuel Tank",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fueltank1.png",
		}
	},

	["distilled_water"] = {
		label = "Distilled Water",
		weight = 1000,
		stack = true,
		close = false,
		description = "Distilled water for your plants or other uses..",
		client = {
			image = "distilled_water.png",
		}
	},

	["cylind2"] = {
		label = "Tier 2 Cylinder Head",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cylind2.png",
		}
	},

	["big_mac"] = {
		label = "Big Mac",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "big_mac.png",
		}
	},

	["garlic_parm_wings"] = {
		label = "Garlic Parm Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "garlic_parm_wings.png",
		}
	},

	["xenonsjaune"] = {
		label = "Yellow Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsjaune.png",
		}
	},

	["croissanwich_meal"] = {
		label = "Sausage, Egg & Cheese Small",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "croissanwich_meal.png",
		}
	},

	["handcuffs"] = {
		label = "Hand Cuffs",
		weight = 2500,
		stack = true,
		close = true,
		description = "Handcuffs securely restrain individuals",
		client = {
			image = "handcuffs.png",
		}
	},

	["weed_whitewidow_seed_f"] = {
		label = "White-Widow: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized whitewidow seed.",
		client = {
			image = "weed_whitewidow_seed_f.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["horn"] = {
		label = "Custom Vehicle Horn",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["platbox_earrings"] = {
		label = "Platbox Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "platbox_earrings.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["al_fakher"] = {
		label = "Al Fakher Two Apples",
		weight = 250,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "al_fakher.png",
		}
	},

	["cereal_milk_joint"] = {
		label = "Cereal Milk Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cereal_milk_joint.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["goldstone_earrings"] = {
		label = "Goldstone Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldstone_earrings.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["emptyvial"] = {
		label = "Empty Vial",
		weight = 50,
		stack = true,
		close = true,
		description = "A empty sterile vial for storing liquid meds.",
		client = {
			image = "emptyvial.png",
		}
	},

	["brokenpendrive"] = {
		label = "Broken Pendrive",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "brokenpendrive.png",
		}
	},

	["fried_scallops"] = {
		label = "Fried Scallops",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fried_scallops.png",
		}
	},

	["cheese_sauce"] = {
		label = "CHEESE SAUCE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheese_sauce.png",
		}
	},

	["crispy_tenders"] = {
		label = "8 PC MEAL FOR 2 CRISPY TENDERS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crispy_tenders.png",
		}
	},

	["fries"] = {
		label = "Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fries.png",
		}
	},

	["hollow_knight"] = {
		label = "Hollow Knight",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "hollow_knight.png",
		}
	},

	["chicken_burrito"] = {
		label = "Chicken Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_burrito.png",
		}
	},

	["tuna"] = {
		label = "Tuna",
		weight = 10000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tuna.png",
		}
	},

	["cookies_cream_milkshake"] = {
		label = "Cookies & Cream Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cookies_cream_milkshake.png",
		}
	},

	["chicken_mcnuggets"] = {
		label = "Chicken McNuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_mcnuggets.png",
		}
	},

	["biscuits_gravy"] = {
		label = "Biscuits Gravy",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "biscuits_gravy.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["cajun_fries"] = {
		label = "Regular Cajun Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cajun_fries.png",
		}
	},

	["mc_hot_chocolate"] = {
		label = "Hot Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_hot_chocolate.png",
		}
	},

	["strawberry_nutella_waffles"] = {
		label = "Strawberry Nutella Waffles",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_nutella_waffles.png",
		}
	},

	["honolulu_hawaiian"] = {
		label = "Honolulu Hawaiian",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "honolulu_hawaiian.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["roseymary_gin_fizz"] = {
		label = "Roseymary Gin Fizz",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "roseymary_gin_fizz.png",
		}
	},

	["fruit_cup"] = {
		label = "Fruit Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fruit_cup.png",
		}
	},

	["medium_fanta_orange"] = {
		label = "Medium Fanta Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_fanta_orange.png",
		}
	},

	["lean_bottle"] = {
		label = "Lean Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "lean_bottle.png",
		}
	},

	["pendulus_platinum"] = {
		label = "Pendulus Platinum",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pendulus_platinum.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["latte"] = {
		label = "Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "latte.png",
		}
	},

	["el_patron"] = {
		label = "Chaos El Patron",
		weight = 10,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "el_patron.png",
		}
	},

	["necklace"] = {
		label = "Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["sourdough_breakfast_sandwich"] = {
		label = "ICED CAPPUCCINO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sourdough_breakfast_sandwich.png",
		}
	},

	["banana_backwoods"] = {
		label = "Banana Backwoods",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "banana_backwoods.png",
		}
	},

	["weed_ak47_crop"] = {
		label = "AK47: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest ak47 flower!",
		client = {
			image = "weed_ak47_crop.png",
		}
	},

	["transmission1"] = {
		label = "Tier 1 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission1.png",
		}
	},

	["fresh_baked_rolls"] = {
		label = "FRESH BAKED ROLLS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fresh_baked_rolls.png",
		}
	},

	["crack_kit"] = {
		label = "Crack Kit",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "crack_kit.png",
		}
	},

	["original_hot_wings"] = {
		label = "Original Hot Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "original_hot_wings.png",
		}
	},

	["chick_fil_a_nuggets"] = {
		label = "Chick-fil-A Nuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chick_fil_a_nuggets.png",
		}
	},

	["hack_usb"] = {
		label = "Hack USB",
		weight = 100,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "hack_usb.png",
		}
	},

	["medbag"] = {
		label = "Medical Bag",
		weight = 2500,
		stack = true,
		close = true,
		description = "A bag of medic tools",
		client = {
			image = "medbag.png",
		}
	},

	["titanium_rod"] = {
		label = "Titanium rod",
		weight = 450,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "titanium_rod.png",
		}
	},

	["tahoe_og"] = {
		label = "Tahoe OG",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tahoe_og.png",
		}
	},

	["popcorn_shrimp"] = {
		label = "1/4 Popcorn Shrimp Medium Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "popcorn_shrimp.png",
		}
	},

	["terminal"] = {
		label = "Wireless Terminal",
		weight = 5000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "terminal.png",
		}
	},

	["w_medium_sprite"] = {
		label = "Medium Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_medium_sprite.png",
		}
	},

	["ketamine_1oz"] = {
		label = "Ounce of Ketamine",
		weight = 2800,
		stack = true,
		close = true,
		description = "A ounce of ketamine!",
		client = {
			image = "ketamine_1oz.png",
		}
	},

	["rollcage"] = {
		label = "Roll Cage",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["chicken_bacon_ranch"] = {
		label = "Chicken Bacon Ranch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_bacon_ranch.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["signature_chicken_box"] = {
		label = "10Pc Mild Signature Chicken Box",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "signature_chicken_box.png",
		}
	},

	["dunkin_croissant"] = {
		label = "CROISSANT",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_croissant.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["whopper_with_cheese"] = {
		label = "Triple Whopper with Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whopper_with_cheese.png",
		}
	},

	["artskull"] = {
		label = "Art Skull",
		weight = 100,
		stack = true,
		close = true,
		description = "Stolen Artwork",
		client = {
			image = "vannecklace.png",
		}
	},

	["atomic_wings"] = {
		label = "Atomic Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "atomic_wings.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["weed_whitewidow_seed_m"] = {
		label = "White-Widow: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male whitewidow seed!",
		client = {
			image = "weed_whitewidow_seed_m.png",
		}
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["chocolate_cookie_shake"] = {
		label = "Chocolate OREO Cookie Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_cookie_shake.png",
		}
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["noscolour"] = {
		label = "NOS Colour Injector",
		weight = 0,
		stack = true,
		close = true,
		description = "Make that purge spray",
		client = {
			image = "noscolour.png",
		}
	},

	["p_chicken_alfredo"] = {
		label = "Chicken Alfredo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "p_chicken_alfredo.png",
		}
	},

	["cokebaggy"] = {
		label = "1g Bag of Coke",
		weight = 10,
		stack = true,
		close = true,
		description = "A gram of the finest nose candy!",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["suturekit"] = {
		label = "Suture Kit",
		weight = 60,
		stack = true,
		close = true,
		description = "For stitching your patients",
		client = {
			image = "suturekit.png",
		}
	},

	["spicy_chicken_sandwich_combo"] = {
		label = "Spicy Chicken Sandwich Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spicy_chicken_sandwich_combo.png",
		}
	},

	["vodka_tonic"] = {
		label = "Vodka Tonic",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vodka_tonic.png",
		}
	},

	["axleparts"] = {
		label = "Axle Parts",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axleparts.png",
		}
	},

	["transmission3"] = {
		label = "Tier 3 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission3.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["suspension4"] = {
		label = "Tier 4 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension4.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["weed_whitewidow_joint"] = {
		label = "White-Widow: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest white-widow!",
		client = {
			image = "weed_whitewidow_joint.png",
		}
	},

	["weedbrick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "weedbrick.png",
		}
	},

	["small_hash_browns"] = {
		label = "Small Hash Browns",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "small_hash_browns.png",
		}
	},

	["meatball"] = {
		label = "Meatball",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meatball.png",
		}
	},

	["sterilewater"] = {
		label = "Sterile Water",
		weight = 50,
		stack = true,
		close = true,
		description = "A vial of sterile water for injecting meds.",
		client = {
			image = "sterilewater.png",
		}
	},

	["ammo_smg"] = {
		label = "SMG Ammo",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ammo_smg.png",
		}
	},

	["volcano_burrito_meal"] = {
		label = "Volcano Burrito Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "volcano_burrito_meal.png",
		}
	},

	["snackin_bacon"] = {
		label = "SNACKIN BACON",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "snackin_bacon.png",
		}
	},

	["double_quarter_combo"] = {
		label = "Double Quarter Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "double_quarter_combo.png",
		}
	},

	["social_smoke"] = {
		label = "Social Smoke Absolute Zero",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "social_smoke.png",
		}
	},

	["w_medium_fanta_strawberry"] = {
		label = "Medium Fanta Strawberry",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_medium_fanta_strawberry.png",
		}
	},

	["blue_tomyz_joint"] = {
		label = "Blue Tomyz Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blue_tomyz_joint.png",
		}
	},

	["meth_pooch"] = {
		label = "Meth Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "meth_pooch.png",
		}
	},

	["hot_chicken_wrap"] = {
		label = "Hot Chicken Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hot_chicken_wrap.png",
		}
	},

	["simply_orange"] = {
		label = "Simply Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "simply_orange.png",
		}
	},

	["weddingring"] = {
		label = "Wedding Ring",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "weddingring.png",
		}
	},

	["side_salad"] = {
		label = "Side Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "side_salad.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["gpstracker"] = {
		label = "GPS Tracker",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "gpstracker.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},

	["moon_rock_joint"] = {
		label = "Moon Rock Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "moon_rock_joint.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["dunkin_coffee"] = {
		label = "COFFEE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_coffee.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["xenonsmenthe"] = {
		label = "Mint Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsmenthe.png",
		}
	},

	["ultimate_pepperoni"] = {
		label = "Ultimate Pepperoni",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ultimate_pepperoni.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["double_cup"] = {
		label = "Double Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "double_cup.png",
		}
	},

	["mahi_mahi"] = {
		label = "Mahi Mahi",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mahi_mahi.png",
		}
	},

	["nuggets_king_jr"] = {
		label = "Chicken Nuggets King Jr Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nuggets_king_jr.png",
		}
	},

	["w_ice_cola"] = {
		label = "Ice Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_ice_cola.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["sausage_croissanwich"] = {
		label = "Sausage, Egg, & Cheese CroissanWich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sausage_croissanwich.png",
		}
	},

	["french_toast_sticks"] = {
		label = "3 French Toast Sticks",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "french_toast_sticks.png",
		}
	},

	["transmission2"] = {
		label = "Tier 2 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission2.png",
		}
	},

	["deluxe_crispy_sandwich_combo"] = {
		label = "Deluxe Crispy Sandwich Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "deluxe_crispy_sandwich_combo.png",
		}
	},

	["spicy_deluxe_sandwich"] = {
		label = "Spicy Deluxe Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spicy_deluxe_sandwich.png",
		}
	},

	["weed_purplehaze_seed_m"] = {
		label = "Purple-Haze: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male purple-haze seed!",
		client = {
			image = "weed_purplehaze_seed_m.png",
		}
	},

	["waffle_potato_chips"] = {
		label = "Waffle Potato Chips",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "waffle_potato_chips.png",
		}
	},

	["marshmallow_og_joint"] = {
		label = "Marshmallow OG Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "marshmallow_og_joint.png",
		}
	},

	["weed_fertilizer"] = {
		label = "Big Bud Fertilizer",
		weight = 1000,
		stack = true,
		close = false,
		description = "Get that big bug energy!",
		client = {
			image = "weed_fertilizer.png",
		}
	},

	["mashed_potatoes"] = {
		label = "Regular Mashed Potatoes with Cajun Gravy",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mashed_potatoes.png",
		}
	},

	["drug_scales"] = {
		label = "Scale",
		weight = 1500,
		stack = true,
		close = false,
		description = "A set of premium scales for weighing out decimals..",
		client = {
			image = "drug_scales.png",
		}
	},

	["perc5"] = {
		label = "Percocet 5MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "perc5.png",
		}
	},

	["d_sprite"] = {
		label = "Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "d_sprite.png",
		}
	},

	["kronos_black"] = {
		label = "Kronos Black",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kronos_black.png",
		}
	},

	["tenders_family_meal"] = {
		label = "16Pc Tenders Family Meal Mild",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tenders_family_meal.png",
		}
	},

	["boostingtab"] = {
		label = "Boosting Tablet",
		weight = 800.0,
		stack = true,
		close = true,
		client = {
			image = "boostingtab.png",
		}
	},

	["gmo_cookies_joint"] = {
		label = "GMO Cookies Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gmo_cookies_joint.png",
		}
	},

	["gary_payton_joint"] = {
		label = "Gary Payton Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gary_payton_joint.png",
		}
	},

	["hackingtab"] = {
		label = "Hacking Tablet",
		weight = 800.0,
		stack = true,
		close = true,
		client = {
			image = "hackingtab.png",
		}
	},

	["oilp2"] = {
		label = "Tier 2 Oil Pump",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "oilp2.png",
		}
	},

	["italian_sausage_marinara"] = {
		label = "Italian Sausage Marinara",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "italian_sausage_marinara.png",
		}
	},

	["strawberry_lemonade"] = {
		label = "Chilled Strawberry Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_lemonade.png",
		}
	},

	["cereal_milk"] = {
		label = "Cereal Milk",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cereal_milk.png",
		}
	},

	["mc_vanilla_shake"] = {
		label = "Vanilla Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_vanilla_shake.png",
		}
	},

	["engine3"] = {
		label = "Tier 3 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine3.png",
		}
	},

	["engine1"] = {
		label = "Tier 1 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine1.png",
		}
	},

	["egg_white_grill"] = {
		label = "Egg White Grill",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "egg_white_grill.png",
		}
	},

	["key_lime_cookie"] = {
		label = "Key Lime Cookie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "key_lime_cookie.png",
		}
	},

	["skull_earrings"] = {
		label = "Skull Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "skull_earrings.png",
		}
	},

	["signature_latte"] = {
		label = "SIGNATURE LATTE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "signature_latte.png",
		}
	},

	["ring"] = {
		label = "Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

	["blossom"] = {
		label = "Blossom",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "blossom.png",
		}
	},

	["philly_cheese_steak"] = {
		label = "Philly Cheese Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "philly_cheese_steak.png",
		}
	},

	["volcano_burrito"] = {
		label = "Volcano Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "volcano_burrito.png",
		}
	},

	["chicken_noodle_soup"] = {
		label = "Chicken Noodle Soup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_noodle_soup.png",
		}
	},

	["party_pack"] = {
		label = "50PC PARTY PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "party_pack.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["dirtycash"] = {
		label = "Dirty Cash",
		weight = 0,
		stack = true,
		close = false,
		description = "Dirty cash? You should find someone to clean this for you!",
		client = {
			image = "dirtynote.png",
		}
	},

	["brokenglasses"] = {
		label = "Broken Glasses",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "brokenglasses.png",
		}
	},

	["chest_gold"] = {
		label = "Chest Gold",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "chest_gold.png",
		}
	},

	["sausage_egg_cheese"] = {
		label = "Sausage, Egg & Cheese Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sausage_egg_cheese.png",
		}
	},

	["mozzarella_sticks"] = {
		label = "Mozzarella Sticks",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mozzarella_sticks.png",
		}
	},

	["oreoz"] = {
		label = "Oreoz",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oreoz.png",
		}
	},

	["weed_ak47_joint"] = {
		label = "AK47: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest ak47!",
		client = {
			image = "weed_ak47_joint.png",
		}
	},

	["artificial_bait"] = {
		label = "Artificial bait",
		weight = 30,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "artificial_bait.png",
		}
	},

	["tilapia_fish_meal"] = {
		label = "Steak & Lobster Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tilapia_fish_meal.png",
		}
	},

	["mc_iced_coffee"] = {
		label = "Iced Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_iced_coffee.png",
		}
	},

	["steak_and_lobster_meal"] = {
		label = "Steak & Lobster Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "steak_and_lobster_meal.png",
		}
	},

	["chalupa_supreme"] = {
		label = "Chalupa Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chalupa_supreme.png",
		}
	},

	["cheesy_gordita_crunch"] = {
		label = "Cheesy Gordita Crunch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheesy_gordita_crunch.png",
		}
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["spinach_feta"] = {
		label = "Spinach & Feta",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spinach_feta.png",
		}
	},

	["nuggets_la_carte"] = {
		label = "48Pc Nuggets A la Carte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nuggets_la_carte.png",
		}
	},

	["buffalo_chicken"] = {
		label = "Buffalo Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "buffalo_chicken.png",
		}
	},

	["4play"] = {
		label = "4Play Fantasia",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "4play.png",
		}
	},

	["chicken_sandwich"] = {
		label = "Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_sandwich.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["pomegranate_mimosa"] = {
		label = "Pomegranate Mimosa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pomegranate_mimosa.png",
		}
	},

	["two_taco_supreme"] = {
		label = "Two Taco Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "two_taco_supreme.png",
		}
	},

	["soft_taco_supreme"] = {
		label = "Soft Taco Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soft_taco_supreme.png",
		}
	},

	["fueltank2"] = {
		label = "Tier 2 Fuel Tank",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fueltank2.png",
		}
	},

	["cokepouch"] = {
		label = "Coke Pouch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "cokepouch.png",
		}
	},

	["red_snapper"] = {
		label = "Red Snapper",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_snapper.png",
		}
	},

	["crispy_tender_combo"] = {
		label = "LARGE 5 PC CRISPY TENDER COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crispy_tender_combo.png",
		}
	},

	["xenonsmauve"] = {
		label = "Purple Xenone",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsmauve.png",
		}
	},

	["runtz_og_joint"] = {
		label = "Runtz OG Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "runtz_og_joint.png",
		}
	},

	["crack_baggy"] = {
		label = "1g Bag of Crack",
		weight = 10,
		stack = true,
		close = true,
		description = "Man your about to lose some teeth!",
		client = {
			image = "crack_baggy.png",
		}
	},

	["sodiumbicarbonate"] = {
		label = "Baking Soda",
		weight = 1000,
		stack = true,
		close = true,
		description = "Baking soda ey? What you cooking?",
		client = {
			image = "sodiumbicarbonate.png",
		}
	},

	["weed_skunk_joint"] = {
		label = "Skunk: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest skunk!",
		client = {
			image = "weed_skunk_joint.png",
		}
	},

	["bacon_king"] = {
		label = "Bacon King",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bacon_king.png",
		}
	},

	["brakes1"] = {
		label = "Tier 1 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["cheap_lighter"] = {
		label = "Cheap Lighter",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cheap_lighter.png",
		}
	},

	["deluxe_chicken_sandwich"] = {
		label = "Ch King Deluxe Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "deluxe_chicken_sandwich.png",
		}
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},

	["drugpogo"] = {
		label = "Pogo",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pogo.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["chicken_club_sandwich"] = {
		label = "Chicken Club Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_club_sandwich.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 1500,
		stack = true,
		close = false,
		description = "A highly volitile and flamable liquid..",
		client = {
			image = "acetone.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["cold_brew"] = {
		label = "COLD BREW",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cold_brew.png",
		}
	},

	["soft_serve_cone"] = {
		label = "Soft Serve Cone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soft_serve_cone.png",
		}
	},

	["bs_hamburger"] = {
		label = "Hamburger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_hamburger.png",
		}
	},

	["grabba_leaf"] = {
		label = "Grabba Leaf",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "grabba_leaf.png",
		}
	},

	["la_confidential"] = {
		label = "LA Confidential",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "la_confidential.png",
		}
	},

	["buttermilk_biscuit"] = {
		label = "Fully Loaded Buttermilk",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "buttermilk_biscuit.png",
		}
	},

	["rustedrod"] = {
		label = "Rusted Rod",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "rustedrod.png",
		}
	},

	["plasticjerrycan"] = {
		label = "Plastic Jerrycan",
		weight = 500,
		stack = true,
		close = true,
		description = "A empty jerry can for storing liquids.",
		client = {
			image = "plasticjerrycan.png",
		}
	},

	["weed_gelato_seed_f"] = {
		label = "Gelato: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized gelato seed.",
		client = {
			image = "weed_gelato_seed_f.png",
		}
	},

	["whitecherry_gelato"] = {
		label = "Whitecherry Gelato",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whitecherry_gelato.png",
		}
	},

	["sundae_pie"] = {
		label = "HERSHEYS Sundae Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sundae_pie.png",
		}
	},

	["english_muffin"] = {
		label = "English Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "english_muffin.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["ham_egg_cheese"] = {
		label = "Ham, Egg, & Cheese CroissanWich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ham_egg_cheese.png",
		}
	},

	["pearl"] = {
		label = "Pearl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pearl.png",
		}
	},

	["syringe"] = {
		label = "Syringe",
		weight = 50,
		stack = true,
		close = true,
		description = "A sterile syringe, dont share!",
		client = {
			image = "syringe.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["tender_pack"] = {
		label = "24PC CRISPY TENDER PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tender_pack.png",
		}
	},

	["big_mac_combo"] = {
		label = "Big Mac Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "big_mac_combo.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["chicken_parm"] = {
		label = "Chicken Parm",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_parm.png",
		}
	},

	["tahoe_og_joint"] = {
		label = "Tahoe OG Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tahoe_og_joint.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["side_caesar_salad"] = {
		label = "Side Caesar Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "side_caesar_salad.png",
		}
	},

	["weedpouch"] = {
		label = "Weed Pouch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "weedpouch.png",
		}
	},

	["double_apple"] = {
		label = "Nakhla Double Apple",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "double_apple.png",
		}
	},

	["classic_chicken_sandwich"] = {
		label = "Classic Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "classic_chicken_sandwich.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["pink_lemonade"] = {
		label = "Medium Hi-C Pink Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pink_lemonade.png",
		}
	},

	["bolt_cutter"] = {
		label = "Bolt Cutter",
		weight = 100,
		stack = false,
		close = true,
		description = "0x0x",
		client = {
			image = "bolt_cutter.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["laptop_h"] = {
		label = "Hack Laptop",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "laptop_h.png",
		}
	},

	["rims"] = {
		label = "Custom Wheel Rims",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["egg_mcmuffin"] = {
		label = "Egg McMuffin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "egg_mcmuffin.png",
		}
	},

	["blueberry_cruffin_joint"] = {
		label = "Blueberry Cruffin Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blueberry_cruffin_joint.png",
		}
	},

	["mild_tenders_bundle"] = {
		label = "10Pc Mild Tenders Bundle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mild_tenders_bundle.png",
		}
	},

	["ice_cream_cake_pack"] = {
		label = "Ice Cream Cake Pack",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ice_cream_cake_pack.png",
		}
	},

	["wirecutter"] = {
		label = "Wire Cutter",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "wirecutter.png",
		}
	},

	["icepack"] = {
		label = "Ice Pack",
		weight = 110,
		stack = true,
		close = true,
		description = "To help reduce swelling",
		client = {
			image = "icepack.png",
		}
	},

	["ps_coca_cola"] = {
		label = "Coca Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ps_coca_cola.png",
		}
	},

	["tracker_remover"] = {
		label = "Tracking Chip Remover",
		weight = 1000,
		stack = false,
		close = true,
		description = "A tracking chip remover!",
		client = {
			image = "tracker_remover.png",
		}
	},

	["bacon_egg_cheese"] = {
		label = "Bacon Egg Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bacon_egg_cheese.png",
		}
	},

	["quesadilla"] = {
		label = "Quesadilla",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "quesadilla.png",
		}
	},

	["strawberry_milkshake"] = {
		label = "Strawberry Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_milkshake.png",
		}
	},

	["spades_fantasia"] = {
		label = "Ace of Spades Fantasia",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "spades_fantasia.png",
		}
	},

	["cylind3"] = {
		label = "Tier 3 Cylinder Head",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cylind3.png",
		}
	},

	["backwoods_grape"] = {
		label = "Backwoods Grape",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "backwoods_grape.png",
		}
	},

	["quarter_pounder"] = {
		label = "Quarter Pounder",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "quarter_pounder.png",
		}
	},

	["medium_coca_cola"] = {
		label = "Medium Coca-Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_coca_cola.png",
		}
	},

	["bs_diet_coke"] = {
		label = "Medium Diet Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_diet_coke.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["bs_iced_tea"] = {
		label = "Medium Sweetened Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_iced_tea.png",
		}
	},

	["pancake_sausage_platter"] = {
		label = "Pancake & Sausage Platter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pancake_sausage_platter.png",
		}
	},

	["mc_coca_cola"] = {
		label = "Coca Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_coca_cola.png",
		}
	},

	["chain_triangle"] = {
		label = "Chain Triangle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_triangle.png",
		}
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this medikit to treat your patients",
		client = {
			image = "medikit.png",
		}
	},

	["iced_matcha_latte"] = {
		label = "ICED MATCHA LATTE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "iced_matcha_latte.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	["dianecklace"] = {
		label = "Dia Necklace",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "dianecklace.png",
		}
	},

	["mechboard"] = {
		label = "Mechanic Sheet",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["goldak_earrings"] = {
		label = "GoldAK Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldak_earrings.png",
		}
	},

	["mc_cappuccino"] = {
		label = "Cappuccino",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_cappuccino.png",
		}
	},

	["backwoods_russian_cream"] = {
		label = "Backwoods Russian Cream",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "backwoods_russian_cream.png",
		}
	},

	["piranha"] = {
		label = "Piranha",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "piranha.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 500,
		stack = true,
		close = true,
		description = "Lithium, for batteries or maybe or things?",
		client = {
			image = "lithium.png",
		}
	},

	["breakfast_meal"] = {
		label = "Breakfast Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "breakfast_meal.png",
		}
	},

	["cobb_salad"] = {
		label = "Cobb Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cobb_salad.png",
		}
	},

	["antilag"] = {
		label = "AntiLag",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "antiLag.png",
		}
	},

	["weed_skunk_seed_f"] = {
		label = "Skunk: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized skunk seed.",
		client = {
			image = "weed_skunk_seed_f.png",
		}
	},

	["vic10"] = {
		label = "Vicodin 10MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "vic10.png",
		}
	},

	["morphinebaggy"] = {
		label = "Bag of Morphine",
		weight = 1,
		stack = true,
		close = true,
		description = "Morphine. Good for pain but also a good time!",
		client = {
			image = "morphinebaggy.png",
		}
	},

	["greek_yogurt_parfait"] = {
		label = "Greek Yogurt Parfait",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "greek_yogurt_parfait.png",
		}
	},

	["quarter_pounder_cheese"] = {
		label = "Quarter Pounder Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "quarter_pounder_cheese.png",
		}
	},

	["bprooftires"] = {
		label = "Bulletproof Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["sweet_tea"] = {
		label = "Sweet Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sweet_tea.png",
		}
	},

	["medium_sprite"] = {
		label = "Medium Sprite",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_sprite.png",
		}
	},

	["dom_perignon"] = {
		label = "Dom Perignon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dom_perignon.png",
		}
	},

	["w_tango_apple"] = {
		label = "Tango Apple",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_tango_apple.png",
		}
	},

	["tires"] = {
		label = "Drift Smoke Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["dunkin_latte"] = {
		label = "LATTE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_latte.png",
		}
	},

	["mac_cheese"] = {
		label = "Mac & Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mac_cheese.png",
		}
	},

	["meth_1oz"] = {
		label = "Ounce of Meth",
		weight = 280,
		stack = true,
		close = true,
		description = "A ounce of the finest teeth rotting goodness!",
		client = {
			image = "meth_1oz.png",
		}
	},

	["key"] = {
		label = "Armbrace",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "key.png",
		}
	},

	["double_sausage_biscuit"] = {
		label = "Double Sausage, Egg, & Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "double_sausage_biscuit.png",
		}
	},

	["gummi_bear"] = {
		label = "Fumari White Gummi Bear",
		weight = 10,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "gummi_bear.png",
		}
	},

	["gmo_cookies"] = {
		label = "GMO Cookies",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gmo_cookies.png",
		}
	},

	["wisconsin_cheese"] = {
		label = "Wisconsin 6 Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wisconsin_cheese.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["cheesy_black_bean"] = {
		label = "Cheesy Black Bean",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheesy_black_bean.png",
		}
	},

	["weed_zkittlez_seed_m"] = {
		label = "Zkittlez: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male zkittlez seed!",
		client = {
			image = "weed_zkittlez_seed_m.png",
		}
	},

	["t_tango_apple"] = {
		label = "Tango Apple",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "t_tango_apple.png",
		}
	},

	["fried_mushrooms"] = {
		label = "Fried Mushrooms",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fried_mushrooms.png",
		}
	},

	["brokenphone"] = {
		label = "Broken Phone",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "brokenphone.png",
		}
	},

	["weed_zkittlez"] = {
		label = "Zkittlez: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest zkittlez flower!",
		client = {
			image = "weed_zkittlez.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},

	["marathon"] = {
		label = "Marathon",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "marathon.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["goldwatch"] = {
		label = "Gold Watch",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "blowtorch.png",
		}
	},

	["classic_signature_chicken"] = {
		label = "Classic Signature Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "classic_signature_chicken.png",
		}
	},

	["chicken_egg_cheese"] = {
		label = "Chicken, Egg & Cheese Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_egg_cheese.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["bs_mozzarella_sticks"] = {
		label = "Mozzarella Sticks",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_mozzarella_sticks.png",
		}
	},

	["boneless_wings"] = {
		label = "BONELESS WINGS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "boneless_wings.png",
		}
	},

	["medium_diet_coke"] = {
		label = "Medium Diet Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_diet_coke.png",
		}
	},

	["iced_signaturea_latte"] = {
		label = "ICED SIGNATURE LATTE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "iced_signaturea_latte.png",
		}
	},

	["sweat_tea_sangria"] = {
		label = "Sweat Tea Sangria",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sweat_tea_sangria.png",
		}
	},

	["rectdia_earrings"] = {
		label = "RectDia Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rectdia_earrings.png",
		}
	},

	["weed_leaf"] = {
		label = "Weed Leaf",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_leaf.png",
		}
	},

	["newoil"] = {
		label = "Car Oil",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caroil.png",
		}
	},

	["bag"] = {
		label = "Bag",
		weight = 5,
		stack = true,
		close = false,
		description = "Bag",
		client = {
			image = "bag.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["cheesy_tots"] = {
		label = "Cheesy Tots",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheesy_tots.png",
		}
	},

	["bagel_cream_cheese"] = {
		label = "BAGELS WITH CREAM CHEESE SPREAD",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bagel_cream_cheese.png",
		}
	},

	["nuggets_medium_combo"] = {
		label = "Nuggets Medium Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nuggets_medium_combo.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["strawberry_cheesecake_pie"] = {
		label = "Strawberry Cheesecake Fried Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry_cheesecake_pie.png",
		}
	},

	["la_confidential_joint"] = {
		label = "LA Confidential Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "la_confidential_joint.png",
		}
	},

	["dunkin_bacon_egg_cheese"] = {
		label = "BACON, EGG & CHEESE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_bacon_egg_cheese.png",
		}
	},

	["khalifa_kush_joint"] = {
		label = "Khalifa Kush Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "khalifa_kush_joint.png",
		}
	},

	["big_fish"] = {
		label = "Big Fish",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "big_fish.png",
		}
	},

	["snow_man_joint"] = {
		label = "Snow Man Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "snow_man_joint.png",
		}
	},

	["cables2"] = {
		label = "Tier 2 Battery Cables",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cables2.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["sour_diesel"] = {
		label = "Sour Diesel",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sour_diesel.png",
		}
	},

	["heroinbaggy"] = {
		label = "Bag of Heroin",
		weight = 1,
		stack = true,
		close = true,
		description = "Heroin. Destroying lives since 1898!",
		client = {
			image = "heroinbaggy.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["crowex_brown"] = {
		label = "Crowex Brown",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crowex_brown.png",
		}
	},

	["seasoned_fries"] = {
		label = "SEASONED FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "seasoned_fries.png",
		}
	},

	["apple_gelato"] = {
		label = "Apple Gelato",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_gelato.png",
		}
	},

	["virus"] = {
		label = "Virus",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "virus.png",
		}
	},

	["medium_tropicana_lemonade"] = {
		label = "Medium Tropicana Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_tropicana_lemonade.png",
		}
	},

	["frosted_lemonade"] = {
		label = "Frosted Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "frosted_lemonade.png",
		}
	},

	["weed_ogkush_crop"] = {
		label = "OG-Kush: Crop",
		weight = 400,
		stack = true,
		close = false,
		description = "A freshly harvested crop of the finest og-kush flower!",
		client = {
			image = "weed_ogkush_crop.png",
		}
	},

	["watch_material"] = {
		label = "Watch Material",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "watch_material.png",
		}
	},

	["rollingpapers"] = {
		label = "Rolling Papers",
		weight = 50,
		stack = true,
		close = false,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rollingpapers.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["medium_hawaiian_punch"] = {
		label = "Medium Hawaiian Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_hawaiian_punch.png",
		}
	},

	["knight_cat"] = {
		label = "Knight Cat",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "knight_cat.png",
		}
	},

	["red_wine_sangria"] = {
		label = "Redwine Sangria",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_wine_sangria.png",
		}
	},

	["butter_cookie"] = {
		label = "Butter Cookie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butter_cookie.png",
		}
	},

	["bs_dr_pepper"] = {
		label = "Medium Dr. Pepper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_dr_pepper.png",
		}
	},

	["diaplatinum_earrings"] = {
		label = "Diaplatinum Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diaplatinum_earrings.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["zomo_lemon"] = {
		label = "Zomo Lemon Mint",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "zomo_lemon.png",
		}
	},

	["burncream"] = {
		label = "Burn Cream",
		weight = 125,
		stack = true,
		close = true,
		description = "To help with burns",
		client = {
			image = "burncream.png",
		}
	},

	["chicken_family_meal"] = {
		label = "16Pc Chicken Family Meal Classic",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_family_meal.png",
		}
	},

	["black_jeans"] = {
		label = "Black Jeans",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "black_jeans.png",
		}
	},

	["crack_1oz"] = {
		label = "Ounce of Crack",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "crack_1oz.png",
		}
	},

	["switch"] = {
		label = "Switch",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "switch.png",
		}
	},

	["benzocaine"] = {
		label = "Benzocaine",
		weight = 500,
		stack = true,
		close = true,
		description = "Benzo? You got a toothache mate?",
		client = {
			image = "benzocaine.png",
		}
	},

	["bbq_wings"] = {
		label = "BBQ Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bbq_wings.png",
		}
	},

	["illegalgasoline"] = {
		label = "Illegal Gasoline",
		weight = 2500,
		stack = true,
		close = true,
		description = "Stolen gasoline? What are you doing with this?",
		client = {
			image = "illegalgasoline.png",
		}
	},

	["gold_bar"] = {
		label = "Gold Bar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gold_bar.png",
		}
	},

	["armored_cat"] = {
		label = "Armored Cat",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "armored_cat.png",
		}
	},

	["bugdetector"] = {
		label = "Bug Detector",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "bugdetector.png",
		}
	},

	["meth"] = {
		label = "1g of Meth",
		weight = 10,
		stack = true,
		close = true,
		description = "A gram of the finest teeth rotting goodness!",
		client = {
			image = "meth.png",
		}
	},

	["fried_calamari"] = {
		label = "Fried Calamari",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fried_calamari.png",
		}
	},

	["churros_dip"] = {
		label = "Churros Dip",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "churros_dip.png",
		}
	},

	["weed_gelato_joint"] = {
		label = "Gelato: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest gelato!",
		client = {
			image = "weed_gelato_joint.png",
		}
	},

	["ps_dr_pepper"] = {
		label = "Dr Pepper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ps_dr_pepper.png",
		}
	},

	["wake_up_wrap"] = {
		label = "WAKE-UP WRAP",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wake_up_wrap.png",
		}
	},

	["backwoods_honey"] = {
		label = "Backwoods Honey",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "backwoods_honey.png",
		}
	},

	["chain_richman"] = {
		label = "Chain Richman",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_richman.png",
		}
	},

	["weed_purplehaze_seed_f"] = {
		label = "Purple-Haze: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized purple-haze seed.",
		client = {
			image = "weed_purplehaze_seed_f.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 120,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["chicken_biscuit"] = {
		label = "Chicken Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_biscuit.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	['oasis_drink'] = {
		label = 'Oasis',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'water',
			prop = 'water',
			usetime = 2500,
			notification = 'You drank a refreshing Oasis'
		},
	},


	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["panther"] = {
		label = "Panther",
		weight = 100,
		stack = true,
		close = true,
		description = "Stolen Artwork",
		client = {
			image = "vanpanther.png",
		}
	},

	["ketamine"] = {
		label = "Bag of Ketamine",
		weight = 100,
		stack = true,
		close = true,
		description = "A bag of ketamine!",
		client = {
			image = "ketamine.png",
		}
	},

	["bs_fanta_orange"] = {
		label = "Medium Fanta Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_fanta_orange.png",
		}
	},

	["lemon_pepper_wings"] = {
		label = "Lemon Pepper Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lemon_pepper_wings.png",
		}
	},

	["cool_wrap"] = {
		label = "Cool Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cool_wrap.png",
		}
	},

	["grouper"] = {
		label = "Grouper",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grouper.png",
		}
	},

	["taco_regular"] = {
		label = "Taco Regular",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "taco_regular.png",
		}
	},

	["cinnamon_apple_pie"] = {
		label = "Cinnamon Apple Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cinnamon_apple_pie.png",
		}
	},

	["mac_cheese_meal"] = {
		label = "Mac & Cheese Kids Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mac_cheese_meal.png",
		}
	},

	["opium"] = {
		label = "Opium Sap",
		weight = 100,
		stack = true,
		close = true,
		description = "Opium, do you know how to refine it?",
		client = {
			image = "opium.png",
		}
	},

	["zushi"] = {
		label = "Zushi",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "zushi.png",
		}
	},

	["blueberry_cruffin"] = {
		label = "Blueberry Cruffin",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blueberry_cruffin.png",
		}
	},

	["t_tango_orange"] = {
		label = "Tango Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "t_tango_orange.png",
		}
	},

	["defib"] = {
		label = "Defibrillator",
		weight = 1120,
		stack = true,
		close = true,
		description = "Used to revive patients",
		client = {
			image = "defib.png",
		}
	},

	["hash_browns"] = {
		label = "Hash Browns",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hash_browns.png",
		}
	},

	["externals"] = {
		label = "Exterior Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["w_tango_orange"] = {
		label = "Tango Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_tango_orange.png",
		}
	},

	["pirckly_pear"] = {
		label = "Pirckly Pear",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pirckly_pear.png",
		}
	},

	["bs_cafe_decaf"] = {
		label = "Medium BK Cafe Decaf",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_cafe_decaf.png",
		}
	},

	["bottle_diet_coke"] = {
		label = "20oz Bottle Diet Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bottle_diet_coke.png",
		}
	},

	["white_runtz_joint"] = {
		label = "White Runtz Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "white_runtz_joint.png",
		}
	},

	["triple_meal_deal"] = {
		label = "Chicken Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "triple_meal_deal.png",
		}
	},

	["georgia_pie"] = {
		label = "Georgia Pie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "georgia_pie.png",
		}
	},

	["icedream_cup"] = {
		label = "Icedream Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "icedream_cup.png",
		}
	},

	["empty_cup"] = {
		label = "Lean cup",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "empty_cup.png",
		}
	},

	["shark"] = {
		label = "Shark",
		weight = 7500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shark.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["goldchain"] = {
		label = "Gold Chain",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "goldchain.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest skunk flower!",
		client = {
			image = "weed_skunk.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["pasta_primavera"] = {
		label = "Pasta Primavera",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pasta_primavera.png",
		}
	},

	["wingstop_dips"] = {
		label = "DIPS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wingstop_dips.png",
		}
	},

	["coke_pooch"] = {
		label = "Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "coke_pooch.png",
		}
	},

	["dunkin_macchiato"] = {
		label = "MACCHIATO",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_macchiato.png",
		}
	},

	["shells_clam_chowder"] = {
		label = "Shells Clam Chowder",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shells_clam_chowder.png",
		}
	},

	["collins_ave_joint"] = {
		label = "Collins AVE Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "collins_ave_joint.png",
		}
	},

	["runtz_og"] = {
		label = "Runtz OG",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "runtz_og.png",
		}
	},

	["pink_sandy_joint"] = {
		label = "Pink Sandy Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pink_sandy_joint.png",
		}
	},

	["chicken_habanero"] = {
		label = "Chicken Habanero",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chicken_habanero.png",
		}
	},

	["methbrick"] = {
		label = "Meth Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "methbrick.png",
		}
	},

	["weed_ak47_seed_m"] = {
		label = "AK47: Seed (M)",
		weight = 1,
		stack = true,
		close = true,
		description = "A male ak47 seed!",
		client = {
			image = "weed_ak47_seed_m.png",
		}
	},

	["weed_spray"] = {
		label = "Weed Spray",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_spray.png",
		}
	},

	["applesauce"] = {
		label = "Applesauce",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "applesauce.png",
		}
	},

	["adalya_love"] = {
		label = "Adalya Love 66",
		weight = 500,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "adalya_love.png",
		}
	},

	["d_coca_cola"] = {
		label = "Coca Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "d_coca_cola.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest amnesia flower!",
		client = {
			image = "weed_amnesia.png",
		}
	},

	["chain_dogtag"] = {
		label = "Chain Dogtag",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chain_dogtag.png",
		}
	},

	["turbo"] = {
		label = "Supercharger Turbo",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "turbo.png",
		}
	},

	["bites_group_pack"] = {
		label = "THIGH BITES GROUP PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bites_group_pack.png",
		}
	},

	["monky"] = {
		label = "Monkey",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "monky.png",
		}
	},

	["lsd"] = {
		label = "LSD",
		weight = 10,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "lsd.png",
		}
	},

	["bacon_ham_sausage"] = {
		label = "Fully Loaded Bacon Ham Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bacon_ham_sausage.png",
		}
	},

	["md_ginger_ale"] = {
		label = "MD Ginger Ale",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "md_ginger_ale.png",
		}
	},

	["cheese_quesadilla"] = {
		label = "Cheese Quesadilla",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheese_quesadilla.png",
		}
	},

	["fine_china"] = {
		label = "Fine China",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fine_china.png",
		}
	},

	["jefe"] = {
		label = "Jefe",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jefe.png",
		}
	},

	["dino_student"] = {
		label = "Dino",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "dino_student.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["fox"] = {
		label = "Fox",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "fox.png",
		}
	},

	["soft_taco"] = {
		label = "Soft Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soft_taco.png",
		}
	},

	["underglow"] = {
		label = "Underglow LEDS",
		weight = 0,
		stack = false,
		close = true,
		description = "Underglow addition for vehicles",
		client = {
			image = "underglow.png",
		}
	},

	["weed_ogkush"] = {
		label = "OG-Kush: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest og-kush flower!",
		client = {
			image = "weed_ogkush.png",
		}
	},

	["egg_cheese_biscuit"] = {
		label = "Egg Cheese Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "egg_cheese_biscuit.png",
		}
	},

	["quesadilla_cravings"] = {
		label = "Quesadilla Cravings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "quesadilla_cravings.png",
		}
	},

	["bomb"] = {
		label = "Bomb",
		weight = 5,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weapon_stickybomb.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["ice_cream_cake_pack_joint"] = {
		label = "Ice Cream Cake Pack Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ice_cream_cake_pack_joint.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["market_salad"] = {
		label = "Market Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "market_salad.png",
		}
	},

	["brakes2"] = {
		label = "Tier 2 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["crunchy_taco_supreme"] = {
		label = "Crunchy Taco Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crunchy_taco_supreme.png",
		}
	},

	["covgari_gold"] = {
		label = "Covgari Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "covgari_gold.png",
		}
	},

	["chick_n_minis"] = {
		label = "Chick-n-Minis",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chick_n_minis.png",
		}
	},

	["cylind1"] = {
		label = "Tier 1 Cylinder Head",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cylind1.png",
		}
	},

	["thirty_crispy_tenders"] = {
		label = "30 CRISPY TENDERS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "thirty_crispy_tenders.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "coffee.png",
		}
	},

	["dino"] = {
		label = "Dino",
		weight = 0,
		stack = true,
		close = true,
		description = "Looks expensive to me o.o",
		client = {
			image = "dino.png",
		}
	},

	["buttered_biscuit"] = {
		label = "Buttered Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "buttered_biscuit.png",
		}
	},

	["mc_diet_coke"] = {
		label = "Diet Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_diet_coke.png",
		}
	},

	["pogo"] = {
		label = "Pogo",
		weight = 100,
		stack = true,
		close = true,
		description = "Stolen Artwork",
		client = {
			image = "vanpogo.png",
		}
	},

	["vic5"] = {
		label = "Vicodin 5MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "vic5.png",
		}
	},

	["small_onion_rings"] = {
		label = "Small Onion Rings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "small_onion_rings.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["weed_gelato"] = {
		label = "Gelato: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest gelato flower!",
		client = {
			image = "weed_gelato.png",
		}
	},

	["white_runtz"] = {
		label = "White Runtz",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "white_runtz.png",
		}
	},

	["tropical_mango_slushie"] = {
		label = "Tropical Mango Slushie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tropical_mango_slushie.png",
		}
	},

	["gelatti_joint"] = {
		label = "Gelatti Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gelatti_joint.png",
		}
	},

	["mc_fruit_punch"] = {
		label = "Fruit Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_fruit_punch.png",
		}
	},

	["goldrolex"] = {
		label = "Gold Rolex",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "goldrolex.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["pooch_bag"] = {
		label = "Pooch Bag",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pooch_bag.png",
		}
	},

	["ammonia"] = {
		label = "Ammonia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ammonia is a colorless, highly irritating gas with a pungent, suffocating odor.",
		client = {
			image = "ammonia.png",
		}
	},

	["threequarter_raglan_sleeve"] = {
		label = "Three Quarter Raglan Sleeve",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "threequarter_raglan_sleeve.png",
		}
	},

	["bobby_pin"] = {
		label = "Bobby Pin",
		weight = 2500,
		stack = true,
		close = true,
		description = "Can be used as a makeshift tool for picking locks",
		client = {
			image = "bobby_pin.png",
		}
	},

	["weed_zkittlez_joint"] = {
		label = "Zkittlez: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest zkittlez!",
		client = {
			image = "weed_zkittlez_joint.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["chilled_premium_lemonade"] = {
		label = "Chilled Premium Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chilled_premium_lemonade.png",
		}
	},

	["whitecherry_gelato_joint"] = {
		label = "Whitecherry Gelato Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whitecherry_gelato_joint.png",
		}
	},

	["xpills"] = {
		label = "X-Pills",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "xpills.png",
		}
	},

	["meat_zza"] = {
		label = "Meat ZZa",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meat_zza.png",
		}
	},

	["packaged_coffee"] = {
		label = "PACKAGED COFFEE",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "packaged_coffee.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["skirts"] = {
		label = "Vehicle Skirts",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["mc_iced_tea"] = {
		label = "Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mc_iced_tea.png",
		}
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},

	["weed_ogkush_joint"] = {
		label = "OG-Kush: Joint",
		weight = 1,
		stack = true,
		close = false,
		description = "A 1g joint of the finest og-kush!",
		client = {
			image = "weed_ogkush_joint.png",
		}
	},

	["cajun_fried_corn"] = {
		label = "CAJUN FRIED CORN",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cajun_fried_corn.png",
		}
	},

	["crab_legs_meal"] = {
		label = "Crab Legs Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crab_legs_meal.png",
		}
	},

	["brewed_iced_tea"] = {
		label = "Brewed Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "brewed_iced_tea.png",
		}
	},

	["hundred_wings"] = {
		label = "100 WINGS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hundred_wings.png",
		}
	},

	["cali_chicken_bacon"] = {
		label = "Cali Chicken Bacon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cali_chicken_bacon.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["fine_china_joint"] = {
		label = "Fine China Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fine_china_joint.png",
		}
	},

	["orange_juice"] = {
		label = "Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "orange_juice.png",
		}
	},

	["waffle_potato_fries"] = {
		label = "Waffle Potato Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "waffle_potato_fries.png",
		}
	},

	["weed_zkittlez_seed_f"] = {
		label = "Zkittlez: Seed (F)",
		weight = 1,
		stack = true,
		close = true,
		description = "A feminized zkittlez seed.",
		client = {
			image = "weed_zkittlez_seed_f.png",
		}
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},

	["oilp3"] = {
		label = "Tier 3 Oil Pump",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "oilp3.png",
		}
	},

	["xenonsgold"] = {
		label = "Gold Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsgold.png",
		}
	},

	["kronos_gold"] = {
		label = "Kronos Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kronos_gold.png",
		}
	},

	["cashbon"] = {
		label = "Cashbon",
		weight = 200,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "cashbon.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["perc30"] = {
		label = "Percocet 30MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "perc30.png",
		}
	},

	["nuggets_kids_meal"] = {
		label = "6Pc Nuggets Kids Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nuggets_kids_meal.png",
		}
	},

	["dunkin_muffins"] = {
		label = "MUFFINS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_muffins.png",
		}
	},

	["cheeseburger_combo_meal"] = {
		label = "Cheeseburger Combo Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cheeseburger_combo_meal.png",
		}
	},

	["worms"] = {
		label = "Worms",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "worms.png",
		}
	},

	["blindfold"] = {
		label = "Blindfold",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "blindfold.png",
		}
	},

	["gourmet_double_burger"] = {
		label = "Gourmet Double Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gourmet_double_burger.png",
		}
	},

	["froties_joint"] = {
		label = "Froties Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "froties_joint.png",
		}
	},

	["drug_cuttingkit"] = {
		label = "Cutting Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A mirror, a razor blade.. obviously this is a make up kit..",
		client = {
			image = "drug_cuttingkit.png",
		}
	},

	["bigger_family_feast"] = {
		label = "Bigger Family Feast",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bigger_family_feast.png",
		}
	},

	["chocolate_milk"] = {
		label = "Chocolate Milk",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate_milk.png",
		}
	},

	["marshmallow_crisp"] = {
		label = "Marshmallow Crisp",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "marshmallow_crisp.png",
		}
	},

	["regular_coleslaw"] = {
		label = "Regular Coleslaw",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "regular_coleslaw.png",
		}
	},

	["dunkin_tea"] = {
		label = "TEA",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dunkin_tea.png",
		}
	},

	["xenonsrouge"] = {
		label = "Red Xenons",
		weight = 100.0,
		stack = true,
		close = true,
		client = {
			image = "xenonsrouge.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["vape"] = {
		label = "Vape",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "vape.png",
		}
	},

	["weed_purplehaze"] = {
		label = "Purple-Haze: 2g",
		weight = 2,
		stack = true,
		close = false,
		description = "A 2g bag of the finest purple-haze flower!",
		client = {
			image = "weed_purplehaze.png",
		}
	},

	["crowex_black"] = {
		label = "Crowex Black",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crowex_black.png",
		}
	},

	["foil"] = {
		label = "Foil Paper",
		weight = 150,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "foil.png",
		}
	},

	["catfish"] = {
		label = "Catfish",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "catfish.png",
		}
	},

	["foil_poked"] = {
		label = "Foil Poked",
		weight = 500,
		stack = true,
		close = false,
		description = "...",
		client = {
			image = "foil_poked.png",
		}
	},

	["sour_diesel_joint"] = {
		label = "Sour Diesel Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sour_diesel_joint.png",
		}
	},

	["asain_zest_wings"] = {
		label = "Asain Zest Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "asain_zest_wings.png",
		}
	},

	["rustygun"] = {
		label = "Rusty Gun",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "rustygun.png",
		}
	},

	["shrimp_pasta"] = {
		label = "Shrimp Pasta",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shrimp_pasta.png",
		}
	},

	["rotisserie_wings"] = {
		label = "Rotisserie Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rotisserie_wings.png",
		}
	},

	["white_stone"] = {
		label = "White Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "white_stone.png",
		}
	},

	["actioncam"] = {
		label = "Action Camera",
		weight = 100,
		stack = true,
		close = true,
		description = "...",
		client = {
			image = "actioncam.png",
		}
	},

	["blueberry_jam_cookie"] = {
		label = "Blueberry Jam Cookie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blueberry_jam_cookie.png",
		}
	},

	["mediterranean_veggie"] = {
		label = "Mediterranean Veggie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mediterranean_veggie.png",
		}
	},


	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["pumpkin_cookie"] = {
		label = "Pumpkin Cookie",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pumpkin_cookie.png",
		}
	},

	["can"] = {
		label = "can",
		weight = 5,
		stack = true,
		close = true,
		description = "Can",
		client = {
			image = "can.png",
		}
	},

	["recyclablematerial"] = {
		label = "recyclablematerial",
		weight = 5,
		stack = true,
		close = true,
		description = "recyclablematerial",
		client = {
			image = "recyclablematerial.png",
		}
	},

	["casino_chips"] = {
		label = "casinochips",
		weight = 5,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "casino_chips.png",
		}
	},

	["w_ar_carbinerifle"] = {
		label = "pd gun",
		weight = 5,
		stack = false,
		close = false,
		description = "0x0x",
		client = {
			image = "casino_chips.png",
		}
	},



	["empty_lean_bottle"] = {
		label = "Empty Lean Bottle",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "empty_lean_bottle.png",
		}
	},

	["chemicals"] = {
		label = "Chemicals",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "chemicals.png",
		}
	},

	["raw_lean"] = {
		label = "Lean ingredients",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "raw_lean.png",
		}
	},

	["heroin"] = {
		label = "Heroin",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "heroin.png",
		}
	},

	["spice_leaf"] = {
		label = "Spice Leaf",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "spice_leaf.png",
		}
	},
["mechanic_tools"] = {
    label = "Mechanic tools", weight = 0, stack = false, close = true, description = "Needed for vehicle repairs",
    client = { image = "mechanic_tools.png", event = "jim-mechanic:client:Repair:Check" }
},
["toolbox"] = {
    label = "Toolbox", weight = 0, stack = false, close = true, description = "Needed for Performance part removal",
    client = { image = "toolbox.png", event = "jim-mechanic:client:Menu" }
},
["ducttape"] = {
    label = "Duct Tape", weight = 0, stack = false, close = true, description = "Good for quick fixes",
    client = { image = "bodyrepair.png", event = "jim-mechanic:quickrepair" }
},
['mechboard'] = { label = 'Mechanic Sheet', weight = 0, stack = false, close = false,
    buttons = {
        { 	label = 'Copy Parts List',
            action = function(slot)
                local item = exports.ox_inventory:Search('slots', 'mechboard')
                for _, v in pairs(item) do
                    if (v.slot == slot) then lib.setClipboard(v.metadata.info.vehlist) break end
                end
            end },
        { 	label = 'Copy Plate Number',
            action = function(slot)
                local item = exports.ox_inventory:Search('slots', 'mechboard')
                for _, v in pairs(item) do
                    if (v.slot == slot) then lib.setClipboard(v.metadata.info.vehplate) break end
                end
            end },
        {	label = 'Copy Vehicle Model',
            action = function(slot)
                local item = exports.ox_inventory:Search('slots', 'mechboard')
                for _, v in pairs(item) do
                    if (v.slot == slot) then lib.setClipboard(v.metadata.info.veh) break  end
                end
            end },
    },
},
--Performance
["turbo"] = {
    label = "Supercharger Turbo", weight = 0, stack = false, close = true, description = "Who doesn't need a 65mm Turbo??",
    client = { image = "turbo.png", event = "jim-mechanic:client:applyTurbo", remove = false },
},
["car_armor"] = {
    label = "Vehicle Armor", weight = 0, stack = false, close = true, description = "",
    client = { image = "armour.png", event = "jim-mechanic:client:applyArmour", remove = false },
},
["nos"] = {
    label = "NOS Bottle", weight = 0, stack = false, close = true, description = "A full bottle of NOS",
    client = { image = "nos.png", event = "jim-mechanic:client:applyNOS", },
},
["noscan"] = {
    label = "Empty NOS Bottle", weight = 0, stack = true, close = true, description = "An Empty bottle of NOS",
    client = { image = "noscan.png", }
},
["noscolour"] = {
    label = "NOS Colour Injector", weight = 0, stack = true, close = true, description = "Make that purge spray",
    client = { image = "noscolour.png", }
},

["engine1"] = {
    label = "Tier 1 Engine", weight = 0, stack = false, close = true, description = "",
    client = { image = "engine1.png",  event = "jim-mechanic:client:applyEngine", level = 0, remove = false },
},
["engine2"] = {
    label = "Tier 2 Engine", weight = 0, stack = false, close = true, description = "",
    client = { image = "engine2.png",  event = "jim-mechanic:client:applyEngine", level = 1, remove = false },
},
["engine3"] = {
    label = "Tier 3 Engine", weight = 0, stack = false, close = true, description = "",
    client = { image = "engine3.png",  event = "jim-mechanic:client:applyEngine", level = 2, remove = false },
},
["engine4"] = {
    label = "Tier 4 Engine", weight = 0, stack = false, close = true, description = "",
    client = { image = "engine4.png",  event = "jim-mechanic:client:applyEngine", level = 3, remove = false },
},
["engine5"] = {
    label = "Tier 5 Engine", weight = 0, stack = false, close = true, description = "",
    client = { image = "engine5.png",  event = "jim-mechanic:client:applyEngine", level = 4, remove = false },
},

["transmission1"] = {
    label = "Tier 1 Transmission", weight = 0, stack = false, close = true, description = "",
    client = { image = "transmission1.png",  event = "jim-mechanic:client:applyTransmission", level = 0, remove = false },
},
["transmission2"] = {
    label = "Tier 2 Transmission", weight = 0, stack = false, close = true, description = "",
    client = { image = "transmission2.png",  event = "jim-mechanic:client:applyTransmission", level = 1, remove = false },
},
["transmission3"] = {
    label = "Tier 3 Transmission", weight = 0, stack = false, close = true, description = "",
    client = { image = "transmission3.png",  event = "jim-mechanic:client:applyTransmission", level = 2, remove = false },
},
["transmission4"] = {
    label = "Tier 4 Transmission", weight = 0, stack = false, close = true, description = "",
    client = { image = "transmission4.png",  event = "jim-mechanic:client:applyTransmission", level = 3, remove = false },
},

["brakes1"] = {
    label = "Tier 1 Brakes", weight = 0, stack = false, close = true, description = "",
    client = { image = "brakes1.png",  event = "jim-mechanic:client:applyBrakes", level = 0, remove = false },
},
["brakes2"] = {
    label = "Tier 2 Brakes", weight = 0, stack = false, close = true, description = "",
    client = { image = "brakes2.png",  event = "jim-mechanic:client:applyBrakes", level = 1, remove = false },
},
["brakes3"] = {
    label = "Tier 3 Brakes", weight = 0, stack = false, close = true, description = "",
    client = { image = "brakes3.png",  event = "jim-mechanic:client:applyBrakes", level = 2, remove = false },
},

["suspension1"] = {
    label = "Tier 1 Suspension", weight = 0, stack = false, close = true, description = "",
    client = { image = "suspension1.png", event = "jim-mechanic:client:applySuspension",  level = 0, remove = false },
},
["suspension2"] = {
    label = "Tier 2 Suspension", weight = 0, stack = false, close = true, description = "",
    client = { image = "suspension2.png", event = "jim-mechanic:client:applySuspension", level = 1, remove = false },
},
["suspension3"] = {
    label = "Tier 3 Suspension", weight = 0, stack = false, close = true, description = "",
    client = { image = "suspension3.png", event = "jim-mechanic:client:applySuspension", level = 2, remove = false },
},
["suspension4"] = {
    label = "Tier 4 Suspension", weight = 0, stack = false, close = true, description = "",
    client = { image = "suspension4.png", event = "jim-mechanic:client:applySuspension", level = 3, remove = false },
},
["suspension5"] = {
    label = "Tier 5 Suspension", weight = 0, stack = false, close = true, description = "",
    client = { image = "suspension5.png", event = "jim-mechanic:client:applySuspension", level = 4, remove = false },
},

["bprooftires"] = {
    label = "Bulletproof Tires", weight = 0, stack = false, close = true, description = "",
    client = { image = "bprooftires.png", event = "jim-mechanic:client:applyBulletProof", remove = false },
},
["drifttires"] = {
    label = "Drift Tires", weight = 0, stack = false, close = true, description = "",
    client = { image = "drifttires.png", event = "jim-mechanic:client:applyDrift", remove = false },
},

["oilp1"] = {
    label = "Tier 1 Oil Pump", weight = 0, stack = false, close = true, description = "",
    client = { image = "oilp1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "oilp", remove = false },
},
["oilp2"] = {
    label = "Tier 2 Oil Pump", weight = 0, stack = false, close = true, description = "",
    client = { image = "oilp2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "oilp", remove = false },
},
["oilp3"] = {
    label = "Tier 3 Oil Pump", weight = 0, stack = false, close = true, description = "",
    client = { image = "oilp3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "oilp", remove = false },
},

["drives1"] = {
    label = "Tier 1 Drive Shaft", weight = 0, stack = false, close = true, description = "",
    client = { image = "drives1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "drives", remove = false },
},
["drives2"] = {
    label = "Tier 2 Drive Shaft", weight = 0, stack = false, close = true, description = "",
    client = { image = "drives2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "drives", remove = false },
},
["drives3"] = {
    label = "Tier 3 Drive Shaft", weight = 0, stack = false, close = true, description = "",
    client = { image = "drives3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "drives", remove = false },
},

["cylind1"] = {
    label = "Tier 1 Cylinder Head", weight = 0, stack = false, close = true, description = "",
    client = { image = "cylind1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "cylind", remove = false },
},
["cylind2"] = {
    label = "Tier 2 Cylinder Head", weight = 0, stack = false, close = true, description = "",
    client = { image = "cylind2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "cylind", remove = false },
},
["cylind3"] = {
    label = "Tier 3 Cylinder Head", weight = 0, stack = false, close = true, description = "",
    client = { image = "cylind3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "cylind", remove = false },
},

["cables1"] = {
    label = "Tier 1 Battery Cables", weight = 0, stack = false, close = true, description = "",
    client = { image = "cables1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "cables", remove = false },
},
["cables2"] = {
    label = "Tier 2 Battery Cables", weight = 0, stack = false, close = true, description = "",
    client = { image = "cables2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "cables", remove = false },
},
["cables3"] = {
    label = "Tier 3 Battery Cables", weight = 0, stack = false, close = true, description = "",
    client = { image = "cables3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "cables", remove = false },
},

["fueltank1"] = {
    label = "Tier 1 Fuel Tank", weight = 0, stack = false, close = true, description = "",
    client = { image = "fueltank1.png", event = "jim-mechanic:client:applyExtraPart", level = 1, mod = "fueltank", remove = false },
},
["fueltank2"] = {
    label = "Tier 2 Fuel Tank", weight = 0, stack = false, close = true, description = "",
    client = { image = "fueltank2.png", event = "jim-mechanic:client:applyExtraPart", level = 2, mod = "fueltank", remove = false },
},
["fueltank3"] = {
    label = "Tier 3 Fuel Tank", weight = 0, stack = false, close = true, description = "",
    client = { image = "fueltank3.png", event = "jim-mechanic:client:applyExtraPart", level = 3, mod = "fueltank", remove = false },
},

["antilag"] = {
    label = "AntiLag", weight = 0, stack = false, close = true, description = "",
    client = { image = "antiLag.png", event = "jim-mechanic:client:applyAntiLag", remove = false },
},

["underglow_controller"] = {
    label = "Neon Controller", weight = 0, stack = false, close = true, description = "",
    client = { image = "underglow_controller.png", event = "jim-mechanic:client:neonMenu", },
},
["headlights"] = {
    label = "Xenon Headlights", weight = 0, stack = false, close = true, description = "",
    client = { image = "headlights.png", event = "jim-mechanic:client:applyXenons", },
},

["tint_supplies"] = {
    label = "Window Tint Kit", weight = 0, stack = false, close = true, description = "",
    client = { image = "tint_supplies.png", event = "jim-mechanic:client:Cosmetic:Check", },
},

["customplate"] = {
    label = "Customized Plates", weight = 0, stack = false, close = true, description = "",
    client = { image = "plate.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["hood"] = {
    label = "Vehicle Hood", weight = 0, stack = false, close = true, description = "",
    client = { image = "hood.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["roof"] = {
    label = "Vehicle Roof", weight = 0, stack = false, close = true, description = "",
    client = { image = "roof.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["spoiler"] = {
    label = "Vehicle Spoiler", weight = 0, stack = false, close = true, description = "",
    client = { image = "spoiler.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["bumper"] = {
    label = "Vehicle Bumper", weight = 0, stack = false, close = true, description = "",
    client = { image = "bumper.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["skirts"] = {
    label = "Vehicle Skirts", weight = 0, stack = false, close = true, description = "",
    client = { image = "skirts.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["exhaust"] = {
    label = "Vehicle Exhaust", weight = 0, stack = false, close = true, description = "",
    client = { image = "exhaust.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["seat"] = {
    label = "Seat Cosmetics", weight = 0, stack = false, close = true, description = "",
    client = { image = "seat.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["rollcage"] = {
    label = "Roll Cage", weight = 0, stack = false, close = true, description = "",
    client = { image = "rollcage.png", event = "jim-mechanic:client:Cosmetic:Check", },
},

["rims"] = {
    label = "Custom Wheel Rims", weight = 0, stack = false, close = true, description = "",
    client = { image = "rims.png", event = "jim-mechanic:client:Rims:Check", },
},

["livery"] = {
    label = "Livery Roll", weight = 0, stack = false, close = true, description = "",
    client = { image = "livery.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["paintcan"] = {
    label = "Vehicle Spray Can", weight = 0, stack = false, close = true, description = "",
    client = { image = "spraycan.png", event = "jim-mechanic:client:Paints:Check", },
},
["tires"] = {
    label = "Drift Smoke Tires", weight = 0, stack = false, close = true, description = "",
    client = { image = "tires.png", event = "jim-mechanic:client:Tires:Check", },
},

["horn"] = {
    label = "Custom Vehicle Horn", weight = 0, stack = false, close = true, description = "",
    client = { image = "horn.png", event = "jim-mechanic:client:Cosmetic:Check", },
},

["internals"] = {
    label = "Internal Cosmetics", weight = 0, stack = false, close = true, description = "",
    client = { image = "internals.png", event = "jim-mechanic:client:Cosmetic:Check", },
},
["externals"] = {
    label = "Exterior Cosmetics", weight = 0, stack = false, close = true, description = "",
    client = { image = "mirror.png", event = "jim-mechanic:client:Cosmetic:Check", },
},

["newoil"] = {
    label = "Car Oil", weight = 0, stack = false, close = true, description = "",
    client = { image = "caroil.png", },
},
["sparkplugs"] = {
    label = "Spark Plugs", weight = 0, stack = false, close = true, description = "",
    client = { image = "sparkplugs.png", },
},
["carbattery"] = {
    label = "Car Battery", weight = 0, stack = false, close = true, description = "",
    client = { image = "carbattery.png", },
},
["axleparts"] = {
    label = "Axle Parts", weight = 0, stack = false, close = true, description = "",
    client = { image = "axleparts.png", },
},
["sparetire"] = {
    label = "Spare Tire", weight = 0, stack = false, close = true, description = "",
    client = { image = "sparetire.png", },
},

["harness"] = {
    label = "Race Harness", weight = 0, stack = true, close = true, description = "Racing Harness so no matter what you stay in the car",
    client = { image = "harness.png", event = "jim-mechanic:client:applyHarness", remove = false },
},

["manual"] = {
    label = "Manual Transmission", weight = 0, stack = true, close = true, description = "Manual Transmission change for vehicles",
    client = { image = "manual.png", event = "jim-mechanic:client:applyManual", remove = false },
},

["underglow"] = {
    label = "Underglow LEDS", weight = 0, stack = true, close = true, description = "Underglow addition for vehicles",
    client = { image = "underglow.png", event = "jim-mechanic:client:applyUnderglow", remove = false },
},

["cleaningkit"] = {
    label = "Cleaning Kit", weight = 0, stack = true, close = true, description = "A microfiber cloth with some soap will let your car sparkle again!",
    client = { image = "cleaningkit.png", event = "jim-mechanic:client:cleanVehicle"},
},
["repairkit"] = {
    label = "Repairkit", weight = 0, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle",
    client = { image = "repairkit.png", event = "jim-mechanic:vehFailure:RepairVehicle", item = "repairkit", full = false },
},
["advancedrepairkit"] = {
    label = "Advanced Repairkit", weight = 0, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle",
    client = { image = "advancedkit.png", event = "jim-mechanic:vehFailure:RepairVehicle", item = "advancedrepairkit", full = true },
},

	["big_drill"] = {
		label = "big Drill",
		weight = 24,
		stack = false,
		close = false,
		description = "Big Drill",
		client = {
			image = "drill.png",
		}
	},	

	["ponsonbys_belt"] = {
		label = "Classy Belt",
		weight = 100,
		stack = true,
		close = true,
		description = "Classy Belt",
		client = {
			image = "ponsonbys_belt.png",
		}
	},

	["suburban_sweatshirt"] = {
		label = "Suburban Sweatshirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Sweatshirt",
		client = {
			image = "suburban_sweatshirt.png",
		}
	},

	["suburban_shirt"] = {
		label = "Suburban Shirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Shirt",
		client = {
			image = "suburban_shirt.png",
		}
	},

	["binco_basic_vest"] = {
		label = "Basic Vest",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Vest",
		client = {
			image = "binco_basic_vest.png",
		}
	},

	["suburban_jogger"] = {
		label = "Suburban Jogger",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Jogger",
		client = {
			image = "suburban_jogger.png",
		}
	},

	["suburban_chain"] = {
		label = "Chain",
		weight = 100,
		stack = true,
		close = true,
		description = "Chain",
		client = {
			image = "suburban_chain.png",
		}
	},

	["spandex"] = {
		label = "Spandex",
		weight = 100,
		stack = true,
		close = true,
		description = "Spandex",
		client = {
			image = "spandex.png",
		}
	},

	["limestone"] = {
		label = "Limestone",
		weight = 100,
		stack = true,
		close = true,
		description = "Limestone",
		client = {
			image = "limestone.png",
		}
	},

	["copper_ore"] = {
		label = "Copper Ore",
		weight = 100,
		stack = true,
		close = true,
		description = "Copper Ore",
		client = {
			image = "copper_ore.png",
		}
	},

	["suburban_short"] = {
		label = "Suburban Short",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Short",
		client = {
			image = "suburban_short.png",
		}
	},

	["binco_basic_sweatshirt"] = {
		label = "Basic Sweatshirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Sweatshirt",
		client = {
			image = "binco_basic_sweatshirt.png",
		}
	},

	["ponsonbys_shirt"] = {
		label = "Grey Shirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Grey Shirt",
		client = {
			image = "ponsonbys_shirt.png",
		}
	},

	["linen"] = {
		label = "Linen",
		weight = 100,
		stack = true,
		close = true,
		description = "Linen",
		client = {
			image = "linen.png",
		}
	},

	["suburban_skirt"] = {
		label = "Skirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Skirt",
		client = {
			image = "suburban_skirt.png",
		}
	},

	["rock"] = {
		label = "Rock",
		weight = 100,
		stack = true,
		close = true,
		description = "Rock",
		client = {
			image = "rock.png",
		}
	},

	["ponsonbys_suit"] = {
		label = "Full Suit",
		weight = 100,
		stack = true,
		close = true,
		description = "Full Suit",
		client = {
			image = "ponsonbys_suit.png",
		}
	},

	["ingot_mold"] = {
		label = "Ingot Mold",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingot Mold",
		client = {
			image = "ingot_mold.png",
		}
	},

	["iron_ore"] = {
		label = "Iron Ore",
		weight = 100,
		stack = true,
		close = true,
		description = "Iron Ore",
		client = {
			image = "iron_ore.png",
		}
	},

	["normal_pickaxe"] = {
		label = "Normal Pickaxe",
		weight = 100,
		stack = false,
		close = true,
		description = "Normal Pickaxe",
		client = {
			image = "normal_pickaxe.png",
		}
	},

	["binco_basic_short"] = {
		label = "Basic Short",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Short",
		client = {
			image = "binco_basic_short.png",
		}
	},

	["binco_basic_tshirt"] = {
		label = "Basic Tshirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Tshirt",
		client = {
			image = "binco_basic_tshirt.png",
		}
	},

	["sticky_gel"] = {
		label = "Sticky Gel",
		weight = 100,
		stack = true,
		close = true,
		description = "Sticky Gel",
		client = {
			image = "sticky_gel.png",
		}
	},

	["binco_basic_shirt"] = {
		label = "Basic Shirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Shirt",
		client = {
			image = "binco_basic_shirt.png",
		}
	},

	["goldingot"] = {
		label = "Gold Ingot",
		weight = 100,
		stack = true,
		close = true,
		description = "Gold Ingot",
		client = {
			image = "wool.png",
		}
	},

	["nubuck"] = {
		label = "Nubuck",
		weight = 100,
		stack = true,
		close = true,
		description = "Nubuck",
		client = {
			image = "nubuck.png",
		}
	},

	["blackpowder"] = {
		label = "Black Powder",
		weight = 100,
		stack = true,
		close = true,
		description = "Black Powder",
		client = {
			image = "blackpowder.png",
		}
	},

	["rope_reel"] = {
		label = "Rope Reel",
		weight = 100,
		stack = true,
		close = true,
		description = "Rope Reel",
		client = {
			image = "rope_reel.png",
		}
	},

	["ponsonbys_waistcoats"] = {
		label = "Waistcoats",
		weight = 100,
		stack = true,
		close = true,
		description = "Waistcoats",
		client = {
			image = "ponsonbys_waistcoats.png",
		}
	},

	["hemp"] = {
		label = "Hemp",
		weight = 100,
		stack = true,
		close = true,
		description = "Hemp",
		client = {
			image = "hemp.png",
		}
	},

	["lyocell"] = {
		label = "Lyocell",
		weight = 100,
		stack = true,
		close = true,
		description = "Lyocell",
		client = {
			image = "lyocell.png",
		}
	},

	["steel_bobbin"] = {
		label = "Steel Bobbin",
		weight = 100,
		stack = true,
		close = true,
		description = "Steel Bobbin",
		client = {
			image = "steel_bobbin.png",
		}
	},

	["jute"] = {
		label = "Jute",
		weight = 100,
		stack = true,
		close = true,
		description = "Jute",
		client = {
			image = "jute.png",
		}
	},

	["gold_ore"] = {
		label = "Gold Ore",
		weight = 100,
		stack = true,
		close = true,
		description = "Gold Ore",
		client = {
			image = "goldingot.png",
		}
	},

	["silver"] = {
		label = "Silver",
		weight = 100,
		stack = true,
		close = true,
		description = "Silver",
		client = {
			image = "silver.png",
		}
	},

	["iron_ingot"] = {
		label = "Iron Ingot",
		weight = 100,
		stack = true,
		close = true,
		description = "Iron Ingot",
		client = {
			image = "iron_ingot.png",
		}
	},

	["binco_basic_blazer"] = {
		label = "Basic Blazer",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Blazer",
		client = {
			image = "binco_basic_blazer.png",
		}
	},

	["thin_needle"] = {
		label = "Thin Needle",
		weight = 100,
		stack = true,
		close = true,
		description = "Thin Needle",
		client = {
			image = "thin_needle.png",
		}
	},

	["copper_ingot"] = {
		label = "Copper Ingot",
		weight = 100,
		stack = true,
		close = true,
		description = "Copper Ingot",
		client = {
			image = "copper_ingot.png",
		}
	},

	["special_water"] = {
		label = "Special Water",
		weight = 100,
		stack = true,
		close = true,
		description = "Special Water",
		client = {
			image = "special_water.png",
		}
	},

	["diamond_ore"] = {
		label = "Diamond Ore",
		weight = 100,
		stack = true,
		close = true,
		description = "Diamond Ore",
		client = {
			image = "diamond_ore.png",
		}
	},

	["ponsonbys_jacket"] = {
		label = "Suit Jacket",
		weight = 100,
		stack = true,
		close = true,
		description = "Suit Jacket",
		client = {
			image = "ponsonbys_jacket.png",
		}
	},

	["cupro"] = {
		label = "Cupro",
		weight = 100,
		stack = true,
		close = true,
		description = "Cupro",
		client = {
			image = "cupro.png",
		}
	},

	["diamond_ingot"] = {
		label = "Diamond Ingot",
		weight = 100,
		stack = true,
		close = true,
		description = "Diamond Ingot",
		client = {
			image = "diamond_ingot.png",
		}
	},

	["suburban_bralet"] = {
		label = "Suburban Bralet",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Bralet",
		client = {
			image = "suburban_bralet.png",
		}
	},

	["quality_silk"] = {
		label = "Quality Silk",
		weight = 100,
		stack = true,
		close = true,
		description = "Quality Silk",
		client = {
			image = "quality_silk.png",
		}
	},

	["ponsonbys_tie"] = {
		label = "Tie",
		weight = 100,
		stack = true,
		close = true,
		description = "Tie",
		client = {
			image = "ponsonbys_tie.png",
		}
	},

	["professional_pickaxe"] = {
		label = "Professional Pickaxe",
		weight = 100,
		stack = true,
		close = true,
		description = "Professional Pickaxe",
		client = {
			image = "professional_pickaxe.png",
		}
	},

	["polyester"] = {
		label = "Polyester",
		weight = 100,
		stack = true,
		close = true,
		description = "Polyester",
		client = {
			image = "polyester.png",
		}
	},

	["sulfur"] = {
		label = "Sulfur",
		weight = 100,
		stack = true,
		close = true,
		description = "Sulfur",
		client = {
			image = "sulfur.png",
		}
	},

	["cashmere"] = {
		label = "Cashmere",
		weight = 100,
		stack = true,
		close = true,
		description = "Cashmere",
		client = {
			image = "cashmere.png",
		}
	},

	["binco_basic_blouse"] = {
		label = "Basic Blouse",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Blouse",
		client = {
			image = "binco_basic_blouse.png",
		}
	},

	["suburban_tshirt"] = {
		label = "Suburban Tshirt",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Tshirt",
		client = {
			image = "suburban_tshirt.png",
		}
	},

	["concrete"] = {
		label = "Concrete",
		weight = 100,
		stack = true,
		close = true,
		description = "Concrete",
		client = {
			image = "concrete.png",
		}
	},

	["sandstone"] = {
		label = "Sandstone",
		weight = 100,
		stack = true,
		close = true,
		description = "Sandstone",
		client = {
			image = "sandstone.png",
		}
	},

	["binco_basic_jumpsuit"] = {
		label = "Basic Jumpsuit",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Jumpsuit",
		client = {
			image = "binco_basic_jumpsuit.png",
		}
	},

	["wool"] = {
		label = "Wool Yarn",
		weight = 100,
		stack = true,
		close = true,
		description = "Wool Yarn",
		client = {
			image = "wool.png",
		}
	},

	["metal_bobbin"] = {
		label = "Metal Bobbin",
		weight = 100,
		stack = true,
		close = true,
		description = "Metal Bobbin",
		client = {
			image = "metal_bobbin.png",
		}
	},

	["suburban_dress"] = {
		label = "Suburban Dress",
		weight = 100,
		stack = true,
		close = true,
		description = "Suburban Dress",
		client = {
			image = "suburban_dress.png",
		}
	},

	["coal"] = {
		label = "Coal",
		weight = 100,
		stack = true,
		close = true,
		description = "Coal",
		client = {
			image = "coal.png",
		}
	},

	["acrylic"] = {
		label = "Acrylic",
		weight = 100,
		stack = true,
		close = true,
		description = "Acrylic",
		client = {
			image = "acrylic.png",
		}
	},

	["vehicletv"] = {
		label = "vehicletv",
		weight = 100,
		stack = true,
		close = true,
		description = "vehicletv",
		client = {
			image = "vehicletvc.png",
		}
	},

	["glass_mold"] = {
		label = "Glass Mold",
		weight = 100,
		stack = true,
		close = true,
		description = "Glass Mold",
		client = {
			image = "glass_mold.png",
		}
	},

	["advanced_pickaxe"] = {
		label = "Advanced Pickaxe",
		weight = 100,
		stack = false,
		close = true,
		description = "Advanced Pickaxe",
		client = {
			image = "advanced_pickaxe.png",
		}
	},

	["paint"] = {
		label = "Paint",
		weight = 100,
		stack = true,
		close = true,
		description = "Paint",
		client = {
			image = "paint.png",
		}
	},

	["wheelchair"] = {
		label = "wheelchair",
		weight = 100,
		stack = true,
		close = true,
		description = "wheelchair",
		client = {
			image = "wheelchair.png",
		}
	},

	["crutch"] = {
		label = "crutch",
		weight = 100,
		stack = true,
		close = true,
		description = "crutch",
		client = {
			image = "crutch.png",
		}
	},

	["binco_basic_singlet"] = {
		label = "Basic Singlet",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Singlet",
		client = {
			image = "binco_basic_singlet.png",
		}
	},

	["knitting_wheel"] = {
		label = "Knitting Wheel",
		weight = 100,
		stack = true,
		close = true,
		description = "Knitting Wheel",
		client = {
			image = "knitting_wheel.png",
		}
	},

	["cotton"] = {
		label = "Cotton",
		weight = 100,
		stack = true,
		close = true,
		description = "Cotton",
		client = {
			image = "cotton.png",
		}
	},

	["fiber"] = {
		label = "Fiber",
		weight = 100,
		stack = true,
		close = true,
		description = "Fiber",
		client = {
			image = "fiber.png",
		}
	},

	["binco_basic_jean"] = {
		label = "Basic Jean",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Jean",
		client = {
			image = "binco_basic_jean.png",
		}
	},
	["binco_basic_jean"] = {
		label = "Basic Jean",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Jean",
		client = {
			image = "binco_basic_jean.png",
		}
	},

	["binco_basic_jean"] = {
		label = "Basic Jean",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Jean",
		client = {
			image = "binco_basic_jean.png",
		}
	},
	
	["binco_basic_jean"] = {
		label = "Basic Jean",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Jean",
		client = {
			image = "binco_basic_jean.png",
		}
	},

	["metal"] = {
		label = "Metal",
		weight = 100,
		stack = true,
		close = true,
		description = "Metal",
		client = {
			image = "metal.png",
		}
	},

	["advanced_pickaxe"] = {                      
		label = "Advanced Pickaxe",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Advanced Pickaxe"},
	
	["blackpowder"] = {                      
		label = "Black Powder",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Black Powder"},
	
	["coal"] = {                      
		label = "Coal",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Coal"},
	
	["concrete"] = {                      
		label = "Concrete",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Concrete"},
	
	["copper_ingot"] = {                      
		label = "Copper Ingot",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Copper Ingot"},
	
	["copper_ore"] = {                      
		label = "Copper Ore",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Copper Ore"},
		['wig_cap'] = {
			label = 'Wig Cap',
			stack = true,
			weight = 10,
		},
	
		['wig_sewin'] = {
			label = 'Sew In Kit',
			stack = true,
			weight = 10,
		},
	
		['hair_bundles'] = {
			label = 'Hair Bundles',
			stack = true,
			weight = 10,
		},
	
		['wig_table'] = {
			label = 'Wig Table',
			stack = false,
			close = true,
			weight = 1000,
			description = "Table for Crafting Wigs",
		},
	
		['wig_40inches'] = {
			label = 'Straight 40 Inch Wig',
			stack = true,
			weight = 10,
			description = "The Wig that every woman wants",
		},
	
		['wig_bang'] = {
			label = 'Bang Wig',
			stack = true,
			weight = 10,
			description = "Not the Bayaang!",
		},
	
		['clientale_phone'] = {
			label = 'Clientale Phone',
			stack = false,
			weight = 100,
			description = "Calls Clients to sale Wigs in Bulk",
		},
	
		['wig_curly'] = {
			label = 'Curly Wig',
			stack = true,
			weight = 10,
			description = "Its Giving Latina <3",
		},
	
		['wig_braids'] = {
			label = 'Braids Wig',
			stack = true,
			weight = 10,
			description = "True classic Never Fails!",
		},
		
	["diamond_ingot"] = {                      
		label = "Diamond Ingot",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Diamond Ingot"},
	
	["diamond_ore"] = {                      
		label = "Diamond Ore",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Diamond Ore"},
	
	["glass"] = {                      
		label = "Glass",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Glass"},
	
	["glass_mold"] = {                      
		label = "Glass Mold",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Glass Mold"},
	
	["goldingot"] = {                      
		label = "Gold Ingot",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Gold Ingot"},
	
	["gold_ore"] = {                      
		label = "Gold Ore",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Gold Ore"},
	
	["ingot_mold"] = {                      
		label = "Ingot Mold",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Ingot Mold"},
	
	["iron_ingot"] = {                      
		label = "Iron Ingot",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Iron Ingot"},
	
	["iron_ore"] = {                      
		label = "Iron Ore",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Iron Ore"},
	
	["limestone"] = {                      
		label = "Limestone",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Limestone"},
	
	["normal_pickaxe"] = {                      
		label = "Normal Pickaxe",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Normal Pickaxe"},
	
	["professional_pickaxe"] = {                      
		label = "Professional Pickaxe",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Professional Pickaxe"},
	
	["rock"] = {                      
		label = "Rock",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Rock"},
	
	["sandstone"] = {                      
		label = "Sandstone",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Sandstone"},
	
	["special_water"] = {                      
		label = "Special Water",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Special Water"},
	
	["sticky_gel"] = {                      
		label = "Sticky Gel",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Sticky Gel"},
	
	["sulfur"] = {                      
		label = "Sulfur",           
		weight = 100, 
		stack = true,                                            
		close = true,        
		description = "Sulfur"},

		["burnerphone"] = {
			label = "Burner Phone",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "burnerphone.png",
			},
			server = {
				export = 'spoodyFraud.burnerphone',
			},
		},
	
		["msr"] = {
			label = "MSR",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "msr.png",
			},
			server = {
				export = 'spoodyFraud.msr',
			},
		},
	
		["laptop"] = {
			label = "Laptop",
			weight = 100,
			stack = false,
			close = true,
			description = "",
			client = {
				image = "laptop.png",
			},
			server = {
				export = 'spoodyFraud.laptop',
			},
		},
	
		["printer"] = {
			label = "Printer",
			weight = 100,
			stack = true,
			close = true,
			description = "",
			client = {
				image = "printer.png",
			},
			server = {
				export = 'spoodyFraud.printer',
			},
		},


	["kq_outfitbag"] = {
		label = "Outfit bag",
		weight = 4000,
		stack = true,
		close = true,
		description = "Holds different outfits",
		client = {
			image = "kq_outfitbag.png",
		}
	},

	["sim"] = {
		label = "Swapped Sim Card",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sim.png",
		}
	},

	["checkpaper"] = {
		label = "Check Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "checkpaper.png",
		}
	},

	["blank"] = {
		label = "Blank Card",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blank.png",
		}
	},

	["fcheck"] = {
		label = "Forged Check",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fcheck.png",
		}
	},

	["simcard"] = {
		label = "Empty Sim Card",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "simcard.png",
		}
	},

	["ccard"] = {
		label = "Cloned Card",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ccard.png",
		}
	},

	["ponsonbys_chino"] = {
		label = "Chino",
		weight = 100,
		stack = true,
		close = true,
		description = "Chino",
		client = {
			image = "ponsonbys_chino.png",
		}
	},

	["binco_basic_bralet"] = {
		label = "Basic Bralet",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Bralet",
		client = {
			image = "binco_basic_bralet.png",
		}
	},

	["bananakush_joint"] = {
		label = "Banana Kush Joint",
		weight = 10,
		stack = true,
		close = true,
		description = "Sell or smoke.. I cannot decide",
		client = {
			image = "bananakush_joint.png",
		}
	},

	["regweed_bud"] = {
		label = "Weed Bud",
		weight = 15,
		stack = true,
		close = true,
		description = "Is this legal?",
		client = {
			image = "regweed_bud.png",
		}
	},

	["chop_lugwrench"] = {
		label = "Lug Wrench",
		weight = 225,
		stack = true,
		close = true,
		client = {
			image = "chop_lugwrench.png",
		}
	},

	["bluedream_seed"] = {
		label = "Blue Dream Seed",
		weight = 10,
		stack = true,
		close = true,
		description = "I should plant this",
		client = {
			image = "bluedream_seed.png",
		}
	},

	["purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 10,
		stack = true,
		close = true,
		description = "I should plant this",
		client = {
			image = "purplehaze_seed.png",
		}
	},

	["auto_parts"] = {
		label = "Auto Parts",
		weight = 5,
		stack = true,
		close = true,
		client = {
			image = "auto_parts.png",
		}
	},

	["lab_access_card"] = {
		label = "Access Card",
		weight = 10,
		stack = true,
		close = true,
		description = "Seems useful",
		client = {
			image = "lab_access_card.png",
		}
	},

	["bluedream_joint"] = {
		label = "Blue Dream Joint",
		weight = 10,
		stack = true,
		close = true,
		description = "Sell or smoke.. I cannot decide",
		client = {
			image = "bluedream_joint.png",
		}
	},

	["regweed_seed"] = {
		label = "Weed Seed",
		weight = 10,
		stack = true,
		close = true,
		description = "I should plant this",
		client = {
			image = "regweed_seed.png",
		}
	},

	["watering_can"] = {
		label = "Watering Can",
		weight = 300,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "watering_can.png",
		}
	},

	["chop_lockpick"] = {
		label = "Lockpick",
		weight = 150,
		stack = true,
		close = true,
		client = {
			image = "chop_lockpick.png",
		}
	},

	["purplehaze_bud"] = {
		label = "Purple Haze Bud",
		weight = 15,
		stack = true,
		close = true,
		description = "Is this legal?",
		client = {
			image = "purplehaze_bud.png",
		}
	},

	["chop_torch"] = {
		label = "Torch",
		weight = 275,
		stack = true,
		close = true,
		client = {
			image = "chop_torch.png",
		}
	},

	["plant_pot"] = {
		label = "Plant Pot",
		weight = 25,
		stack = true,
		close = true,
		description = "I could plant something in here",
		client = {
			image = "plant_pot.png",
		}
	},

	["purplehaze_joint"] = {
		label = "Purple Haze Joint",
		weight = 10,
		stack = true,
		close = true,
		description = "Sell or smoke.. I cannot decide",
		client = {
			image = "purplehaze_joint.png",
		}
	},

	["plant_shovel"] = {
		label = "Plant Shovel",
		weight = 75,
		stack = true,
		close = true,
		description = "This would be a nice weapon..",
		client = {
			image = "plant_shovel.png",
		}
	},

	["bluedream_bud"] = {
		label = "Blue Dream Bud",
		weight = 15,
		stack = true,
		close = true,
		description = "Is this legal?",
		client = {
			image = "bluedream_bud.png",
		}
	},

	["regweed_joint"] = {
		label = "Weed Joint",
		weight = 10,
		stack = true,
		close = true,
		description = "Sell or smoke.. I cannot decide",
		client = {
			image = "regweed_joint.png",
		}
	},

	["bananakush_bud"] = {
		label = "Banana Kush Bud",
		weight = 15,
		stack = true,
		close = true,
		description = "Is this legal?",
		client = {
			image = "bananakush_bud.png",
		}
	},

	["plant_shears"] = {
		label = "Plant Shears",
		weight = 15,
		stack = true,
		close = true,
		description = "Seems useful",
		client = {
			image = "plant_shears.png",
		}
	},

	["bananakush_seed"] = {
		label = "Banana Kush Seed",
		weight = 10,
		stack = true,
		close = true,
		description = "I should plant this",
		client = {
			image = "bananakush_seed.png",
		}
	},

	["maitai"] = {
		label = "Mai Tai",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "maitai.png",
		}
	},

	["mint"] = {
		label = "Mint",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "mint.png",
		}
	},

	["gin"] = {
		label = "Gin",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "gin.png",
		}
	},

	["bluelagoon"] = {
		label = "Blue Lagoon",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "bluelagoon.png",
		}
	},

	["lime"] = {
		label = "Lime",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "lime.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "lemon.png",
		}
	},

	["pineapplejuice"] = {
		label = "Pineapple Juice",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "pineapplejuice.png",
		}
	},

	["pinacolada"] = {
		label = "Pinã Colada",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "pinacolada.png",
		}
	},

	["caipirinha"] = {
		label = "Caipirinha",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "caipirinha.png",
		}
	},

	["rum"] = {
		label = "Rum",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "rum.png",
		}
	},

	["cocomilk"] = {
		label = "Coco Milk",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "cocomilk.png",
		}
	},

	["ice"] = {
		label = "Ice",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "ice.png",
		}
	},

	["sanfrancisco"] = {
		label = "San Francisco",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "sanfrancisco.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 10,
		stack = true,
		close = true,
		description = "Ingredients",
		client = {
			image = "sugar.png",
		}
	},

	["mojito"] = {
		label = "Mojito",
		weight = 30,
		stack = true,
		close = true,
		description = "Alcoholic Drink",
		client = {
			image = "mojito.png",
		}
	},
-- This part is generated by sv-deployer.lua from rcore_prison
-- Do not edit this part manually unless you know what you are doing

	["recycleablematerial"] = {
		label = "recycleablematerial",
		weight = 5,
		stack = true,
		close = false,
		description = "0x0x",
		client = {
			image = "recycleablematerial.png",
		}
	},
	
	['blue_keycard'] = {
		label = 'Blue Keycard',
		weight = 100,
		stack = false
	},
	
	['purple_keycard'] = {
		label = 'Purple Keycard',
		weight = 100,
		stack = false
	},
	
	['hack_usb'] = {
		label = 'Phantom USB',
		weight = 100,
		stack = false
	},
	
	['hack_card'] = {
		label = 'Spoofing Card',
		weight = 100,
		stack = false
	},
	
	['coins'] = {
		label = 'Coins',
		weight = 10,
	},
	
	['painting'] = {
		label = 'Painting',
		weight = 100,
	},
	
	['bomb_c4'] = {
		label = 'C4 Explosive',
		weight = 3000,
	},
	
	['angle_grinder'] = {
		label = 'Angle Grinder',
		weight = 1500,
	},
	
	['contracts_tablet'] = {
		label = 'Contract Tablet',
		stack = false,
		weight = 400,
	},
	
	['classified_docs'] = {
		label = 'Classified Documents',
		weight = 100,
	},
	
	['diamond_necklace'] = {
		label = 'Diamond Necklace',
		weight = 100,
	},
	
	['diamonds_box'] = {
		label = 'Diamonds Box',
		weight = 200,
	},
	
	['luxurious_watch'] = {
		label = 'Luxurious Watch',
		weight = 200,
	},
	
	['rare_coins'] = {
		label = 'Rare Coins',
		weight = 500,
	},
	
	['diamond_ring'] = {
		label = 'Diamond Ring',
		weight = 50,
	},
	
	['thermite'] = {
		label = 'Thermite',
		weight = 350,
	},
	
	['gold_bar'] = {
		label = 'Gold Bar',
		weight = 500,
	},
	
	["large_drill"] = {
		label = "Large Drill",
		weight = 12500,
		stack = true,
		close = true,
	},

	['avocado'] = {
		label = 'Avocado',
		weight = 10,
		stack = true,
		close = true,
	},
	['bacon'] = {
		label = 'Bacon',
		weight = 10,
		stack = true,
		close = true,
	},
	['bamboo_skewers'] = {
		label = 'Bamboo Skewers',
		weight = 10,
		stack = true,
		close = true,
	},
	['banhxeo'] = {
		label = 'Banhxeo',
		weight = 10,
		stack = true,
		close = true,
	},
	['beef_leg'] = {
		label = 'Beef Leg',
		weight = 10,
		stack = true,
		close = true,
	},
	['brisket'] = {
		label = 'Brisket',
		weight = 10,
		stack = true,
		close = true,
	},
	['brocoli'] = {
		label = 'Brocoli',
		weight = 10,
		stack = true,
		close = true,
	},
	['bunbonambo'] = {
		label = 'Bun bo nam bo',
		weight = 10,
		stack = true,
		close = true,
	},
	['cane_sugar'] = {
		label = 'Cane Sugar',
		weight = 10,
		stack = true,
		close = true,
	},
	['carrot'] = {
		label = 'Carrot',
		weight = 10,
		stack = true,
		close = true,
	},
	['cocacola'] = {
		label = 'CocaCola',
		weight = 10,
		stack = true,
		close = true,
	},
	['cocacola_clear'] = {
		label = 'CocaCola Clear',
		weight = 10,
		stack = true,
		close = true,
	},
	['coconut_milk'] = {
		label = 'Coconut Milk',
		weight = 10,
		stack = true,
		close = true,
	},
	['coriander'] = {
		label = 'Coriander',
		weight = 10,
		stack = true,
		close = true,
	},
	['cucumber'] = {
		label = 'Cucumber',
		weight = 10,
		stack = true,
		close = true,
	},
	['cup'] = {
		label = 'Cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['dirty_cup'] = {
		label = 'Dirty Cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['dirty_glass'] = {
		label = 'Dirty Glass',
		weight = 10,
		stack = true,
		close = true,
	},
	['dirty_plate'] = {
		label = 'Dirty Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['dorayaki'] = {
		label = 'Dorayaki',
		weight = 10,
		stack = true,
		close = true,
	},
	['dorayaki_plate'] = {
		label = 'Dorayaki Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['dried_tuna_katsuobushi'] = {
		label = 'Dried Tuna Katsuobushi',
		weight = 10,
		stack = true,
		close = true,
	},
	['eggs'] = {
		label = 'Eggs',
		weight = 10,
		stack = true,
		close = true,
	},
	['fanta'] = {
		label = 'Fanta',
		weight = 10,
		stack = true,
		close = true,
	},
	['fish_sauce'] = {
		label = 'Fish Sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['garlic'] = {
		label = 'Garlic',
		weight = 10,
		stack = true,
		close = true,
	},
	['glass'] = {
		label = 'Glass Cup',
		weight = 10,
		stack = true,
		close = true,
	},
	['greentea'] = {
		label = 'Green Tea',
		weight = 10,
		stack = true,
		close = true,
	},
	['gyokuro'] = {
		label = 'Gyokuro',
		weight = 10,
		stack = true,
		close = true,
	},
	['chicken_meat'] = {
		label = 'Chicken Meat',
		weight = 10,
		stack = true,
		close = true,
	},
	['chilli'] = {
		label = 'Chilli',
		weight = 10,
		stack = true,
		close = true,
	},
	['chinese_rice_wine'] = {
		label = 'Chinese Rice Wine',
		weight = 10,
		stack = true,
		close = true,
	},
	['chocolate'] = {
		label = 'chocolate',
		weight = 10,
		stack = true,
		close = true,
	},
	['japanese_cheesecake'] = {
		label = 'Japanese Cheesecake',
		weight = 10,
		stack = true,
		close = true,
	},
	['japanese_cheesecake_plate'] = {
		label = 'Japanese Cheesecake Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['kombucha'] = {
		label = 'Kombucha',
		weight = 10,
		stack = true,
		close = true,
	},
	['kungpao'] = {
		label = 'Kung Pao',
		weight = 10,
		stack = true,
		close = true,
	},
	['leek'] = {
		label = 'Leek',
		weight = 10,
		stack = true,
		close = true,
	},
	['lemon'] = {
		label = 'Lemon',
		weight = 10,
		stack = true,
		close = true,
	},
	['matcha_swiss'] = {
		label = 'Matcha Swiss',
		weight = 10,
		stack = true,
		close = true,
	},
	['matcha_swiss_plate'] = {
		label = 'Matcha Swiss Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['matchatea'] = {
		label = 'Matcha Tea',
		weight = 10,
		stack = true,
		close = true,
	},
	['mayonese'] = {
		label = 'Mayonese',
		weight = 10,
		stack = true,
		close = true,
	},
	['milk'] = {
		label = 'Milk',
		weight = 10,
		stack = true,
		close = true,
	},
	['mirin'] = {
		label = 'Mirin',
		weight = 10,
		stack = true,
		close = true,
	},
	['mugichatea'] = {
		label = 'Mugicha Tea',
		weight = 10,
		stack = true,
		close = true,
	},
	['mungo_sprouts'] = {
		label = 'Mungo Sprouts',
		weight = 10,
		stack = true,
		close = true,
	},
	['nori'] = {
		label = 'Nori',
		weight = 10,
		stack = true,
		close = true,
	},
	['oil'] = {
		label = 'Oil',
		weight = 10,
		stack = true,
		close = true,
	},
	['okonomiyaki'] = {
		label = 'Okonomiyaki',
		weight = 10,
		stack = true,
		close = true,
	},
	['okonomiyaki_mixtures'] = {
		label = 'Okonomiyaki Mixtures',
		weight = 10,
		stack = true,
		close = true,
	},
	['okonomiyaki_sauce'] = {
		label = 'Okonomiyaki sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['onigiri'] = {
		label = 'Onigiri',
		weight = 10,
		stack = true,
		close = true,
	},
	['peanut_butter'] = {
		label = 'Peanut Butter',
		weight = 10,
		stack = true,
		close = true,
	},
	['plate'] = {
		label = 'Plate',
		weight = 10,
		stack = true,
		close = true,
	},
	['potato_starch'] = {
		label = 'Potato Starch',
		weight = 10,
		stack = true,
		close = true,
	},
	['ramune_lychee'] = {
		label = 'Ramune Lychee',
		weight = 10,
		stack = true,
		close = true,
	},
	['ramune_original'] = {
		label = 'Ramune Original',
		weight = 10,
		stack = true,
		close = true,
	},
	['ramune_strawberry'] = {
		label = 'Ramune Strawberry',
		weight = 10,
		stack = true,
		close = true,
	},
	['ramune_watermelon'] = {
		label = 'Ramune Watermelon',
		weight = 10,
		stack = true,
		close = true,
	},
	['red_pepper'] = {
		label = 'Red Pepper',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice'] = {
		label = 'Rice',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_flour'] = {
		label = 'Rice Flour',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_noodles'] = {
		label = 'Rice Noodles',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_paper'] = {
		label = 'Rice Paper',
		weight = 10,
		stack = true,
		close = true,
	},
	['rice_vinegar'] = {
		label = 'Rice Vinegar',
		weight = 10,
		stack = true,
		close = true,
	},
	['sake'] = {
		label = 'Sake',
		weight = 10,
		stack = true,
		close = true,
	},
	['salad'] = {
		label = 'Salad',
		weight = 10,
		stack = true,
		close = true,
	},
	['sesame_oil'] = {
		label = 'Sesame Oil',
		weight = 10,
		stack = true,
		close = true,
	},
	['sesame_seeds'] = {
		label = 'Sesame seeds',
		weight = 10,
		stack = true,
		close = true,
	},
	['shelled_peanuts'] = {
		label = 'Shelled Peanuts',
		weight = 10,
		stack = true,
		close = true,
	},
	['shrimp'] = {
		label = 'Shrimp',
		weight = 10,
		stack = true,
		close = true,
	},
	['soba'] = {
		label = 'Soba',
		weight = 10,
		stack = true,
		close = true,
	},
	['soba_noodles'] = {
		label = 'Soba noodles',
		weight = 10,
		stack = true,
		close = true,
	},
	['soy_sauce'] = {
		label = 'Soy Sauce',
		weight = 10,
		stack = true,
		close = true,
	},
	['spring_onion'] = {
		label = 'Spring Onion',
		weight = 10,
		stack = true,
		close = true,
	},
	['spring_rolls'] = {
		label = 'Spring Rolls',
		weight = 10,
		stack = true,
		close = true,
	},
	['sprite'] = {
		label = 'Sprite',
		weight = 10,
		stack = true,
		close = true,
	},
	['sugar'] = {
		label = 'Sugar',
		weight = 10,
		stack = true,
		close = true,
	},
	['sushi'] = {
		label = 'Sushi',
		weight = 10,
		stack = true,
		close = true,
	},	
	['sushi_rice'] = {
		label = 'Sushi rice',
		weight = 10,
		stack = true,
		close = true,
	},
	['tofu'] = {
		label = 'Tofu',
		weight = 10,
		stack = true,
		close = true,
	},
	['turmeric'] = {
		label = 'Turmeric',
		weight = 10,
		stack = true,
		close = true,
	},
	['udon'] = {
		label = 'Udon',
		weight = 10,
		stack = true,
		close = true,
	},
	['udon_noodles'] = {
		label = 'Udon Noodles',
		weight = 10,
		stack = true,
		close = true,
	},	
	['wakame'] = {
		label = 'Wakame',
		weight = 10,
		stack = true,
		close = true,
	},	
	['wasabi_paste'] = {
		label = 'Wasabi paste',
		weight = 10,
		stack = true,
		close = true,
	},	
	['white_cabbage'] = {
		label = 'White Cabbage',
		weight = 10,
		stack = true,
		close = true,
	},	
	['yakitori'] = {
		label = 'Yakitori',
		weight = 10,
		stack = true,
		close = true,
	},	
	['yellow_pepper'] = {
		label = 'Yellow Pepper',
		weight = 10,
		stack = true,
		close = true,
	},


	["WEAPON_KM2000"] = {
		label = "KM2000",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "WEAPON_KM2000.png",
		}
	},

	["WEAPON_HK416C"] = {
		label = "HK416c",
		weight = 1800,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "weapon_hk416c.png",
		}
	},

	["bs_sprite_zero"] = {
		label = "Medium Sprite Zero",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_sprite_zero.png",
		}
	},

	["mccoys_crisps"] = {
		label = "Mccoys Crisps",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious Mccoys :O",
		client = {
			image = "mccoys_crisps.png",
		}
	},

	["w_diet_pepsi"] = {
		label = "Det Pepsi",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "w_diet_pepsi.png",
		}
	},

	["mars_bar"] = {
		label = "MarsBar",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "mars_bar.png",
		}
	},

	['boombox_white_large'] = {
		label = 'Large Boombox (White)',
		weight = 160,
	},

	['boombox_red_large'] = {
		label = 'Large Boombox (Red)',
		weight = 160,
	},

	['boombox_purple_large'] = {
		label = 'Large Boombox (Purple)',
		weight = 160,
	},

	['boombox_pink_large'] = {
		label = 'Large Boombox (Pink)',
		weight = 160,
	},

	['boombox_orange_large'] = {
		label = 'Large Boombox (Orange)',
		weight = 160,
	},

	['boombox_green_large'] = {
		label = 'Large Boombox (Green)',
		weight = 160,
	},

	['boombox_blue_large'] = {
		label = 'Large Boombox (Blue)',
		weight = 160,
	},
	
	['boombox_white_medium'] = {
		label = 'Medium Boombox (White)',
		weight = 160,
	},

	['boombox_red_medium'] = {
		label = 'Medium Boombox (Red)',
		weight = 160,
	},

	['boombox_purple_medium'] = {
		label = 'Medium Boombox (Purple)',
		weight = 160,
	},

	['boombox_pink_medium'] = {
		label = 'Medium Boombox (Pink)',
		weight = 160,
	},

	['boombox_orange_medium'] = {
		label = 'Medium Boombox (Orange)',
		weight = 160,
	},

	['boombox_green_medium'] = {
		label = 'Medium Boombox (Green)',
		weight = 160,
	},

	['boombox_blue_medium'] = {
		label = 'Medium Boombox (Blue)',
		weight = 160,
	},
	
	['boombox_white_small'] = {
		label = 'Small Boombox (White)',
		weight = 160,
	},

	['boombox_red_small'] = {
		label = 'Small Boombox (Red)',
		weight = 160,
	},

	['boombox_purple_small'] = {
		label = 'Small Boombox (Purple)',
		weight = 160,
	},

	['boombox_pink_small'] = {
		label = 'Small Boombox (Pink)',
		weight = 160,
	},

	['boombox_orange_small'] = {
		label = 'Small Boombox (Orange)',
		weight = 160,
	},

	['boombox_green_small'] = {
		label = 'Small Boombox (Green)',
		weight = 160,
	},
	
	['boombox_blue_small'] = {
		label = 'Small Boombox (Blue)',
		weight = 160,
	},

	["shovel"]             = {
        label = "Shovel",
        weight = 100,
        stack = true,
        close = false,
        description = "Want to dig something?",
        client = {
            image = "shovell.png",
        }
    },

        ["flowers"]             = {
        label = "Flowers",
        weight = 100,
        stack = true,
        close = false,
        description = "Cemetery flowers",
        client = {
            image = "flowers.png",
        }
    },

        ["humanbone"]             = {
        label = "Human Bone",
        weight = 1000,
        stack = true,
        close = false,
        description = "Human Bone",
        client = {
            image = "humanbone.png",
        }
    },

        ["humanbones"]             = {
        label = "Human Bones",
        weight = 10000,
        stack = true,
        close = false,
        description = "Pieces of human bones",
        client = {
            image = "humanbones.png",
        }
    },

        ["humanskull"]             = {
        label = "Human Skull",
        weight = 100,
        stack = true,
        close = false,
        description = "Human Skull",
        client = {
            image = "humanskull.png",
        }
    },

        ["humantooth"]             = {
        label = "Human Tooth",
        weight = 100,
        stack = true,
        close = false,
        description = "Human Tooth",
        client = {
            image = "humantooth.png",
        }
    },

        ["voodoodoll"]             = {
        label = "Voodoo Doll",
        weight = 100,
        stack = true,
        close = false,
        description = "voodoo doll",
        client = {
            image = "voodoo-doll.png",
        }
    },

        ["pearlnecklace"]             = {
        label = "Pearl Necklace",
        weight = 100,
        stack = true,
        close = false,
        description = "Pearl Necklace",
        client = {
            image = "pearl-necklace.png",
        }
    },
	
}