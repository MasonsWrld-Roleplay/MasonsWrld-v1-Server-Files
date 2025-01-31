local QBCore = exports['qb-core']:GetCoreObject()
local currentRegister = 0
local currentSafe = 0
local copsCalled = false
local CurrentCops = exports.wasabi_police:getPoliceOnline()
local PlayerJob = {}
local onDuty = false
local usingAdvanced = false

CreateThread(function()
    Wait(1000)
    if QBCore.Functions.GetPlayerData().job ~= nil and next(QBCore.Functions.GetPlayerData().job) then
        PlayerJob = QBCore.Functions.GetPlayerData().job
    end
end)

CreateThread(function()
    while true do
        Wait(1000 * 60 * 5)
        if copsCalled then
            copsCalled = false
        end
    end
end)

CreateThread(function()
    Wait(1000)
    setupRegister()
    setupSafes()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local inRange = false
        for k in pairs(Config.Registers) do
            local dist = #(pos - Config.Registers[k][1].xyz)
            if dist <= 1 and Config.Registers[k].robbed then
                inRange = true
                DrawText3Ds(Config.Registers[k][1].xyz, Lang:t('text.the_cash_register_is_empty'))
            end
        end
        if not inRange then
            Wait(2000)
        end
        Wait(3)
    end
end)

CreateThread(function()
    while true do
        Wait(1)
        local inRange = false
        if QBCore ~= nil then
            local pos = GetEntityCoords(PlayerPedId())
            for safe, _ in pairs(Config.Safes) do
                local dist = #(pos - Config.Safes[safe][1].xyz)
                if dist < 3 then
                    inRange = true
                    if dist < 1.0 then
                        if not Config.Safes[safe].robbed then
                            DrawText3Ds(Config.Safes[safe][1].xyz, Lang:t('text.try_combination'))
                            if IsControlJustPressed(0, 38) then
                                if CurrentCops >= Config.MinimumStoreRobberyPolice then
                                    currentSafe = safe
                                    if Config.Safes[safe].type == 'keypad' then
                                        SendNUIMessage({
                                            action = 'openKeypad',
                                        })
                                        SetNuiFocus(true, true)
                                    else
                                        QBCore.Functions.TriggerCallback('qb-storerobbery:server:getPadlockCombination', function(combination)
                                            TriggerEvent('SafeCracker:StartMinigame', combination)
                                        end, safe)
                                    end

                                    if not copsCalled then
                                        pos = GetEntityCoords(PlayerPedId())
                                        local s1, s2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z)
                                        local street1 = GetStreetNameFromHashKey(s1)
                                        local street2 = GetStreetNameFromHashKey(s2)
                                        local streetLabel = street1
                                        if street2 ~= nil then
                                            streetLabel = streetLabel .. ' ' .. street2
                                        end
                                        TriggerServerEvent('qb-storerobbery:server:callCops', 'safe', currentSafe, streetLabel, pos)
                                        copsCalled = true
                                    end
                                else
                                    QBCore.Functions.Notify(Lang:t('error.minimum_store_robbery_police', { MinimumStoreRobberyPolice = Config.MinimumStoreRobberyPolice }), 'error')
                                end
                            end
                        else
                            DrawText3Ds(Config.Safes[safe][1].xyz, Lang:t('text.safe_opened'))
                        end
                    end
                end
            end
        end

        if not inRange then
            Wait(2000)
        end
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    onDuty = true
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = true
end)

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)


RegisterNetEvent('lockpicks:UseLockpick', function()
    for k in pairs(Config.Registers) do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local dist = #(pos - Config.Registers[k][1].xyz)
        if dist <= 1 and not Config.Registers[k].robbed then
            if CurrentCops >= Config.MinimumStoreRobberyPolice then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        currentRegister = k
                        local data = exports['cd_dispatch']:GetPlayerInfo()
                        TriggerServerEvent('cd_dispatch:AddNotification', {
                            job_table = {'police', }, 
                            coords = data.coords,
                            title = '10-15 - Store Robbery',
                            message = 'A '..data.sex..' robbing a store at '..data.street, 
                            flash = 0,
                            unique_id = data.unique_id,
                            sound = 1,
                            blip = {
                                sprite = 431, 
                                scale = 1.2, 
                                colour = 3,
                                flashes = false, 
                                text = '911 - Store Robbery',
                                time = 5,
                                radius = 0,
                            }
                        })
                        LockPickSuccess()
                    else
                        TriggerServerEvent('qb-storerobbery:server:removeAdvancedLockpick')
                        QBCore.Functions.Notify("You broke the lockpick...", error, 5000)
                    end
                end, Config.SkillCheck, Config.SkillTime)
            else
                QBCore.Functions.Notify(Lang:t('error.minimum_store_robbery_police', { MinimumStoreRobberyPolice = Config.MinimumStoreRobberyPolice }), 'error')
            end
        end
    end
