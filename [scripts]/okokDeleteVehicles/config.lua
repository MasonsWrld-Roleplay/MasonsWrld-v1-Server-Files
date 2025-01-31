Config = {}

Config.Cmd = "deletevehicles" -- Chat command to delete vehicles

Config.Framework = "other" -- Options: "esx", "qbcore", "other"

Config.QBUsePermissionsUpdate = true

Config.AdminGroups = { -- Admin groups that can access the admin menu
	"superadmin",
	"god",
	"admin",
	"mod"
}

Config.AdminList = { -- IF YOU USE ESX OR QBCORE IGNORE THIS
	'license:2ash123ad1337a15029a21a6s4e3622f91cde1d0', -- Example, change this
	'discord:960248066517139456' -- Example, change this
}

Config.DeleteVehicleTimer = 2 -- Time (in minutes) that it will take to delete vehicles since you execute the command

Config.DeleteVehiclesIfInSafeZone = true -- If true it'll delete vehicles inside safezones

Config.DeleteVehiclesAt = { -- Delete vehicles automatically at this time every day (h = hour m = minutes)
	{['h'] = 0, ['m'] = 30},
	{['h'] = 0, ['m'] = 30},
	{['h'] = 0, ['m'] = 30},
}

-- Set safezones
-- For the blip color check: https://docs.fivem.net/docs/game-references/blips/#blip-colors
-- If you want to remove the blip simply set 'alpha' to 0
Config.SafeZones = {
	{ ['x'] = -44.155646565, ['y'] = -1100.155646565, ['z'] = 26.267009735108, ['radius'] = 50.0, ['color'] = 2, ['alpha'] = 0},
	{ ['x'] = -1688.43811035156, ['y'] = -1073.62536621094, ['z'] = 13.1521873474121, ['radius'] = 200.0, ['color'] = 2, ['alpha'] = 0},
	{ ['x'] = -2195.1352539063, ['y'] = 4288.7290039063, ['z'] = 49.173923492432, ['radius'] = 150.0, ['color'] = 2, ['alpha'] = 0},
}