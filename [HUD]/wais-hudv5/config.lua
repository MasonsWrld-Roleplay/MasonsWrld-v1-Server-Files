Config = {}
Config.Framework = {
    ["Framework"] = "qbcore", -- esx or qbcore
    ["ResourceName"] = "qb-core", -- es_extended or qb-core or your resource name
    ["NewCore"] = true, -- If you use the new core, set this to true ( esx or qb ). If you are using the old one, make it false and edit the event below according to yourself.
    ["SharedEvent"] = "esx:getSharedObject" -- Event name for old cores.
}

Config.ClockType = "24" --[[ PM = 12 hour clock 9.30 PM || 24 = 24 hour clock 21.30 ]]
Config.ShowMapOnlyInTheCar = false -- If true, the map will only be displayed when the player is in a vehicle.
Config.PostalMap = true -- make true if you are using postal map.
Config.StressSystem = false -- if you make true a stress bar will come up you can use your own scripts or qb-stress to raise the stress 
Config.DisableBeltSystem = false -- If you want to disable the belt system, make it true.
Config.KeyMaaping = false -- If you make true, the `belt` and `settings menu` buttons can be customised by players. ( If you switch this on once, it will be registered to the player and he/she will continue to operate with that button. )
Config.DissableEditorMode = true -- If you make true, the editor mode will be disabled.
Config.DisableSettingsMenu = false -- If you make true, the settings menu will be disabled.

Config.Keybind = { -- https://docs.fivem.net/docs/game-references/controls/
    ["belt"] = 29, -- B
    ["settings_menu"] = 82, -- ,
    ["editormode"] = { -- If you change the key, enter the equivalent of the key you changed here in this way or it will not work!
        ["key"] = "PageUp", -- Keys such as F1-2-3-3-4-5-6-7-8-9 should be written in upper case and other keys should be written in lower case!
        ["modifier"] = 208
    }
}

Config.RefreshTimes = {
    ["hud"] = 100,
    ["carhud"] = 100,
    ["playercounts"] = 30 * 1000
}

Config.MoneySettings = {
    ["moneyItem"] = false, -- Make false if you are using Chezza inventory
    ["oldMoney"] = false, -- Make true if you are using Chezza inventory
    ["ox_inventory"] = true,
    ["qs_inventory"] = false,
    ["moneyItemName"] = "money",
    ["formatPrefix"] = ",", -- Determines whether a comma or a period appears between numbers when formatting the player's money, "." or ","
    ["formatSymbol"] = "£" -- Determines the symbol that appears before the player's money, "$" or "€"
}

Config.VoiceSettings = {
    ["pma"] = {
        {meter = 35},
        {meter = 65}, 
        {meter =  100}
    },
    ["saltychat"] = {
        ["use"] = false,
        ["default"] = "1.0",
        ["ranges"] = {
            ["1.0"] = {meter = 10},
            ["3.0"] = {meter = 30},
            ["5.0"] = {meter = 100},
        }
    }
}

Config.Notifications = {
    ["belt_plug"] = "Seat belt fastened.",
    ["belt_unplug"] = "Seat belt removed",
    ["cant_belt"] = "You can't do that in this car."
}

Config.Keybinds = {
    {label = "Inventory", key = "F2"},
    {label = "Seat Belt", key = "B"},
}

Config.BlackListVehicle = {
    ['t20'] = {
        ["carhud"] = false,
        ["belt"] = true
    },
}

function Config.CustomNotify(typee, title, text, time)
	typee = typee == "primary" and "info" or typee or "info"
	title = title or "Enter title"
	text  = text or "Enter text"
	time  = time or 5000

    -- Your export or trigger here
end

function Config.GetVehicleFuelLevel(vehicle)
    -- Native or your export here
    return GetVehicleFuelLevel(vehicle)
end

