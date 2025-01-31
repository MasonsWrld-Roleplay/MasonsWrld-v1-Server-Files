lib.locale()

Config = {}

Config.coords = vector3(-1271.2694, -3388.4224, 12.9329)
Config.radius = 40.0

-- If false, it will use Config.taskCoords for the locations (make sure to give enough locations)
Config.generateTasks = true
Config.taskCoords = {
	vector3(-1271.2694, -3388.4224, 12.9329),
	vector3(-1276.7913, -3386.7385, 12.9402),
	vector3(-1273.6295, -3381.7383, 12.9969)
}

Config.releaseCoords = vector3(160.7709, -993.4355, 29.3581)

-- If this doesn't work, try to remove group. from the list
Config.authorizedGroups = { "group.mod", "group.admin", "group.superadmin" }
Config.identifier = "fivem"

Config.clearInventory = false
Config.duration = 5000
Config.broom = "prop_tool_broom"
Config.animation = {
	dict = "amb@world_human_janitor@male@idle_a",
	anim = "idle_a",
}

Config.uiColor = "#008ECC"
Config.uiOpacity = "80%"
Config.uiPositionX = "right"
Config.uiPositionY = "bottom"

Config.uiOffsetX = "15px"
Config.uiOffsety = "15px"

Config.changeClothes = false

-- 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
Config.components = {
	{ 2,  0, 0 },
	{ 3,  5, 0 },
	{ 4,  6, 0 },
	{ 5,  0, 0 },
	{ 6,  6, 0 },
	{ 7,  0, 0 },
	{ 8,  5, 0 },
	{ 9,  0, 0 },
	{ 10, 0, 0 },
	{ 11, 5, 0 },
}

-- Enable community service for authorities, this does require vx_lib
Config.useAuthority = false
Config.authorizedJobs = { "police", "kmar" }
Config.enableCommands = true

-- Don't use this, only if you really need to
Config.debug = false
Config.useEvents = false

debug = {}

function debug.log(str, ...)
	if not Config.debug then
		return
	end

	print("^6[DEBUG]^7 " .. str:format(...))
end
