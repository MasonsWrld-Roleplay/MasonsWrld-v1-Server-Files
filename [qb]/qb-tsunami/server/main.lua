-------------------- Time In Seconds --------------------
local Time = 30 * 1000
local Time2 = 15 * 1000


-------------------- Restart Events --------------------

-- 30 Minutes Event
RegisterServerEvent('strez:server:30min', function()
    local title = 'Yellow Weather Warning'
    local message = 'Reports of light rain incoming within 30 minutes'

    exports["lb-phone"]:EmergencyNotification(source, {
        title = title,
        content = message,
        icon = "warning",
    })
    Wait(Time)
    TriggerEvent('qb-weathersync:server:setWeather', 'OVERCAST')
end)

-- 15 Minutes Event
RegisterServerEvent('strez:server:15min', function()
    local title = 'Amber Weather Warning'
    local message = 'Reports of heavy rain and strong winds incoming within 15 minutes'

    exports["lb-phone"]:EmergencyNotification(source, {
        title = title,
        content = message,
        icon = "warning",
    })
    Wait(Time)
    TriggerEvent('qb-weathersync:server:setWeather', 'RAIN')
end)

-- 5 Minutes Event
RegisterServerEvent('strez:server:5min', function()
    local title = 'Red Weather Warning'
    local message = 'WARNING - Extreme weather conditions incoming, please seek shelter immediately'

    exports["lb-phone"]:EmergencyNotification(source, {
        title = title,
        content = message,
        icon = "danger",
    })
    Wait(Time2)
    TriggerEvent('qb-weathersync:server:setWeather', 'THUNDER')
end)


-------------------- TxAdmin Auto Restart Tsunami --------------------

-- 30 minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 1800 then
        TriggerClientEvent('strez:client:SendMailTsunamiAuto30', -1)
    end
end)

-- 15 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 900 then
        TriggerClientEvent('strez:client:SendMailTsunamiAuto15', -1)
    end
end)

-- 5 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 300 then
        TriggerClientEvent('strez:client:SendMailTsunamiAuto5', -1)
    end
end)