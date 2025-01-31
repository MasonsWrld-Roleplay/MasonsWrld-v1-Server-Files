Config = {}
Config.Locale = 'en'
Config.Debug = false

Config.SocietyInManagement = false --enable if your society is inside qb-management

Config.UseBankMoney = true

Config.VehiclesTable = "vehicles" --in database
Config.OwnedVehiclesTable = 'player_vehicles' --in database
Config.TargetScript = 'qb-target'

Config.Commands = {
    adddealerjob = "adddealerjob", --Create dealer job
    createdealer = "createdealer", --Start dealer creation
    deletedealer = "removedealer", --Delete the current dealer
    adddisplay   = "adddisplay", --Start dealer creation
}

Config.SpecialCoin = { 
    enable = false,
    tablename           = 'glrp_tebex', --adjust this [I don't know what coin script you are using or not, so don't open ticket for this]
    citizenidcolumname  = 'citizenid',  --adjust this [I don't know what coin script you are using or not, so don't open ticket for this]
    coincolumname       = 'credit',     --adjust this [I don't know what coin script you are using or not, so don't open ticket for this]
}

--You can set admin in alternative ways-------------------
--Ace Permission
Config.AdminWithAce = true
--Or group
Config.AdminWithGroup = {
    ['admin'] = true,
    ['superadmin'] = true,
    ['god'] = true,
}
--Or license
Config.AdminWithLicense = {
    --['license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'] = true,
    ['license:b4c3085c9b94c9a415fb213e539fcb0960fab03b'] = true,
    ['license:1acbbacdcccdb28d1470d77207372c2624655c2c'] = true,
    ['license:9ed0b9465c6c5927ba9aafe2aa2773efabc6ba14'] = true,
}
--Or character id
Config.AdminWithIdentifier = {
    --['xxxxxxxx'] = true,
}
----------------------------------------------------------




Config.JobTemplate = {
    [0] = {label = 'Recruit',     salary = 100},
    [1] = {label = 'Novice',      salary = 200},
    [2] = {label = 'Experienced', salary = 300},
    [3] = {label = 'Boss',        salary = 400}, -- This is always the last rank. label must be 'Boss' or boss menu won't work
}

--Total 8 digit
Config.PlateLetters     = 2
Config.PlateNumbers     = 5
Config.PlateLettersLast = 1
