local Slots = {}

-- Add the user's rockstar license or license2: and how many slots they want to have in total
-- If you are using Qbox, change license:xxxxx to license2:xxxxx

-- @ If Slots.DiscordPerm.status is false | for manuel license works
-- This does not include Config.DefaultSlots, it sets the direct slot limit of the character

Slots.List = {
     {license = "license:b4c3085c9b94c9a415fb213e539fcb0960fab03b", totalSlot = 10}, -- Sully
     {license = "license:70a26edb8794f9f4abcfcec9964bf39e374c81bd", totalSlot = 10}, -- Cench
}


-- This structure configures extra slot allocations based on Discord roles.
-- The `Slots.DiscordPerm` structure allows you to assign additional slots to users
-- based on specific Discord roles that they possess

Slots.DiscordPerm = {
    status = false,                           -- Set to true to enable this feature, or false to disable it.
    role = {
        { id = "roleid", addExtraSlot = 20 }, -- Example: Users with this role will have 20 + Config.DefaultSlots = 25 in total.
        { id = "roleid", addExtraSlot = 3 },  -- Replace 'roleid' with your Discord role ID and specify the total extra slots.
        { id = "roleid", addExtraSlot = 4 },  -- Repeat this pattern for as many roles as you need.
        { id = "roleid", addExtraSlot = 5 },
        { id = "roleid", addExtraSlot = 6 },
    }
}

Slots.CustomDeleteCharacterAccess = {
    status = true, -- Set to true to enable this feature, or false to disable it.
    list = {
        "license:b4c3085c9b94c9a415fb213e539fcb0960fab03b", -- Sully
        "license:70a26edb8794f9f4abcfcec9964bf39e374c81bd", -- Cench
    }
}

return Slots
