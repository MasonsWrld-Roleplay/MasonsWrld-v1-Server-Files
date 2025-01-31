if not Config.Logs.Status or Config.Logs.Logger ~= 'discord' then return end

local botSettings = {
    name = 'UM-Multicharacter',
    image = 'https://files.fivemerr.com/images/d0e1f0c6-7cc5-4fb5-ad91-074d8d165cb7.png'
}

local webhooks = {
    ['playgame'] = 'https://discord.com/api/webhooks/1303708806349459567/ktT4WzrlI9cinSK921yDBEokCC1Q8P4jgCwwgiZmEa6I8Vdcccy-4xH6PnpCMBChVH9v',
    ['logout'] = 'https://discord.com/api/webhooks/1303708838616367184/blkVv3uif1mX3hDTevVNeUqxnHSSN80hwyOEeWOwwC-41HJ-UVdFteUbUn2yvtyoJuex',
    ['exploit'] = 'https://discord.com/api/webhooks/1303708874955690035/B5pHhUXjcFyLtF_QSdxRBnQrUOVMLl7rAXFcb7p2uP3XkiDBmAAsKkd1SyqjnmsUZ6FU',
    ['createcharacter'] = 'https://discord.com/api/webhooks/1303708908065394698/WoZ5ORjTFDmvH6xSdZokNlZi8r0zexlL_HfPh7OfVXYIudnoTMaxhbcXpH0TpqXMPRSN',
    ['deletecharacter'] = 'https://discord.com/api/webhooks/1303708939417948170/5BAPhVd-ydsWv5f-gUUWCrULvZ_kbSTj-mhygCmqAW2ITSLa5Xjw8PwcNURGykoLWb4o',
}

local colors = {
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

---@param src string
---@param idType string
---@return string
local function getIdentifier(src, idType)
    local identifier = GetPlayerIdentifierByType(src, idType) or 'unknown'
    return identifier:gsub(idType .. ':', '') or identifier
end

---@param src string
---@return string
local function userInformation(src)
    local information = string.format(
        "### 👤 User Information\n**[id]: **%s\n**[name]: **%s\n**[discord]: **%s\n**[steam]: **%s\n**[license]: **%s\n**[license2]: **%s\n",
        tostring(src),
        GetPlayerName(src),
        getIdentifier(src, 'discord'),
        getIdentifier(src, 'steam'),
        getIdentifier(src, 'license'),
        getIdentifier(src, 'license2')
    )
    return information
end

---@param data table
---@async
local function sendWebHook(data)
    local timestamp = os.date("%c")

    local message = {
        {
            ["color"] = data.color,
            ["title"] = data.title,
            ["description"] = data.message,
            ["footer"] = {
                ["text"] = timestamp .. ' | version 4.1.7-next',
                ["icon_url"] = botSettings.image,
            },
        }
    }

    local jsonData = json.encode({
        username = botSettings.name,
        avatar_url = botSettings.image,
        embeds = message
    })

    SetTimeout(1000, function()
        PerformHttpRequest(data.link, function(_, _, _)
        end, 'POST', jsonData, { ['Content-Type'] = 'application/json' })
    end)
end

---@param src string
---@param type string
---@param message string
---@param color? string
---@param webhook? string
function DiscordWebHook(src, type, message, color, webhook)
    local webhookLink = webhooks[webhook]
    if not webhookLink or webhookLink == '' then return end

    local data = {
        link = webhookLink,
        title = '📌 [' .. type .. ']',
        color = colors[color] or colors['blue'],
        message = userInformation(src) .. '### 💬 Message \n ### ' .. message .. ' \n'
    }

    sendWebHook(data)
end
