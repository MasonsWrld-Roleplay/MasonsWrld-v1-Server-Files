Config = {}

Config.Core = "QB-Core" -- "ESX" / "QB-Core"
Config.CoreExport = function()
    return exports['qb-core']:GetCoreObject()
    -- return exports['qb-core']:GetCoreObject()
end

Config.Notification = function(message, time, type)
    if type == "success" then
        --exports["vms_notify"]:Notification("BARBER", message, time, "#27FF09", "fa fa-scissors")
        -- ESX.ShowNotification(message)
         QBCore.Functions.Notify(message, "success", 5000)
    elseif type == "error" then
        --exports["vms_notify"]:Notification("BARBER", message, time, "#FF0909", "fa fa-scissors")
        -- ESX.ShowNotification(message)
         QBCore.Functions.Notify(message, "error", 5000)
    end
end

Config.TextUI_Enabled = true
Config.TextUI_Open = function(msg)
    exports['qb-core']:DrawText(msg, 'right') -- Here you can use your TextUI or use my free one - https://github.com/vames-dev/interact
    -- exports['okokTextUI']:Open('[E] '..msg, 'darkgreen', 'right')
    -- exports['qb-core']:DrawText(msg, 'right')
end
Config.TextUI_Close = function()
    exports['qb-core']:HideText() -- Here you can use your TextUI or use my free one - https://github.com/vames-dev/interact
    -- exports['okokTextUI']:Close()
    -- exports['qb-core']:HideText()
end

-- @UseTarget: Do you want to use target system
Config.UseTarget = false
Config.TargetResource = 'ox_target'
Config.Target = function(data, cb)
    if Config.TargetResource == 'ox_target' then
        return exports[Config.TargetResource]:addBoxZone({
            coords = vec(data.coords.x, data.coords.y, data.coords.z),
            size = vec(1.2, 2.15, 2.15),
            debug = false,
            useZ = true,
            rotation = data.coords.w,
            options = {
                {
                    distance = 2.0,
                    name = 'barber-chair',
                    icon = "fa-solid fa-scissors",
                    label = Config.Translate[Config.Language]["target.barber_chair"],
                    onSelect = function()
                        cb()
                    end
                }
            }
        })
    else
        print('You need to prepare Config.Target for the target system')
    end
end

-- @PlayerLoaded for ESX: "esx:playerLoaded"
-- @PlayerLoaded for QB-Core: "QBCore:Client:OnPlayerLoaded"
Config.PlayerLoaded = 'QBCore:Client:OnPlayerLoaded' -- its a trigger to load players tattoos

-- @JobUpdated for ESX: "esx:setJob"
-- @JobUpdated for QB-Core: "QBCore:Client:OnJobUpdate"
Config.JobUpdated = 'QBCore:Client:OnJobUpdate' -- its a trigger to check players job

-- @SkinManager for ESX: "esx_skin" / "fivem-appearance" / "illenium-appearance"
-- @SkinManager for QB-Core: "qb-clothing" / "fivem-appearance" / "illenium-appearance"
Config.SkinManager = "illenium-appearance"

Config.DistanceView = 8
Config.DistanceAccess = 1.1

Config.EnableShakeCam = true

Config.AnimDict = "misshair_shop@barbers"
Config.Anim = "keeper_idle_b"

Config.CanMakeup = true -- if you want a player can buy makeup's set true

Config.BossMenu = function(jobName)
    if Config.Core == "ESX" then
        TriggerEvent('esx_society:openBossMenu', jobName, function(data, menu) -- esx_society
            -- menu.close()
        end, {wash = false})
    else
        TriggerEvent('qb-bossmenu:client:OpenMenu') -- qb-management
    end
end

-- @UseHairClipperRequired: You can use this if you want a player to have an item in inventory to be able to cut a player's hairstyle 
Config.UseHairClipperRequired = false
Config.HairClipperItem = 'hair_clipper'

Config.Blip = {
    ["Sprite"] = 71,
    ["Scale"] = 0.6,
    ["Color"] = 3,
    ["Display"] = 4
}

Config.Markers = {
	['BossMenu'] = {
		id = 29,
		color = {95, 255, 95, 125}, -- rgba
		size = vec(0.33, 0.33, 0.33),
		bobUpAndDown = false,
		rotate = true
	},
	['FreeSeat'] = {
		id = 21,
		size = vec(0.25, 0.25, 0.25),
		bobUpAndDown = false,
		rotate = true
	},
	['TakenSeat'] = {
		id = 21,
		size = vec(0.25, 0.25, 0.25),
		bobUpAndDown = false,
		rotate = true
	},
}

Config.Prices = {
    ["hair"] = 5,
    ["beard"] = 5,
    ["eye"] = 5,
    ["makeup"] = 5,
}

Config.CustomNames = {
    ["hair_1"] = {
        [0] = "Bald",
        [14] = "Dreadlocks",
        [16] = "Afro curls",
        [79] = "Curls",
    },
}

Config.Barbers = {
  
    { -- BOB MULET | Mad Wayne Thunder Dr - Rockford Hills
        business = true,
        ownerJob = "galaxybarbers",
        barber = "s_f_m_fembarber",
        position = vector3(-9.18, -164.49, 56.52),
        barberSpawnPos = vector4(-10.23, -174.42, 56.52, 346.27),
        bossMenuPos = vector3(-13.2, -157.76, 56.5),
		bossMenuGrades = 'boss',
        takeSitMarker = {
            FreeColor = {255, 9, 106, 125},
            TakenColor = {128, 0, 31, 110},
        },
        Chairs = {
            [1] = {
                position = vector3(-5.91, -162.62, 56.52),
                barberPos = vector4(-5.93, -162.63, 56.52, 245.83),
                chair_coord = vector4(-4.82, -163.0, 55.7, 246.84),
                taken = false,
            },
            [2] = {
                position = vector3(-7.1, -166.11, 56.52),
                barberPos = vector4(-7.1, -166.11, 56.52, 241.94),
                chair_coord = vector4(-6.29, -166.44, 55.84, 249.93),
                taken = false,
            },
            [3] = {
                position = vector3(-8.02, -168.65, 56.52),
                barberPos = vector4(-8.02, -168.65, 56.52, 253.24),
                chair_coord = vector4(-7.23, -169.03, 55.84, 249.07),
                taken = false,
            },
            [4] = {
                position = vector3(-9.23, -172.03, 56.52),
                barberPos = vector4(-9.23, -172.03, 56.52, 251.88),
                chair_coord = vector4(-8.73, -172.17, 55.23, 248.32),
                taken = false,
            },
        }
    },
}