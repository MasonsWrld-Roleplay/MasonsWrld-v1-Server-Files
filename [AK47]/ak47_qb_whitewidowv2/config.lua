Config = {}
Config.Locale = 'en'

Config.UseProgressBar = true							--Set your progress bar in utils.lua then enable this
Config.SocietyInManagement = true --enable if your society is inside qb-management

Config.UseTarget = false
Config.TatgetScriptName = 'qb-target'
Config.DebugPoly = false 

Config.Marker = {
	shop = {
		showmarker = true,
		showTextUI = true,
		id = 27,
		size = vector3(1.6, 1.6, 0.1),
		color = {r = 33, g = 31, b = 31, a = 200},
	},
	manage = {
		showmarker = true,
		show3Dtext = true,
		font = 0,
		fontSize = 0.4,
		id = 22,
		size = vector3(0.3, 0.3, 0.2),
		color = {r = 0, g = 255, b = 0, a = 100},
	},
	stock = {
		showmarker = true,
		show3Dtext = true,
		font = 0,
		fontSize = 0.4,
		id = 20,
		size = vector3(0.2, 0.2, 0.1),
		color = {r = 0, g = 255, b = 0, a = 100},
	},
	process = {
		showmarker = true,
		show3Dtext = true,
		font = 0,
		fontSize = 0.4,
		id = 24,
		size = vector3(0.2, 0.2, 0.2),
		color = {r = 255, g = 155, b = 0, a = 200},
	},
	plant = {
		showmarker = true,
		fontSize = 0.4,
		id = 22,
		id = 20,
		size = vector3(0.3, 0.3, 0.2),
		color = {r = 255, g = 155, b = 0, a = 200},
	},
	boss = {
		showmarker = true,
		show3Dtext = true,
		font = 0,
		fontSize = 0.4,
		id = 22,
		size = vector3(0.4, 0.4, 0.3),
		color = {r = 40, g = 125, b = 181, a = 100},
	}
	
}

