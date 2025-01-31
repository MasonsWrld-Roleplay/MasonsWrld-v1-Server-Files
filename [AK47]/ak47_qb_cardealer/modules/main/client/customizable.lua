function setVehicleFuel(vehicle)
    if GetResourceState('ps-fuel') == 'started' then
        exports['ps-fuel']:SetFuel(vehicle, tonumber(100.0))
    else
        --custom fuel code here
        SetVehicleFuelLevel(vehicle, 100.0)
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
    elseif GetResourceState('qb-vehiclekeys') == 'started' then
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
    else
        --custom code here
    end
end

AddEventHandler('ak47_qb_cardealer:onpurchase', function(vehicle, plate, data)
    -- when vehicle purchased
    givekey(vehicle, plate)
    setVehicleFuel(vehicle)
end)