------------------------------------------------------------------------------------------------------
-------------------------------------------- WEBHOOK URLS --------------------------------------------
------------------------------------------------------------------------------------------------------


--These are disabled by default, until you enter your discord webhooks.
local ExploitLogWebhook = 'https://discord.com/api/webhooks/1274223988020744235/YZok6YtBNa1UvU5REqCcFuPDKbSxbxZxob3EbKM0X4B1jv1_M8mBy5mlxcGRu0Fcu8nx' --If a player is found using cheat engine to change the hash of a vehicle, this will send a message on discord and kick them from the game.
local ImpoundLogWebhook = 'https://discord.com/api/webhooks/1274224153872044072/MA1sIyTfEBwP-e60-D1fmD01WqKocRwPMW8Yaexhdu40vwigka8MQ8DIxaCM0sa1T2Tl' --When a player impounds/unimpounds a vehicle.
local TransferVehicleLogWebhook = 'https://discord.com/api/webhooks/1274224436152762409/uNL5YsF_62LKoycjcSvWn546SLbhHmj7saLscyZv0QEJITXqOSUSosf6oQDwjLv6YeSL' --When a player transfers a vehicle to another player.
local VehicleManagementLogWebhook = 'https://discord.com/api/webhooks/1274224788746797178/i_Suuv74f9tVooFZgOhfFWuMeS6ro46ANjv4VLBm1KLqugVgje5on9Hy3vFBG5lfEmtX' --When a staff member uses the vehicle managment commands.
local GarageSpaceLogWebhook = 'https://discord.com/api/webhooks/1274224980577615984/_YLfZEznezFn4Lk0H5iSJbdqnqZoQdEmuQJTP3F_wgSnhexSjOfq-g-muiwyvDXNcmqk' --When a player sells a garage slot.


------------------------------------------------------------------------------------------------------
---------------------------------------------- WEBHOOKS ----------------------------------------------
------------------------------------------------------------------------------------------------------


function ExploitAlertLogs(source, plate, newmodel, oldmodel, identifier)
    if ExploitLogWebhook ~= nil and #ExploitLogWebhook > 10 then
        local message = string.format(L('logs_exploit_message'), GetPlayerName(source), plate, newmodel, oldmodel, identifier)
        PerformHttpRequest(ExploitLogWebhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

function ImpoundVehicleLogs(source, action, vehiclelabel, vehicleplate, impoundlocation)
    if ImpoundLogWebhook ~= nil and #ImpoundLogWebhook > 10 then
        local message, color
        if action == 'impound' then
            message = string.format(L('logs_impound_message'), vehicleplate, vehiclelabel, impoundlocation, GetPlayerName(source), source, GetIdentifier(source))
            color = 16711680
        elseif action == 'unimpound' then
            message = string.format(L('logs_unimpound_message'), vehicleplate, vehiclelabel, GetPlayerName(source), source, GetIdentifier(source))
            color = 56108
        end
        local data = {{
            ['color'] = color,
            ['title'] = action:sub(1,1):upper()..action:sub(2),
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/VMPGPTQ.png',
            },
        }}
        PerformHttpRequest(ImpoundLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end

function TransferVehicleLogs(source, target, plate, label)
    if TransferVehicleLogWebhook ~= nil and #TransferVehicleLogWebhook > 10 then
        local message = string.format(L('logs_transfer_message'), plate, label, GetPlayerName(source), source, GetIdentifier(source), GetPlayerName(target), target, GetIdentifier(target))
        local data = {{
            ['color'] = '2061822',
            ['title'] = L('logs_transfer_title'),
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/VMPGPTQ.png',
            },
        }}
        PerformHttpRequest(TransferVehicleLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end

function VehicleManagmentLogs(source, action, plate, target, garage_type)
    if VehicleManagementLogWebhook ~= 'CHANGE_ME' and VehicleManagementLogWebhook ~= nil then
        local message, color
        if action == 'add' then
            message = string.format(L('logs_vehiclemanagment_add'), plate, garage_type, GetPlayerName(source), source, GetIdentifier(source), GetPlayerName(target), target, GetIdentifier(target))
            color = '56108'
        elseif action == 'delete' then
            message = string.format(L('logs_vehiclemanagment_delete'), plate, GetPlayerName(source), source, GetIdentifier(source))
            color = '16711680'
        elseif action == 'plate' then
            message = string.format(L('logs_vehiclemanagment_plate'), plate, target, GetPlayerName(source), source, GetIdentifier(source))
            color = '2061822'
        end
        local data = {{
            ['color'] = color,
            ['title'] = string.format(L('logs_vehiclemanagment_title'), string.upper(action)),
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/VMPGPTQ.png',
            },
        }}
        PerformHttpRequest(VehicleManagementLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end

function GarageSpaceLogs(source, new_limit, price, target)
    if GarageSpaceLogWebhook ~= nil and #GarageSpaceLogWebhook > 10 then
        local message = string.format(L('logs_garagespace_message'), new_limit, price, GetPlayerName(source), source, GetIdentifier(source), GetPlayerName(target), target, GetIdentifier(target))
        local data = {{
            ['color'] = '2061822',
            ['title'] = L('logs_garagespace_title'),
            ['description'] = message,
            ['footer'] = {
                ['text'] = os.date('%c'),
                ['icon_url'] = 'https://i.imgur.com/VMPGPTQ.png',
            },
        }}
        PerformHttpRequest(GarageSpaceLogWebhook, function(err, text, headers) end, 'POST', json.encode({username = L('garage_title'), embeds = data}), { ['Content-Type'] = 'application/json' })
    end
end