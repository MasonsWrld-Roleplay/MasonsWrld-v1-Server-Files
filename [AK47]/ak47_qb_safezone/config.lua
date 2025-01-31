Config = {}
Config.Locale = 'en'
Config.Debug = false

Config.Commands = {
	createsafezone  = 'createsafezone',
    deletesafezone  = 'deletesafezone',
    zonesetting     = 'zonesetting',
}

--You can set admin in alternative ways-------------------
--Ace Permission
Config.AdminWithAce = true
--Or group (Only works in my qb base)
Config.AdminWithGroup = {
    ['admin'] = true,
    ['god'] = true,
}
--Or license
Config.AdminWithLicense = {
    ['license:b4c3085c9b94c9a415fb213e539fcb0960fab03b'] = true,
    ['license:1acbbacdcccdb28d1470d77207372c2624655c2c'] = true,
    ['license:9ed0b9465c6c5927ba9aafe2aa2773efabc6ba14'] = true,
}
--Or character id
Config.AdminWithIdentifier = {
    --['xxxxxxxx'] = true,
}
----------------------------------------------------------

Config.AlertStyle = {
    icon = 'hand',
    textColor = 'white',
    borderRadius = 5,
    backgroundColor = 'rgb(187 72 72)',
}
Config.HideAlertAfterDelay = false
Config.HideAlertDelay = 6 --seconds

Config.WhitelistedWeapons = {
    --[`weapon_pistol`] = true,
    --[`weapon_combatpistol`] = true,
}

Config.WhitelistedJobWeapons = {
    police = {
        [`weapon_stungun`] = true,
    },
    ambulance = {
        --[`weapon_stungun`] = true,
    },
}