end)

function setupRegister()
    QBCore.Functions.TriggerCallback('qb-storerobbery:server:getRegisterStatus', function(Registers)
        for k in pairs(Registers) do
            Config.Registers[k].robbed = Registers[k].robbed
        end
    end)
end

function setupSafes()
    QBCore.Functions.TriggerCallback('qb-storerobbery:server:getSafeStatus', function(Safes)
        for k in pairs(Safes) do
            Config.Safes[k].robbed = Safes[k].robbed
        end
    end)
end

DrawText3Ds = function(coords, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    BeginTextCommandDisplayText('STRING')
    SetTextCentre(true)
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(coords, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function lockpick(bool)
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        action = 'ui',
        toggle = bool,
    })
    SetCursorLocation(0.5, 0.2)
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(100)
    end
end

-- function takeAnim()
--     local ped = PlayerPedId()
--     while (not HasAnimDictLoaded('amb@prop_human_bum_bin@idle_b')) do
--         RequestAnimDict('amb@prop_human_bum_bin@idle_b')
--         Wait(100)
--     end
--     TaskPlayAnim(ped, 'amb@prop_human_bum_bin@idle_b', 'idle_d', 8.0, 8.0, -1, 50, 0, false, false, false)
--     Wait(2500)
--     TaskPlayAnim(ped, 'amb@prop_human_bum_bin@idle_b', 'exit', 8.0, 8.0, -1, 50, 0, false, false, false)
-- end

function takeAnim()
        local takeTime = 60000
        SearchVaultAnim(takeTime)
        QBCore.Functions.Progressbar('search_register', Lang:t('text.emptying_the_safe'), takeTime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flags = 0,
        }, {}, {}, function() -- Done
            openingDoor = false
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-storerobbery:server:SafeReward', currentSafe)
            TriggerServerEvent('qb-storerobbery:server:setSafeStatus', currentSafe)
            currentSafe = 0
        end, function() -- Cancel
            openingDoor = false
            ClearPedTasks(PlayerPedId())
            QBCore.Functions.Notify(Lang:t('error.process_canceled'), 'error')
        end)
end

local openingDoor = false


function LockPickSuccess()
    if currentRegister ~= 0 then
        TriggerServerEvent('qb-storerobbery:server:setRegisterStatus', currentRegister)
        local lockpickTime = 1000 * 30
        LockpickDoorAnim(lockpickTime)
        QBCore.Functions.Progressbar('search_register', Lang:t('text.emptying_the_register'), lockpickTime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'veh@break_in@0h@p_m_one@',
            anim = 'low_force_entry_ds',
            flags = 16,
        }, {}, {}, function() -- Done
            openingDoor = false
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-storerobbery:server:takeMoney', currentRegister, true)
        end, function() -- Cancel
            openingDoor = false
            ClearPedTasks(PlayerPedId())
            QBCore.Functions.Notify(Lang:t('error.process_canceled'), 'error')
            currentRegister = 0
        end)
    else
        SendNUIMessage({
            action = 'kekw',
        })
    end
end


