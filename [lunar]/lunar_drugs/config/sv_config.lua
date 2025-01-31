SvConfig = {}
SvConfig.Webhook = 'https://discord.com/api/webhooks/1298734205798322256/WGpA1-hmPtFv2JWPmvVMeTDW5sFTpbSpjI9yKL9Ts8jxshGCBt3IHwKVTBEkyOaWH0GB' --Webhook for started robberies etc.

Config = {}
Config.RenderDistance = 15.0
Config.Target = false --['ox_target'/'qtarget'/'qb-target'/false]

Config.Weed = {
	IllegalSeller = {
		Label = 'Illegal Seller',
		Coords = vector4(614.63, 5574.1, -129.11, 39.17),
		Blip = false,
		Ped = `s_m_y_dealer_01`,
		Items = {
			{ name = 'meth_table', price = 99999999, account = 'money', icon = 'flask-vial' },
		}
	},
	Gardener = {
		Label = 'Gardener',
		Coords = vector4(614.63, 5574.1, -129.11, 39.17),
		Blip = false,
		Ped = `s_m_m_gardener_01`,
		Items = {
			{ name = 'water_can', price = 99999999, account = 'money', icon = 'droplet' },
		}
	},
	PapersItem = 'weed_papers',
	JointItem = 'weed_joint',
	Planting = {
		Props = { --Allowed props
			`prop_pot_plant_01a`,
			`prop_pot_plant_01b`,
			`prop_pot_plant_01c`,
			`prop_pot_plant_01d`,
			`prop_pot_plant_01e`,
			`prop_pot_plant_02a`,
			`prop_pot_plant_02b`,
			`prop_pot_plant_02c`,
			`prop_pot_plant_02d`,
			`prop_pot_plant_03b`,
			`prop_pot_plant_03b_cr2`,
			`prop_pot_plant_03c`,
			`prop_pot_plant_04a`,
			`prop_pot_plant_04b`,
			`prop_pot_plant_04c`,
			`prop_pot_plant_05d`,
			`prop_pot_plant_05d_l1`
		},
		Materials = { --Allowed materials
			[2409420175] = true,
			[3008270349] = true,
			[3833216577] = true,
			[223086562] = true,
			[1333033863] = true,
			[4170197704] = true,
			[3594309083] = true,
			[2461440131] = true,
			[1109728704] = true,
			[2352068586] = true,
			[1144315879] = true,
			[581794674] = true,
			[2128369009] = true,
			[-461750719] = true,
			[-1286696947] = true,
		},
		SeedItem = 'weed_seed',
		Item = 'weed', -- You'll receive this item
		MaxPlants = 0, --Maximum planted (Set to 0 to remove the limit)
		CycleInterval = 30 * 60000, --Refresh all plants every 30 minutes

		--This will give you 10 weed for fully grown and max quality plant. 
		--100.0 (Growth) * 100.0 (Quality) / 1000.0 (ResultDivisor) = 10 weed
		--Lower this value to get more weed.
		ResultDivisor = 1000.0,

		-- Durations
		PlantDuration = 10000,
		HarvestDuration = 10000,
		WaterDuration = 5000,
		FertilizeDuration = 5000,

		--Modify plant per cycle
		Add = {
			['status'] = 10.0,
			['quality']  = 10.0
		},
		Remove = {
			['water'] = 2.0,
			['fertilizer'] = 2.0
		}
	},
}

Config.Cocaine = {
	Spawning = {
		Locations = {
			{
				Coords = vector3(614.63, 5574.1, -129.11),
				Radius = 1.0
			}
		},
		Limit = 0, --Max spawn plant limit
		Model = `prop_plant_01a`,
		Item = 'coke_leaf',
		GiveAmount = { min = 1, max = 4 },
		Duration = 1 * 30000, --Time between new coca plant spawn
		HarvestDuration = 10000
	},
	Teleport = {
		Enter = { coords = vector4(614.63, 5574.1, -129.11, 39.17), target = vector3(-1789.51, 6470.21, 17.4) },
		Exit = { coords = vector4(614.63, 5574.1, -129.11, 39.17), target = vector3(1088.7278, -3186.9387, -38.7989) }
	},
	Processing = {
		{
			Radius = 1.5,
			Prompt = 'Make cocaine',
			Icon = 'hand',
			Progress = {
				Message = 'Making cocaine...',
				Duration = 7500
			},
			Animation = {
				Dict = 'anim@amb@business@coc@coc_unpack_cut_left@',
				Name = 'coke_cut_coccutter'
			},
			RequiredItems = {
				{ name = 'coke_leaf', count = 2 },
				{ name = 'nitric_acid', count = 1 }
			},
			GiveItems = {
				{ name = 'coke', min = 1, max = 5 }
			},
			ErrorMessage = 'You need coca leafs.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(614.63, 5574.1, -129.11),
			}
		},
		{
			Radius = 1.5,
			Prompt = 'Package cocaine',
			Icon = 'hand',
			Progress = {
				Message = 'Packaging cocaine...',
				Duration = 12500
			},
			Animation = {
				Dict = 'anim@amb@business@meth@meth_smash_weight_check@',
				Name = 'break_weigh_v2_char01'
			},
			RequiredItems = {
				{ name = 'coke', count = 10 },
				{ name = 'plastic_bag', count = 1 }
			},
			GiveItems = {
				{ name = 'coke_bag', count = 1 }
			},
			ErrorMessage = 'You need 10 grams of cocaine.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(614.63, 5574.1, -129.11),
			}
		}
	}
}

