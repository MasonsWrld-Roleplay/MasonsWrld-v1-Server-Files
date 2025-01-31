local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('browns:wig:noItems',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('You Dont Have Items Needed for Crafting', 'error', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Crafting',
            description = 'You Dont Have Items Needed for Crafting',
            type = 'error'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:tableOut',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('You Already have a Wig Table out', 'error', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Crafting',
            description = 'You Already have a Wig Table out',
            type = 'error'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:noTable',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('You Dont have a Wig Table', 'error', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Crafting',
            description = 'You Dont have a Wig Table',
            type = 'error'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:noSell',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('You Dont have any Wigs to sale!', 'error', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Selling',
            description = 'You Dont have any Wigs to sale!',
            type = 'error'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:SendMission',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('A Client Wants to BUY WIGS IN BULK! Check your GPS!', 'success', 30000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'CHECK YOUR GPS',
            description = 'A Client Wants to BUY WIGS IN BULK! Check your GPS!',
            type = 'success'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:clSearch',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('Searching for Clients', 'primary', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Selling',
            description = 'Searching for Clients',
            type = 'primary'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:clFound',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('Client Found!', 'success', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Selling',
            description = 'Client Found!',
            type = 'success'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:wig:clientPhone',function() 
    if Config.Notifications == 'qb' then

        QBCore.Functions.Notify('You Received a Clientale Phone!!!', 'success', 5000)

    elseif Config.Notifications == 'ox' then
        lib.notify({
            title = 'Wig Selling',
            description = 'You Received a Clientale Phone!!!',
            type = 'success'
        })

    elseif Config.Notifications == 'custom' then 

        -- Add your own Notification Logic Here if using different notification system

    end
end)

RegisterNetEvent('browns:oxWigCornerSellSucc', function()

    if Config.Notifications == 'ox' then 

        lib.notify({
            title = 'Wig Crafting',
            description = 'You Already have a Wig Table out',
            type = 'error'
        })
    elseif Config.Notifications == 'custom' then
        -- add your own Notification Logic Her is using different notification system
    end
end)

