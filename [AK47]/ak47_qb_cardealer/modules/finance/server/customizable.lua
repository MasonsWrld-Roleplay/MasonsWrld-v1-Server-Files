PhoneSMS = function(citizenid, dealername, subject, message)
    if GetResourceState('qs-smartphone') == 'started' then
        TriggerEvent('qs-smartphone:server:sendNewMailToOffline', citizenid, {
            sender = dealername,
            subject = subject,
            message = message,
            button = {}
        })
    elseif GetResourceState('qb-phone') == 'started' then
        exports['qb-phone']:sendNewMailToOffline(citizenid, {
            sender = dealername,
            subject = subject,
            message = message,
            button = {}
        })
    elseif GetResourceState('gksphone') == 'started' then
        exports["gksphone"]:SendNewMailOffline(citizenid, {
            sender = dealername,
            image = '/html/static/img/icons/mail.png',
            subject = subject,
            message = message
        })
    else
        --add your phone email here
        
    end
end