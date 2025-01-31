local QBCore = exports['qb-core']:GetCoreObject()
local SafeCodes = {}
local cashA = 250 --<<how much minimum you can get from a robbery
local cashB = 450 --<< how much maximum you can get from a robbery

CreateThread(function()
    while true do
        SafeCodes = {
            [1] = math.random(1000, 9999),
            [2] = math.random(1000, 9999),
            [3] = math.random(1000, 9999),
            [4] = math.random(1000, 9999),
            [5] = math.random(1000, 9999),
            [6] = math.random(1000, 9999),
            [7] = math.random(1000, 9999),
            [8] = math.random(1000, 9999),
            [9] = math.random(1000, 9999),
            [10] = math.random(1000, 9999),
            [11] = math.random(1000, 9999),
            [12] = math.random(1000, 9999),
            [13] = math.random(1000, 9999),
            [14] = math.random(1000, 9999),
            [15] = math.random(1000, 9999),
            [16] = math.random(1000, 9999),
            [17] = math.random(1000, 9999),
            [18] = math.random(1000, 9999),
            [19] = math.random(1000, 9999),
        }
        Wait((1000 * 60) * 40)
    end
end)

RegisterNetEvent('qb-storerobbery:server:takeMoney', function(register, isDone)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local playerPed = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(playerPed)
    if #(playerCoords - Config.Registers[register][1].xyz) > 3.0 or (not Config.Registers[register].robbed and not isDone) or (Config.Registers[register].time <= 0 and not isDone) then
        return DropPlayer(src, 'Attempted exploit abuse')
    end
    if isDone then
        local bags = math.random(1, 3)
        local info = {
            worth = math.random(cashA, cashB)
        }
        Player.Functions.AddMoney("cash", Config.RegisterCash)
        if math.random(1, 100) <= Config.stickyNoteChance then
            local code = SafeCodes[Config.Registers[register].safeKey]
            if Config.Safes[Config.Registers[register].safeKey].type == 'keypad' then
                info = {
                    label = Lang:t('text.safe_code') .. tostring(code)
                }
            else
                local label = Lang:t('text.safe_code') .. ' '

                for i = 1, #code do
                    label = label .. tostring(math.floor((code[i] % 360) / 3.60)) .. ' - '
                end

                info = { label = label:sub(1, -3) }
            end
            -- exports['qs-inventory']:AddItem(src, 'stickynote', 1, false, info, 'qb-storerobbery:server:takeMoney')
            -- QBCore.Functions.AddItem(src, 'stickynote', 1, info)
            exports.ox_inventory:AddItem(src, 'stickynote', 1, info)
        end
    end
end)

RegisterNetEvent('qb-storerobbery:server:setRegisterStatus', function(register)
    Config.Registers[register].robbed = true
    Config.Registers[register].time = Config.resetTime
    TriggerClientEvent('qb-storerobbery:client:setRegisterStatus', -1, register, Config.Registers[register])
end)

RegisterNetEvent('qb-storerobbery:server:setSafeStatus', function(safe)
    Config.Safes[safe].robbed = true
    TriggerClientEvent('qb-storerobbery:client:setSafeStatus', -1, safe, true)

    SetTimeout(math.random(40, 80) * (60 * 1000), function()
        Config.Safes[safe].robbed = false
        TriggerClientEvent('qb-storerobbery:client:setSafeStatus', -1, safe, false)
    end)
end)

RegisterNetEvent('qb-storerobbery:server:SafeReward', function(safe)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local playerPed = GetPlayerPed(src)
    local playerCoords = GetEntityCoords(playerPed)
    if #(playerCoords - Config.Safes[safe][1].xyz) > 3.0 or Config.Safes[safe].robbed then
        return DropPlayer(src, 'Attempted exploit abuse')
    end
    local bags = Config.SafeCash
    local scrapmetal = Config.Scrapmetal
    local scrapmetal2 = Config.LuckyScrapmetal
    local info = {
        worth = math.random(cashA, cashB)
    }
    -- exports['qs-inventory']:AddItem(src, 'markedbills', bags, false, info, 'qb-storerobbery:server:SafeReward')
    Player.Functions.AddMoney("cash", bags)
    Player.Functions.AddItem('scrapmetal', scrapmetal)
    local luck = math.random(1, 100)
    -- local odd = math.random(1, 100)
        if luck <= 10 then
            Player.Functions.AddItem('scrapmetal', scrapmetal2)
        else
        end
    --     -- TriggerClientEvent('qs-inventory:client:ItemBox', src, QBCore.Shared.Items['rolex'], 'add')
    --     if luck == odd then
    --         Wait(500)
    --         exports['qs-inventory']:AddItem(src, 'goldbar', 1, false, false, 'qb-storerobbery:server:SafeReward')
    --         -- TriggerClientEvent('qs-inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
end)

RegisterNetEvent('qb-storerobbery:server:callCops', function(type, safe, streetLabel, coords)
    local cameraId
    if type == 'safe' then
        cameraId = Config.Safes[safe].camId
    else
        cameraId = Config.Registers[safe].camId
    end
    local alertData = {
        title = '10-33 | Shop Robbery',
        coords = { x = coords.x, y = coords.y, z = coords.z },
        description = Lang:t('email.someone_is_trying_to_rob_a_store', { street = streetLabel, cameraId1 = cameraId })
    }
    TriggerClientEvent('qb-storerobbery:client:robberyCall', -1, type, safe, streetLabel, coords)
    TriggerClientEvent('qb-phone:client:addPoliceAlert', -1, alertData)
end)

RegisterNetEvent('qb-storerobbery:server:removeAdvancedLockpick', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    exports.ox_inventory:RemoveItem(source, 'advancedlockpick', 1)
end)

RegisterNetEvent('qb-storerobbery:server:removeLockpick', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    exports.ox_inventory:RemoveItem(source, 'lockpick', 1)
end)

CreateThread(function()
    while true do
        local toSend = {}
        for k in ipairs(Config.Registers) do
            if Config.Registers[k].time > 0 and (Config.Registers[k].time - Config.tickInterval) >= 0 then
                Config.Registers[k].time = Config.Registers[k].time - Config.tickInterval
            else
                if Config.Registers[k].robbed then
                    Config.Registers[k].time = 0
                    Config.Registers[k].robbed = false
                    toSend[#toSend + 1] = Config.Registers[k]
                end
            end
        end

        if #toSend > 0 then
            --The false on the end of this is redundant
            TriggerClientEvent('qb-storerobbery:client:setRegisterStatus', -1, toSend, false)
        end

        Wait(Config.tickInterval)
    end
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:isCombinationRight', function(_, cb, safe)
    cb(SafeCodes[safe])
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getPadlockCombination', function(_, cb, safe)
    cb(SafeCodes[safe])
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getRegisterStatus', function(_, cb)
    cb(Config.Registers)
end)

QBCore.Functions.CreateCallback('qb-storerobbery:server:getSafeStatus', function(_, cb)
    cb(Config.Safes)
end)
