QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	TriggerServerEvent('ak47_qb_playershop:playerload')
end)

Notify = function(msg, type)
	if type == 'success' then
		QBCore.Functions.Notify(msg, 'success')
	elseif type == 'warning' then
		QBCore.Functions.Notify(msg, 'error')
	elseif type == 'error' then
		QBCore.Functions.Notify(msg, 'error')
	else
		QBCore.Functions.Notify(msg)
	end
end

IsSpawnPointClear = function(coords, radius)
    if coords then
        coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords
    else
        coords = GetEntityCoords(PlayerPedId())
    end
    local vehicles = GetGamePool('CVehicle')
    local closeVeh = {}
    for i = 1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local distance = #(vehicleCoords - coords)
        if distance <= radius then
            closeVeh[#closeVeh + 1] = vehicles[i]
        end
    end
    if #closeVeh > 0 then return false end
    return true
end