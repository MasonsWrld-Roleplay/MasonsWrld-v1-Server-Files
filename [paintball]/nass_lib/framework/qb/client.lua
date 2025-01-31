if GetResourceState('qb-core') ~= 'started' then return end
QBCore = exports['qb-core']:GetCoreObject()

nass.framework, nass.playerData, nass.playerLoaded = "qb", {}, nil
--
AddStateBagChangeHandler('isLoggedIn', '', function(_bagName, _key, value, _reserved, _replicated)
    if value then
        nass.playerData = QBCore.Functions.GetPlayerData()
    else
        table.wipe(nass.playerData)
    end
    nass.playerLoaded = value
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName or not LocalPlayer.state.isLoggedIn then return end
    nass.playerData = QBCore.Functions.GetPlayerData()
    nass.playerLoaded = true
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(gang)
    if not gang or not gang.name then return end
    nass.playerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    if not job or not job.name then return end
    nass.playerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    nass.playerData = QBCore.Functions.GetPlayerData()
    nass.playerLoaded = true
    TriggerEvent('nass_lib:playerLoaded')
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(newPlayerData)
    if source ~= '' and GetInvokingResource() ~= 'qb-core' then return end
    nass.playerData = newPlayerData
end)

function nass.notify(msg, type, title, length)
    if GetResourceState('nass_notifications') == 'started' then
        exports["nass_notifications"]:ShowNotification(type or "alert", title or "Info", msg, length or 5000)
    else
        QBCore.Functions.Notify(msg)
    end
end

function nass.getJob()
    return nass.playerData.job
end

function nass.getGang()
    return nass.playerData.gang
end

function nass.getPlayerName(full)
    local first, last = nass.playerData.charinfo.firstname, nass.playerData.charinfo.lastname
    if full then
        return first .." ".. last
    end
    return first, last
end