function LockpickDoorAnim(time)
    time = time / 1000
    loadAnimDict('veh@break_in@0h@p_m_one@')
    TaskPlayAnim(PlayerPedId(), 'veh@break_in@0h@p_m_one@', 'low_force_entry_ds', 3.0, 3.0, -1, 16, 0, false, false, false)
    openingDoor = true
    CreateThread(function()
        while openingDoor do
            TaskPlayAnim(PlayerPedId(), 'veh@break_in@0h@p_m_one@', 'low_force_entry_ds', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
            Wait(2000)
            time = time - 2
            TriggerServerEvent('qb-storerobbery:server:takeMoney', currentRegister, false)
            if time <= 0 then
                openingDoor = false
                StopAnimTask(PlayerPedId(), 'veh@break_in@0h@p_m_one@', 'low_force_entry_ds', 1.0)
            end
        end
        currentRegister = 0
    end)
end

function SearchVaultAnim(time)
    time = time / 1000
    loadAnimDict('anim@amb@clubhouse@tutorial@bkr_tut_ig3@')
    TaskPlayAnim(PlayerPedId(), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 3.0, 3.0, -1, 16, 0, false, false, false)
    openingDoor = true
    CreateThread(function()
        while openingDoor do
            TaskPlayAnim(PlayerPedId(), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 3.0, 3.0, -1, 16, 0, 0, 0, 0)
            Wait(2000)
            time = time - 2
            -- TriggerServerEvent('qb-storerobbery:server:SafeReward', currentSafe, false)
            if time <= 0 then
                openingDoor = false
                StopAnimTask(PlayerPedId(), 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 'machinic_loop_mechandplayer', 1.0)
            end
        end
        currentSafe = 0
    end)
end

RegisterNUICallback('callcops', function(_, cb)
    TriggerEvent('police:SetCopAlert')
    cb('ok')
end)

RegisterNetEvent('SafeCracker:EndMinigame', function(won)
    if currentSafe ~= 0 then
        if won then
            if currentSafe ~= 0 then
                if not Config.Safes[currentSafe].robbed then
                    SetNuiFocus(false, false)
                    takeAnim()
                    TriggerServerEvent('qb-storerobbery:server:SafeReward', currentSafe)
                    TriggerServerEvent('qb-storerobbery:server:setSafeStatus', currentSafe)
                    currentSafe = 0
                end
            else
                SendNUIMessage({
                    action = 'kekw',
                })
            end
        end
    end
    copsCalled = false
end)

RegisterNUICallback('PadLockSuccess', function(_, cb)
    if currentSafe ~= 0 then
        if not Config.Safes[currentSafe].robbed then
            SendNUIMessage({
                action = 'kekw',
            })
        end
    else
        SendNUIMessage({
            action = 'kekw',
        })
    end
    cb('ok')
end)

RegisterNUICallback('PadLockClose', function(_, cb)
    SetNuiFocus(false, false)
    copsCalled = false
    cb('ok')
end)

RegisterNUICallback('CombinationFail', function(_, cb)
    PlaySound(-1, 'Place_Prop_Fail', 'DLC_Dmod_Prop_Editor_Sounds', 0, 0, 1)
    cb('ok')
end)

RegisterNUICallback('TryCombination', function(data, cb)
    QBCore.Functions.TriggerCallback('qb-storerobbery:server:isCombinationRight', function(combination)
        if tonumber(data.combination) ~= nil then
            if tonumber(data.combination) == combination then
                takeAnim()
                SetNuiFocus(false, false)
                SendNUIMessage({
                    action = 'closeKeypad',
                    error = false,
                })
            else
                TriggerEvent('police:SetCopAlert')
                SetNuiFocus(false, false)
                SendNUIMessage({
                    action = 'closeKeypad',
                    error = true,
                })
                currentSafe = 0
            end
        end
        cb('ok')
    end, currentSafe)
end)

RegisterNetEvent('qb-storerobbery:client:setRegisterStatus', function(batch, val)
    -- Has to be a better way maybe like adding a unique id to identify the register
    if (type(batch) ~= 'table') then
        Config.Registers[batch] = val
    else
        for k in pairs(batch) do
            Config.Registers[k] = batch[k]
        end
    end
end)

RegisterNetEvent('qb-storerobbery:client:setSafeStatus', function(safe, bool)
    Config.Safes[safe].robbed = bool
end)

RegisterNetEvent('qb-storerobbery:client:robberyCall', function(_, _, _, coords)
    if (PlayerJob.name == 'police' or PlayerJob.type == 'leo') and onDuty then
        PlaySound(-1, 'Lose_1st', 'GTAO_FM_Events_Soundset', 0, 0, 1)
        TriggerServerEvent('police:server:policeAlert', Lang:t('email.storerobbery_progress'))

        local transG = 250
        local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite(blip, 458)
        SetBlipColour(blip, 1)
        SetBlipDisplay(blip, 4)
        SetBlipAlpha(blip, transG)
        SetBlipScale(blip, 1.0)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(Lang:t('email.shop_robbery'))
        EndTextCommandSetBlipName(blip)
        while transG ~= 0 do
            Wait(180 * 4)
            transG = transG - 1
            SetBlipAlpha(blip, transG)
            if transG == 0 then
                SetBlipSprite(blip, 2)
                RemoveBlip(blip)
                return
            end
        end
    end
end)
