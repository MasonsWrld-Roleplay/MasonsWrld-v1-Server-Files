if GetResourceState('qb-core') ~= 'started' then return end
QBCore = exports['qb-core']:GetCoreObject()

nass.framework = "qb"

function nass.getPlayer(source)
    return QBCore.Functions.GetPlayer(source)
end

function nass.getPlayerFromIdentifer(identifier)
    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function nass.getPlayerJob(source)
    return nass.getPlayer(source).PlayerData.job
end

function nass.getPlayerGang(source)
    return nass.getPlayer(source).PlayerData.gang
end

function nass.getPlayerIdentifier(source)
    return nass.getPlayer(source).PlayerData.citizenid
end

function nass.getPlayerName(source, full)
    local player = nass.getPlayer(source)
    local first, last =  player.PlayerData.charinfo.firstname, player.PlayerData.charinfo.lastname

    if full then
        return first.." "..last
    end
    return first, last
end

function nass.removeMoney(source, amount, account)
    if account == nil then account = "cash" end
    if account == 'money' then account = 'cash' end
    local player = nass.getPlayer(source)
    if Config.useCashAsItem and account ~= "bank" then
        return player.Functions.RemoveItem(account, amount)
    end
    return player.Functions.RemoveMoney(account, amount)
end

function nass.addMoney(source, amount, account)
    if account == nil then account = "cash" end
    if account == 'money' then account = 'cash' end
    local player = nass.getPlayer(source)
    if Config.useCashAsItem and account ~= "bank" then
        return player.Functions.AddItem(account, amount)
    end
    return player.Functions.AddMoney(account, amount)
end

function nass.getMoney(source, account)
    if account == nil then account = "cash" end
    if account == 'money' then account = 'cash' end
    local player = nass.getPlayer(source)
    if Config.useCashAsItem and account ~= "bank" then
        local amt = player?.Functions?.GetItemByName(account)?.amount
        return amt ~= nil and amt or 0
    end
    return player.PlayerData.money[account]
end

function nass.addMoneyOffline(citizenID, amount, account)
    if account == nil then account = "cash" end
    if account == 'money' then account = 'cash' end

    MySQL.query('SELECT JSON_EXTRACT(money, "$.'..account..'") AS cash FROM players WHERE citizenid =?', {citizenID}, function(amt)
        local otherPlayerBalence = tonumber(amt[1].cash)
        otherPlayerBalence = otherPlayerBalence + amount
        MySQL.update('UPDATE `players` SET `money` = JSON_SET(money, "$.'..account..'", ?) WHERE citizenid =?', {otherPlayerBalence, citizenID})
    end)
end

function nass.removeMoneyOffline(citizenID, amount, account)
    if account == nil then account = "cash" end
    if account == 'money' then account = 'cash' end

    MySQL.query('SELECT JSON_EXTRACT(money, "$.'..account..'") AS cash FROM players WHERE citizenid =?', {citizenID}, function(amt)
        local otherPlayerBalence = tonumber(amt[1].cash)
        otherPlayerBalence = otherPlayerBalence - amount
        MySQL.update('UPDATE `players` SET `money` = JSON_SET(money, "$.'..account..'", ?) WHERE citizenid =?', {otherPlayerBalence, citizenID})
    end)
end

function nass.registerItem(item, cb)
    QBCore.Functions.CreateUseableItem(item, cb)
end

function nass.hasItem(source, _item)
    local xPlayer = nass.getPlayer(source)
    local item = xPlayer.Functions.GetItemByName(_item)
    return item?.count or item?.amount or 0
end

function nass.addItem(source, item, count)
    local xPlayer = nass.getPlayer(source)
    TriggerClientEvent('inventory:client:ItemBox', source,  item, 'add')
    return xPlayer.Functions.AddItem(item, count)
end

function nass.removeItem(source, item, count)
    local xPlayer = nass.getPlayer(source)
    xPlayer.Functions.RemoveItem(item, count)
end