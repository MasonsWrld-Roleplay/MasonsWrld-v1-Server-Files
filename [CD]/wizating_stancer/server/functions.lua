ESX = nil
QBCore = nil
if Config.useESX then
    -----------------
    -- ESX EXAMPLE -- -- SETUP TO WORK WITH LATEST ESX, WITHOUT HAVING CHANGED EVENT NAMES ETC -- VANILLA ESX
    -----------------
    CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj)
                ESX = obj
            end)
            Wait(0)
        end
        if Config.useitem then
            ESX.RegisterUsableItem(Config.ItemName, function(source)
                TriggerClientEvent('wizating_stancer:openstancer', source)
            end)
        end
    end)
    -- ITEM
    -- END OF ESX EXAMPLE
elseif Config.useQB then
    ----------------
    -- QB EXAMPLE -- -- SETUP TO WORK WITH LATEST QB, WITHOUT HAVING CHANGED EVENT NAMES ETC -- VANILLA QB
    ----------------
    QBCore = exports['qb-core']:GetCoreObject()
    -- ITEM
    if Config.useitem then
        QBCore.Functions.CreateUseableItem(Config.ItemName, function(source, item)
            local Player = QBCore.Functions.GetPlayer(source)
            if Player.Functions.GetItemByName(item.name) ~= nil then
                TriggerClientEvent('wizating_stancer:openstancer', source)
            end
        end)
    end

    -- END OF QB EXAMPLE
elseif Config.useVRP then
    RegisterServerEvent('wizating_stancer:vrpJobCheck')
    AddEventHandler('wizating_stancer:vrpJobCheck', function()
        local id = vRP.getUserId({source})
        if Config.restrictToVRPJob then
            local jobs = Config.JobRoles
            for k, v in pairs(jobs) do
                if vRP.hasGroup({id, v.name}) then
                    TriggerClientEvent('wizating_stancer:vrpSetJob', source, v.name)
                end
            end
        end
    end)
end

wizatingPlayerCheck = function()
    local id = nil
    if Config.useESX then
        local xPlayer = ESX.GetPlayerFromId(source)
        id = xPlayer.identifier
    elseif Config.useQB then
        local Player = QBCore.Functions.GetPlayer(source)
        id = Player.PlayerData.citizenid
    elseif Config.useVRP then
        thePlayer = source
        id = vRP.getUserId({thePlayer})
    else
        id = GetPlayerIdentifier(source)
    end
    return id
end

wizaPlates = function(value)
    if Config.PlateDebug then
        print("Your vehicles plate is: [" .. value .. "]")
        print("If you see no spaces, use trimmed.")
        print("If you see a space in the middle and not at the end, use spaces.")
        print(
            "If you see a space in the middle and at the end then use mixed. (mostly for qb and esx vehicleshop users)")
        print("If you have custom plates, then use custom.")
    end
    if Config.Plates == "trimmed" then
        if not value then
            return nil
        end
        return (string.gsub(value, "%s+", ""))
    elseif Config.Plates == "spaces" then
        if not value then
            return nil
        end
        return (string.gsub(value, "^%s(.-)%s$", "%1"))
    elseif Config.Plates == "mixed" then -- mixed QB/ESXVEHSHOP
        if not value then
            return nil
        end
        return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
    else
        return tostring(value)
    end
end

wizatingNotifs = function(source, type, message) --- DONT RENAME THIS FUNCTION
    TriggerClientEvent('mythic_notify:client:SendAlert', source, {
        type = type,
        text = message
    }) -- exports['mythic_notify']:DoHudText------- change this to match your notifcation system!! Or simply use the same one. TYPE's will be INFORM / ERROR IF YOU USE DIFFERENT TYPES ITS EASY TO MATCH THEM UP WITH VARIABLES
end

