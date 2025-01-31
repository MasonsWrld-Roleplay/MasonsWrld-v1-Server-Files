--All codes in this file are taken from "https://github.com/qbcore-framework/qb-smallresources/blob/main/client/seatbelt.lua". 
--I use it because it works more smoother. 
--Thanks to the people who made it.

local sleep = 0
newvehicleBodyHealth, currentvehicleBodyHealth, frameBodyChange, lastFrameVehiclespeed, lastFrameVehiclespeed2, thisFrameVehicleSpeed, tick = 0, 0, 0, 0, 0, 0, 0
local lastVehicle = nil
local veloc

local function EjectFromVehicle()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    local coords = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, 1.0)
    SetEntityCoords(ped, coords.x, coords.y, coords.z)
    Wait(1)
    SetPedToRagdoll(ped, 5511, 5511, 0, 0, 0, 0)
    SetEntityVelocity(ped, veloc.x*4,veloc.y*4,veloc.z*4)
    local ejectspeed = math.ceil(GetEntitySpeed(ped) * 8)
    if GetEntityHealth(ped) - ejectspeed > 0 then
        SetEntityHealth(ped, GetEntityHealth(ped) - ejectspeed)
    elseif GetEntityHealth(ped) ~= 0 then
        SetEntityHealth(ped, 0)
    end
end

function ToggleSeatbelt()
    if Config.DisableBeltSystem then return end
    if not IsPedInAnyVehicle(PlayerPedId(), false) or IsPauseMenuActive() then return end
    local class = GetVehicleClass(GetVehiclePedIsUsing(PlayerPedId()))
    if class == 8 or class == 13 or class == 14 then return end
    if beltIgnore then return end

    seatbeltOn = not seatbeltOn
    TriggerEvent("InteractSound_CL:PlayOnOne", seatbeltOn and "carbuckle" or "carunbuckle", 0.25)
    TriggerEvent('wais:addNotification', 'info', 'Information', seatbeltOn and Config.Notifications.belt_plug or Config.Notifications.belt_unplug)
    Config.CustomNotify('info', 'Information', seatbeltOn and Config.Notifications.belt_plug or Config.Notifications.belt_unplug, 2500)
end

RegisterNetEvent('EnteredVehicle', function()
    if Config.DisableBeltSystem then return end
    local playerPed = PlayerPedId()
    while IsPedInAnyVehicle(playerPed, false) do
        Wait(0)
        local currentVehicle = GetVehiclePedIsIn(playerPed, false)
        if currentVehicle and currentVehicle ~= false and currentVehicle ~= 0 then
            lastVehicle = GetVehiclePedIsIn(playerPed, false)

            thisFrameVehicleSpeed = GetEntitySpeed(currentVehicle) * 3.6
            currentvehicleBodyHealth = GetVehicleBodyHealth(currentVehicle)
            if currentvehicleBodyHealth == 1000 and frameBodyChange ~= 0 then
                frameBodyChange = 0
            end
            if frameBodyChange ~= 0 then
                if lastFrameVehiclespeed > 110 and thisFrameVehicleSpeed < (lastFrameVehiclespeed * 0.75) then
                    if frameBodyChange > 18.0 then
                        if not seatbeltOn and not IsThisModelABike(currentVehicle) then
                            if math.random(math.ceil(lastFrameVehiclespeed)) > 60 then
                                EjectFromVehicle()
                            end
                        elseif not (seatbeltOn) and not IsThisModelABike(currentVehicle) then
                            if lastFrameVehiclespeed > 150 then
                                if math.random(math.ceil(lastFrameVehiclespeed)) > 150 then
                                    EjectFromVehicle()
                                end
                            end
                        end
                    else
                        if not seatbeltOn and not IsThisModelABike(currentVehicle) then
                            if math.random(math.ceil(lastFrameVehiclespeed)) > 60 then
                                EjectFromVehicle()
                            end
                        elseif not (seatbeltOn) and not IsThisModelABike(currentVehicle) then
                            if lastFrameVehiclespeed > 120 then
                                if math.random(math.ceil(lastFrameVehiclespeed)) > 200 then
                                    EjectFromVehicle()
                                end
                            end
                        end
                    end

                end
            end
            if lastFrameVehiclespeed < 100 then
                Wait(100)
                tick = 0
            end
            frameBodyChange = newvehicleBodyHealth - currentvehicleBodyHealth
            if tick > 0 then
                tick = tick - 1
                if tick == 1 then
                    lastFrameVehiclespeed = GetEntitySpeed(currentVehicle) * 3.6
                end
            else
                lastFrameVehiclespeed2 = GetEntitySpeed(currentVehicle) * 3.6
                if lastFrameVehiclespeed2 > lastFrameVehiclespeed then
                    lastFrameVehiclespeed = GetEntitySpeed(currentVehicle) * 3.6
                end
                if lastFrameVehiclespeed2 < lastFrameVehiclespeed then
                    tick = 25
                end

            end
            if tick < 0 then
                tick = 0
            end
            newvehicleBodyHealth = GetVehicleBodyHealth(currentVehicle)
            veloc = GetEntityVelocity(currentVehicle)
        else
            if lastVehicle then
                Wait(200)
                newvehicleBodyHealth = GetVehicleBodyHealth(lastVehicle)
                lastVehicle = nil
            end
            lastFrameVehiclespeed2 = 0
            lastFrameVehiclespeed = 0
            newvehicleBodyHealth = 0
            currentvehicleBodyHealth = 0
            frameBodyChange = 0
            Wait(2000)
            break
        end
    end
end)
