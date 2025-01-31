Config = {}
Config.Framework = 'newqb' -- esx - oldqb - newqb
Config.NewESX = false -- true - false
Config.Mysql = 'oxmysql' -- mysql-async, ghmattimysql, oxmysql
Config.Webhook = false -- true enabled false disabled
Config.Discord = true
Config.Notification = true -- true enabled false disabled for notification
Config.MysqlTableName = 'codem_craft' -- MySQL Table Name
Config.InteractionHandler = 'drawtext' -- qb-target, ox_target or drawtext

Config.Categories = {
    {
        name = 'weapons',                 -- category name
        label = 'WEAPONS',                -- category label
        activebuttonpng = 'weaponactive', -- category click active image,
        shadow = '#80C4FF',
        backgroundimage = 'weaponsbg',
        enabled = true, -- true show --false hide


    },
    {
        name = 'ammo',          -- category name
        label = 'AMMO',-- category label
        activebuttonpng = 'ammoactive',-- category click active image
        shadow = '#3C301E',
        backgroundimage = 'ammobg',
        enabled = true, -- true show --false hide

    },
    {
        name = 'tools',-- category name
        label = 'TOOLS',-- category label
        activebuttonpng = 'toolsactive',-- category click active image
        shadow = '#1E2A3C',
        backgroundimage = 'toolsbg',
        enabled = true, -- true show --false hide

    },

}

Config.Draw = {
    ["enabled"]  =  true , -- true  show -- false hide
    ["textmarket"] = '[E] Craft',
}

Config.CraftNpc = {
    [1] = {
        ["name"] = "Craft",
        ["job"]  = "public",  -- mafia,police,ambulance, etc  -- "public" open to all (if you want use gang set public like ["job"]  = "public")
        ["gang"] = "none",  -- made for qbcore users 'lostmc','ballas','vagos' -- "none" open to all
        ["blip"] = {
            ['enabled'] = false, -- show/false hide blip
            ["sprite"] = 628,
            ["color"] = 3,
            ["size"] = 0.6,
        },
        ["ped"] = {
            ["model"] = 0xCF623A2C,
            ["position"] = vector3(-1175.25, -2076.99, 13.27),
            ["heading"] = 278.57,
            ["show"] = true, -- true show -- false hide
        },
        ["craftitems"] = {

            [1] = {
                ["itemname"] = "WEAPON_G19BLACKCRAFTED",
                ["label"] = "Masheen",
                ["level"] = 1,
                ["rewardXp"] = 300,
                ["weaponitem"] = true, -- Leave true if you use the weapon as an item
                ["weaponammo"] = 50, -- adjust the bullet if you are not using the gun as an item
                ["time"] = 5, --- 5 minutes
                ["category"] = "weapons",
                ["requiredItems"] = {
                    [1] = {
                        ["name"] = "metalscrap",
                        ["label"] = "metalscrap",
                        ["count"] = 1500,
                    },
                    [2] = {
                        ["name"] = "iron",
                        ["label"] = "iorn",
                        ["count"] = 400,
                    },
                    [3] = {
                        ["name"] = "money",
                        ["label"] = "money",
                        ["count"] = 1500000,
                    },
                },
            },

            [2] = {
                ["itemname"] = "ammo-9",
                ["label"] = "Pistol Ammo",
                ["level"] = 1,
                ["rewardXp"] = 300,
                ["time"] = 4, --- 5 minutes
                ["category"] = "ammo",
                ["itemamount"] = 12, --  number of items to be given to the person
                ["requiredItems"] = {
                    [1] = {
                        ["name"] = "metalscrap",
                        ["label"] = "metalscrap",
                        ["count"] = 175,
                    },

                    [2] = {
                        ["name"] = "coal",
                        ["label"] = "coal",
                        ["count"] = 50,
                    },

                    [3] = {
                        ["name"] = "money",
                        ["label"] = "Money",
                        ["count"] = 25000,
                    },
                },
            },
        },
    },
}