Config.Meth = {
	Teleport = {
		Enter = { coords = vector4(614.63, 5574.1, -129.11, 39.17), target = vector3(523.2, -1966.67, 27.04) },
		Exit = { coords = vector4(614.63, 5574.1, -129.11, 39.17), target = vector3(996.4160, -3200.6804, -36.1011) }
	},
	Processing = {
		{
			Radius = 1.5,
			Prompt = 'Cook meth',
			Icon = 'flask-vial',
			Progress = {
				Message = 'Cooking meth...',
				Duration = 7500
			},
			Animation = {
				Dict = 'mp_car_bomb',
				Name = 'car_bomb_mechanic'
			},
			RequiredItems = {
				{ name = 'ammonia', count = 1 },
				{ name = 'coughmedicine', count = 2 },
			},
			GiveItems = {
				--{ name, count?, min?, max? } count or min and max have to defined
				{ name = 'meth', min = 1, max = 4 }
			},
			ErrorMessage = 'You need ammonia and cough medicine.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(614.63, 5574.1, -129.11),
				vector3(614.63, 5574.1, -129.11),
			},
		},
		{
			Radius = 1.5,
			Prompt = 'Package meth',
			Icon = 'hand',
			Progress = {
				Message = 'Packaging meth...',
				Duration = 5000
			},
			Animation = {
				Dict = 'anim@amb@business@meth@meth_smash_weight_check@',
				Name = 'break_weigh_v2_char01'
			},
			RequiredItems = {
				{ name = 'meth', count = 5 },
				{ name = 'plastic_bag', count = 1 }
			},
			GiveItems = {
				{ name = 'meth_bag', count = 1 }
			},
			ErrorMessage = 'You need 10 grams of meth.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(614.63, 5574.1, -129.11),
			}
		}
	},
	Chemist = {
		Label = 'Chemist',
		Coords = vector4(614.63, 5574.1, -129.11, 39.17),
		Blip = false,
		Ped = `s_m_m_doctor_01`,
		Items = {
			{ name = 'ammonia', price = 99999999, account = 'money', icon = 'vial' },
		}
	},
	Table = {
		Model = `bkr_prop_meth_table01a`,
		Zones = {
			Enabled = false, -- You can place it anywhere if disabled
			Locations = {
				{
					Coords = vector3(614.63, 5574.1, -129.11),
					Radius = 0.0
				}
			}
		},
		RequiredItems = {
			{ name = 'ammonia', count = 1 },
			{ name = 'coughmedicine', count = 2 },
		},
		GiveItems = {
			--{ name, count?, min?, max? } count or min and max have to defined
			{ name = 'meth', min = 1, max = 4 }
		},
		Progress = {
			Message = 'Cooking meth...',
			Duration = 10000
		},
		Animation = {
			Dict = 'mp_car_bomb',
			Name = 'car_bomb_mechanic'
		},
		ErrorMessage = 'You need ammonia and cough medicine.'
	}
}

Config.Heroin = {
	Spawning = {
		--You can add more locations
		Locations = {
			{
				Coords = vector3(614.63, 5574.1, -129.11),
				Radius = 0.0,
			}
		},
		Limit = 0, --Max spawn plant limit
		Item = 'poppy_plant',
		GiveAmount = { min = 1, max = 2 },
		Model = `prop_plant_01b`,
		Duration = 3 * 30000, --Time between new poppy plant spawn
		HarvestDuration = 10000
	},
	Processing = {
		{
			Radius = 1.5,
			Prompt = 'Cook heroin',
			Icon = 'flask-vial',
			Progress = {
				Message = 'Cooking heroin...',
				Duration = 7500
			},
			Animation = {
				Dict = 'mp_car_bomb',
				Name = 'car_bomb_mechanic'
			},
			RequiredItems = {
				{ name = 'ammonia', count = 2 },
				{ name = 'poppy_plant', count = 1 },
				{ name = 'plastic_bag', count = 1 },
			},
			GiveItems = {
				--{ name, count?, min?, max? } count or min and max have to defined
				{ name = 'heroin_bag', count = 1 }
			},
			ErrorMessage = 'You need chemicals, poppy plant and a plastic bag.',
			Locations = {
				vector3(614.63, 5574.1, -129.11),
			}
		}
	}
}

