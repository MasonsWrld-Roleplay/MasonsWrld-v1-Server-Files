local QBCore = exports['qb-core']:GetCoreObject()
local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['playermoney'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['robbing'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['cuffing'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['drop'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['trunk'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['stash'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['glovebox'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['banking'] = 'https://discord.com/api/webhooks/1278365222645534842/n-8uGFdmQ23IasYqeUM5R_MKaojoO127XEE1h3NKS9CN-l9LPK7r6lUkwFk012Br5Y4V',
    ['vehicleshop'] = '',
    ['vehicleupgrades'] = '',
    ['shops'] = '',
    ['dealers'] = '',
    ['storerobbery'] = '',
    ['bankrobbery'] = '',
    ['powerplants'] = '',
    ['death'] = '',
    ['joinleave'] = '',
    ['ooc'] = '',
    ['report'] = '',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = '',
    ['anticheat'] = '',
    ['weather'] = '',
    ['moneysafes'] = '',
    ['bennys'] = '',
    ['bossmenu'] = '',
    ['robbery'] = '',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = '',
    ['house'] = '',
    ['qb-adminmenu'] = 'https://discord.com/api/webhooks/1274223225596936292/66b9axIL0zHcvFUrmBeaEa3j0NBp5KGsJ6NFhLlxfILJNz1q1xkpkVIj-uMC0P8wJvoK',
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local postData = {}
    local tag = tagEveryone or false
    if not Webhooks[name] then print('Tried to call a log that isn\'t configured with the name of ' ..name) return end
    local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = colors[color] or colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name] + 1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        if tag then
            postData = {username = 'QB Logs', content = '@everyone', embeds = {}}
        else
            postData = {username = 'QB Logs', embeds = {}}
        end
        for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = {username = 'QB Logs', embeds = {}}
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), {['Content-Type'] = 'application/json'})
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')