Config.RequiredXP = {
    [1] = 1000,
    [2] = 1500,
    [3] = 2000,
    [4] = 2500,
    [5] = 3000,
    [6] = 3500,
    [7] = 4000,
    [8] = 4500,
    [9] = 5000,
    [10] = 5500,
    [11] = 6000,
    [12] = 6500,
    [13] = 7000,
    [14] = 7500,
    [15] = 8000,
    [16] = 8500,
    [17] = 9000,
    [18] = 9500,
    [19] = 10000,
    [20] = 10500,
    [21] = 11000,
    [22] = 11500,
    [23] = 12000,
    [24] = 12500,
    [25] = 13000,
    [26] = 13500,
    [27] = 14000,
    [28] = 14500,
    [29] = 15000,
    [30] = 15500,
    [31] = 16000,
    [32] = 16500,
    [33] = 17000,
    [34] = 17500,
    [35] = 18000,
    [36] = 18500,
    [37] = 19000,
    [38] = 19500,
    [39] = 20000,
    [40] = 20500,
    [41] = 21000,
    [42] = 21500,
    [43] = 22000,
    [44] = 22500,
    [45] = 23000,
    [46] = 23500,
    [47] = 24000,
    [48] = 24500,
    [49] = 25000,
    [50] = 25500,
}

Config.Locale ={
    ['weaponsbutton'] = 'WEAPONS',
    ['ammobuttons'] = 'AMMO',
    ['tools'] = 'TOOLS',
    ['craftcategories'] = 'Craft Categories',
    ['craft'] = 'craft',
    ['weaponsblueprint'] = 'Weapons Blueprint',
    ['ammoblueprint'] = 'Ammo Blueprint',
    ['toolsblueprint'] = 'Tools Blueprint',
    ['craftdetails'] = 'Craft Details',
    ['noitem'] = 'No Items Has Selected',
    ['CRAFTINGMIN'] = 'Minute Crafting Time',
    ['exitfrom'] = 'EXIT FROM',
    ['craftmenu'] = 'CRAFT MENU',
    ['craftbutton'] = 'CRAFT',
    ['readyclaim'] = 'Ready to claim!',
    ['minutesleft'] = 'minutes left'

}

Config.NotificationText = {
    ["NOT_ALLOWED"] = {
        text = 'You dont have access to Craft',
        type = 'error',
        timeout = 3000,
    },
}

Config.ClientNotification = function(message, type, length) -- You can change notification event here
    if Config.Notification then
        if Config.Framework == "esx" then
            TriggerEvent("esx:showNotification", message)
        else
            TriggerEvent('QBCore:Notify', message, type, length)
        end
    end
end

function GetGang()
    frameworkObject = GetFrameworkObject()
    if Config.Framework == "esx" then
        return "none"
    else
        return frameworkObject.Functions.GetPlayerData().gang.name
    end
end

function GetJob()
    frameworkObject = GetFrameworkObject()
    if Config.Framework == "esx" then
        return frameworkObject.PlayerData.job.name
    else
        return frameworkObject.Functions.GetPlayerData().job.name
    end
end

function GetIdentifier(source)
    if Config.Framework == "esx" then
        local xPlayer = frameworkObject.GetPlayerFromId(tonumber(source))

        if xPlayer then
            return xPlayer.getIdentifier()
        else
            return "0"
        end
    else
        local Player = frameworkObject.Functions.GetPlayer(tonumber(source))
        if Player then
            return Player.PlayerData.citizenid
        else
            return "0"
        end
    end
end


function GetName(source)
    if Config.Framework == "esx" then
        local xPlayer = frameworkObject.GetPlayerFromId(tonumber(source))
        if xPlayer then
            return xPlayer.getName()
        else
            return "0"
        end
    else
        local Player = frameworkObject.Functions.GetPlayer(tonumber(source))
        if Player then
            return Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
        else
            return "0"
        end
    end
end