Config.Weapons = {
    [GetHashKey('weapon_unarmed')]      = {['label'] = 'Fists'},
    [GetHashKey('weapon_dagger')]       = {['label'] = 'Dagger'},
    [GetHashKey('weapon_bat')]          = {['label'] = 'Bat'},
    [GetHashKey('weapon_bottle')]       = {['label'] = 'Broken Bottle'},
    [GetHashKey('weapon_crowbar')]      = {['label'] = 'Crowbar'},
    [GetHashKey('weapon_flashlight')]   = {['label'] = 'Flashlight'},
    [GetHashKey('weapon_golfclub')]     = {['label'] = 'Golfclub'},
    [GetHashKey('weapon_hammer')]       = {['label'] = 'Hammer'},
    [GetHashKey('weapon_hatchet')]      = {['label'] = 'Hatchet'},
    [GetHashKey('weapon_knuckle')]      = {['label'] = 'Knuckle'},
    [GetHashKey('weapon_knife')]        = {['label'] = 'Knife'},
    [GetHashKey('weapon_machete')]      = {['label'] = 'Machete'},
    [GetHashKey('weapon_switchblade')]  = {['label'] = 'Switchblade'},
    [GetHashKey('weapon_nightstick')]   = {['label'] = 'Nightstick'},
    [GetHashKey('weapon_wrench')]       = {['label'] = 'Wrench'},
    [GetHashKey('weapon_battleaxe')]    = {['label'] = 'Battle Axe'},
    [GetHashKey('weapon_poolcue')]      = {['label'] = 'Poolcue'},
    [GetHashKey('weapon_briefcase')]    = {['label'] = 'Briefcase'},
    [GetHashKey('weapon_briefcase_02')] = {['label'] = 'Suitcase'},
    [GetHashKey('weapon_garbagebag')]   = {['label'] = 'Garbage Bag'},
    [GetHashKey('weapon_handcuffs')]    = {['label'] = 'Handcuffs'},
    [GetHashKey('weapon_bread')]        = {['label'] = 'Baquette'},
    [GetHashKey('weapon_stone_hatchet')]= {['label'] = 'Stone Hatchet'},
    [GetHashKey('weapon_candycane')]    = {['label'] = 'Candy Cane'},
    
    -- Handguns
    [GetHashKey('weapon_pistol')]        = {['label'] = 'Walther P99'},
    [GetHashKey('weapon_pistol_mk2')]    = {['label'] = 'Pistol Mk II'},
    [GetHashKey('weapon_combatpistol')]  = {['label'] = 'Combat Pistol'},
    [GetHashKey('weapon_appistol')]      = {['label'] = 'AP Pistol'},
    [GetHashKey('weapon_stungun')]       = {['label'] = 'Taser'},
    [GetHashKey('weapon_pistol50')]      = {['label'] = 'Pistol .50'},
    [GetHashKey('weapon_snspistol')]     = {['label'] = 'SNS Pistol'},
    [GetHashKey('weapon_heavypistol')]   = {['label'] = 'Heavy Pistol'},
    [GetHashKey('weapon_vintagepistol')] = {['label'] = 'Vintage Pistol'},
    [GetHashKey('weapon_flaregun')]      = {['label'] = 'Flare Gun'},
    [GetHashKey('weapon_marksmanpistol')]= {['label'] = 'Marksman Pistol'},
    [GetHashKey('weapon_revolver')]      = {['label'] = 'Revolver'},
    [GetHashKey('weapon_revolver_mk2')]  = {['label'] = 'Violence'},
    [GetHashKey('weapon_doubleaction')]  = {['label'] = 'Double Action Revolver'},
    [GetHashKey('weapon_snspistol_mk2')] = {['label'] = 'SNS Pistol Mk II'},
    [GetHashKey('weapon_raypistol')]     = {['label'] = 'Up-n-Atomizer'},
    [GetHashKey('weapon_ceramicpistol')] = {['label'] = 'Ceramic Pistol'},
    [GetHashKey('weapon_navyrevolver')]  = {['label'] = 'Navy Revolver'},
    [GetHashKey('weapon_gadgetpistol')]  = {['label'] = 'Perico Pistol'},
    [GetHashKey('weapon_pistolxm3')]     = {['label'] = 'Pistol XM3'},

    -- Submachine Guns
    [GetHashKey('weapon_microsmg')]     = {['label'] = 'Micro SMG'},
    [GetHashKey('weapon_smg')]          = {['label'] = 'SMG'},
    [GetHashKey('weapon_smg_mk2')]      = {['label'] = 'SMG Mk II'},
    [GetHashKey('weapon_assaultsmg')]   = {['label'] = 'Assault SMG'},
    [GetHashKey('weapon_combatpdw')]    = {['label'] = 'Combat PDW'},
    [GetHashKey('weapon_machinepistol')]= {['label'] = 'Tec-9'},
    [GetHashKey('weapon_minismg')]      = {['label'] = 'Mini SMG'},
    [GetHashKey('weapon_raycarbine')]   = {['label'] = 'Unholy Hellbringer'},

    -- Shotguns
    [GetHashKey('weapon_pumpshotgun')]        = {['label'] = 'Pump Shotgun'},
    [GetHashKey('weapon_sawnoffshotgun')]     = {['label'] = 'Sawn-off Shotgun'},
    [GetHashKey('weapon_assaultshotgun')]     = {['label'] = 'Assault Shotgun'},
    [GetHashKey('weapon_bullpupshotgun')]     = {['label'] = 'Bullpup Shotgun'},
    [GetHashKey('weapon_musket')]             = {['label'] = 'Musket'},
    [GetHashKey('weapon_heavyshotgun')]       = {['label'] = 'Heavy Shotgun'},
    [GetHashKey('weapon_dbshotgun')]          = {['label'] = 'Double-barrel Shotgun'},
    [GetHashKey('weapon_autoshotgun')]        = {['label'] = 'Auto Shotgun'},
    [GetHashKey('weapon_pumpshotgun_mk2')]    = {['label'] = 'Pumpshotgun Mk II'},
    [GetHashKey('weapon_combatshotgun')]      = {['label'] = 'Combat Shotgun'},

    -- Assault Rifles
    [GetHashKey('weapon_assaultrifle')]            = {['label'] = 'Assault Rifle'},
    [GetHashKey('weapon_assaultrifle_mk2')]        = {['label'] = 'Assault Rifle Mk II'},
    [GetHashKey('weapon_carbinerifle')]            = {['label'] = 'Carbine Rifle'},
    [GetHashKey('weapon_carbinerifle_mk2')]        = {['label'] = 'Carbine Rifle Mk II'},
    [GetHashKey('weapon_advancedrifle')]           = {['label'] = 'Advanced Rifle'},
    [GetHashKey('weapon_specialcarbine')]          = {['label'] = 'Special Carbine'},
    [GetHashKey('weapon_bullpuprifle')]            = {['label'] = 'Bullpup Rifle'},
    [GetHashKey('weapon_compactrifle')]            = {['label'] = 'Compact Rifle'},
    [GetHashKey('weapon_specialcarbine_mk2')]      = {['label'] = 'Special Carbine Mk II'},
    [GetHashKey('weapon_bullpuprifle_mk2')]        = {['label'] = 'Bullpup Rifle Mk II'},
    [GetHashKey('weapon_militaryrifle')]           = {['label'] = 'Military Rifle'},

    -- Light Machine Guns
    [GetHashKey('weapon_mg')]                       = {['label'] = 'Machinegun'},
    [GetHashKey('weapon_combatmg')]                 = {['label'] = 'Combat MG'},
    [GetHashKey('weapon_gusenberg')]                = {['label'] = 'Thompson SMG'},
    [GetHashKey('weapon_combatmg_mk2')]             = {['label'] = 'Combat MG Mk II'},

    [GetHashKey('weapon_sniperrifle')]              = {['label'] = 'Sniper Rifle'},
    [GetHashKey('weapon_heavysniper')]              = {['label'] = 'Heavy Sniper'},
    [GetHashKey('weapon_marksmanrifle')]            = {['label'] = 'Marksman Rifle'},
    [GetHashKey('weapon_remotesniper')]             = {['label'] = 'Remote Sniper'},
    [GetHashKey('weapon_heavysniper_mk2')]          = {['label'] = 'Heavy Sniper Mk II'},
    [GetHashKey('weapon_marksmanrifle_mk2')]        = {['label'] = 'Marksman Rifle Mk II'},

    [GetHashKey('weapon_rpg')]                      = {['label'] = 'RPG'},
    [GetHashKey('weapon_grenadelauncher')]          = {['label'] = 'Grenade Launcher'},
    [GetHashKey('weapon_grenadelauncher_smoke')]    = {['label'] = 'Smoke Grenade Launcher'},
    [GetHashKey('weapon_minigun')]                  = {['label'] = 'Minigun'},
    [GetHashKey('weapon_firework')]                 = {['label'] = 'Firework Launcher'},
    [GetHashKey('weapon_railgun')]                  = {['label'] = 'Railgun'},
    [GetHashKey('weapon_railgunxm3')]               = {['label'] = 'Railgun XM3'},
    [GetHashKey('weapon_hominglauncher')]           = {['label'] = 'Homing Launcher'},
    [GetHashKey('weapon_compactlauncher')]          = {['label'] = 'Compact Launcher'},
    [GetHashKey('weapon_rayminigun')]               = {['label'] = 'Widowmaker'},

    -- Throwables
    [GetHashKey('weapon_grenade')]                  = {['label'] = 'Grenade'},
    [GetHashKey('weapon_bzgas')]                    = {['label'] = 'BZ Gas'},
    [GetHashKey('weapon_molotov')]                  = {['label'] = 'Molotov'},
    [GetHashKey('weapon_stickybomb')]               = {['label'] = 'C4'},
    [GetHashKey('weapon_proxmine')]                 = {['label'] = 'Proxmine Grenade'},
    [GetHashKey('weapon_snowball')]                 = {['label'] = 'Snowball'},
    [GetHashKey('weapon_pipebomb')]                 = {['label'] = 'Pipe Bomb'},
    [GetHashKey('weapon_ball')]                     = {['label'] = 'Ball'},
    [GetHashKey('weapon_smokegrenade')]             = {['label'] = 'Smoke Grenade'},
    [GetHashKey('weapon_flare')]                    = {['label'] = 'Flare pistol', ["image"] = "flare"},
}