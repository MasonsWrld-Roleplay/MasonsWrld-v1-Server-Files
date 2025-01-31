-- 30 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto30', function()
    TriggerServerEvent('strez:server:30min')
end)

-- 15 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto15', function()
    TriggerServerEvent('strez:server:15min')
end)

-- 5 Minutes Reminder
RegisterNetEvent('strez:client:SendMailTsunamiAuto5', function()
    TriggerServerEvent('strez:server:5min')
end)