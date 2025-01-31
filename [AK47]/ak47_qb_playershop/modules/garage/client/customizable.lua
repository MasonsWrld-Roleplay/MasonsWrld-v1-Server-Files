function setVehicleFuel(vehicle)
    if GetResourceState('ps-fuel') == 'started' then
        exports['ps-fuel']:SetFuel(vehicle, 100.0)
    elseif GetResourceState('ps-fuel') == 'started' then
        exports['ps-fuel']:SetFuel(vehicle, 100.0)
    else
        --custom fuel code here
    end
end

function givekey(vehicle, plate)
    -- give vehicle key here
    if GetResourceState('ak47_qb_vehiclekeys') == 'started' then
        exports['ak47_qb_vehiclekeys']:GiveKey(plate)
    elseif GetResourceState('wasabi_carlock') == 'started' then
        exports['wasabi_carlock']:GiveKey(plate)
    elseif GetResourceState('qs-vehiclekeys') == 'started' then
        exports['qs-vehiclekeys']:GiveKeys(plate, GetEntityModel(vehicle))
    elseif GetResourceState('cd_garage') == 'started' then
        TriggerEvent('cd_garage:AddKeys', exports['cd_garage']:GetPlate(vehicle))
    else
        --custom code here
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
    end
end

function removekey(vehicle, plate)
    -- remove vehicle key here
    if GetResourceState('ak47_qb_vehiclekeys') == 'started' then
        exports['ak47_qb_vehiclekeys']:RemoveKey(plate)
    elseif GetResourceState('qs-vehiclekeys') == 'started' then
        exports['qs-vehiclekeys']:RemoveKeys(plate, GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    else
        --custom code here
    end
end