Config.Selling = {
	Command = 'trap', -- You can set this to nil and use the event 'lunar_drugs:dealer' in some other script
	MinPolice = 0,
	Zones = {
		{
			Coords = vector3(-947.05, -2575.12, 13.98),
        	Size = vec3(380.0, 230.0, 200.0),
			Rotation = 60.0,
			Debug = false
		},
		{
			Coords = vector3(-376.9, -1830.27, 22.04),
        	Size = vec3(5000.0, 1650.0, 200.0),
			Rotation = 140.0,
			Debug = false
		},
		{
			Coords = vector3(-130.91, 393.11, 113.2),
        	Size = vec3(500.0, 1650.0, 200.0),
			Rotation = 250.0,
			Debug = false
		},
		{
			Coords = vector3(-1359.68, 372.04, 64.87),
        	Size = vec3(500.0, 1650.0, 200.0),
			Rotation = 100.0,
			Debug = false
		},
		{
			Coords = vector3(-177.21, -158.69, 92.88),
        	Size = vec3(2700.0, 1200.0, 200.0),
			Rotation = 140.0,
			Debug = false
		},
		{
			Coords = vector3(939.5, -152.68, 74.52),
        	Size = vec3(300.0, 1300.0, 200.0),
			Rotation = 40.0,
			Debug = false
		},
		{
			Coords = vector3(1010.65, -1539.09, 39.57),
        	Size = vec3(1000.0, 1600.0, 200.0),
			Rotation = 200.0,
			Debug = false
		},
	},
	Items = {
		{
			Name = 'regweed_bud',
			Account = 'cash',
			Price = { min = 200, max = 220 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'bananakush_bud',
			Account = 'cash',
			Price = { min = 312, max = 340 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'purplehaze_bud',
			Account = 'cash',
			Price = { min = 320, max = 340 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'bluedream_bud',
			Account = 'cash',
			Price = { min = 330, max = 350 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'weed_amnesia',
			Account = 'cash',
			Price = { min = 106, max = 130 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'weed_purplehaze',
			Account = 'cash',
			Price = { min = 119, max = 143 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'weed_gelato',
			Account = 'cash',
			Price = { min = 132, max = 156 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'weed_zkittlez',
			Account = 'cash',
			Price = { min = 145, max = 169 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'lean_bottle',
			Account = 'cash',
			Price = { min = 206, max = 242 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'xpills',
			Account = 'cash',
			Price = { min = 200, max = 252 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'spice_pooch',
			Account = 'cash',
			Price = { min = 200, max = 210 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'heroin_shot',
			Account = 'cash',
			Price = { min = 212, max = 230 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'coke_pooch',
			Account = 'cash',
			Price = { min = 360, max = 400 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'weed_pooch',
			Account = 'cash',
			Price = { min = 246, max = 280 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'meth_pooch',
			Account = 'cash',
			Price = { min = 260, max = 300 },
			Count = { min = 1, max = 15 }
		},
		{
			Name = 'cokebaggy',
			Account = 'cash',
			Price = { min = 249, max = 273 },
			Count = { min = 1, max = 15 }
		},
	},
	--The client blip.
	Blip = {
		Text = 'Client',
		Sprite  = 280,
		Scale   = 1.0,
		Colour  = 74
	},
	ReportChance = 40, --percentage
	Dispatch = {
		Code = '10-14',
		Title = 'Drug Dealing',
		Message = 'A person is dealing drugs!'
	}
}

Config.DoorSales = {
	Locations = {
		vector3(614.63, 5574.1, -129.11),
	},
	Items = {
		{
			Name = 'acapulcogold_trimmed_bud',
			Account = 'black_money',
			Price = 180
		},
		{
			Name = 'shroombag',
			Account = 'black_money',
			Price = 300
		},
		{
			Name = 'meth_bag',
			Account = 'black_money',
			Price = 400
		},
		{
			Name = 'heroin_bag',
			Account = 'black_money',
			Price = 450
		},
		{
			Name = 'coke_bag',
			Account = 'black_money',
			Price = 700
		}
	},
}

--You can add your own effects here
Config.UsableDrugs = {
	-- ['weed_joint'] = {
	-- 	Progress = 'You\'re enjoying a joint...',
	-- 	Animation = { --ox_lib progress animation table
	-- 		scenario = 'WORLD_HUMAN_SMOKING_POT'
	-- 	},
	-- 	Duration = 60000 --Effect duration
	-- },
}

-- In inventory packaging/crafting
Config.Packaging = {
	PlasticBag = false, -- Allow drugs to be packaged in inventory with plastic bag
	Joint = false -- Allow joint to be packaged with weed papers
}