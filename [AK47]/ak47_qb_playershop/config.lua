Config = {}
Config.Locale = 'en'
Config.Debug = false

Config.InvImgLink = "nui://ox_inventory/web/images/"          -- qb-inventoy
--[[
Config.InvImgLink = "nui://ps-inventoy/html/images/"            -- ps-inventoy
Config.InvImgLink = "nui://lj-inventoy/html/images/"            -- lj-inventoy
Config.InvImgLink = "nui://ox_inventory/web/images/"            -- ox_inventory
Config.InvImgLink = "nui://ak47_inventory/html/img/items/"      -- ak47_inventory
]]

Config.TargetScript = 'ox_target'

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
    ['license:b4c3085c9b94c9a415fb213e539fcb0960fab03b'] = true,
    ['license:1acbbacdcccdb28d1470d77207372c2624655c2c'] = true,
    ['license:9ed0b9465c6c5927ba9aafe2aa2773efabc6ba14'] = true,
}
--Or character id
Config.AdminWithIdentifier = {
    --['xxxxxxxx'] = true,
}
----------------------------------------------------------

Config.Commands = {
    createshop = 'createshop',
    deleteshop = 'deleteshop',
}

Config.ShopSellValuePercent = 75 --75% of total price including upgrades

Config.PayCheckInterval = 15 * 60 --15 minutes

Config.LoadDelay = 30 --seconds [vehicle load with items]

Config.Shipments = {
    ['Docks']       = {location = vector3(1201.44, -3182.96, 5.85), CostPercentage = 15}, --cost 15% of the item price
    ['Weapon Depo'] = {location = vector3(211.4, -3327.18, 5.87),   CostPercentage = 30}, --cost 30% of the item price
    --['Any Name']  = {location = vector3(1201.44, -3182.96, 5.85), CostPercentage = 30}, --cost 30% of the item price

}
Config.ShipmentByItem = { --you can make specific shipment location for an item
    ['water'] = {location = vector3(1201.44, -3182.96, 5.85), CostPercentage = 30},
    ['bread'] = {location = vector3(1201.44, -3182.96, 5.85), CostPercentage = 30},
    ['burger'] = {location = vector3(1201.44, -3182.96, 5.85), CostPercentage = 30},
}

Config.ShopkeeperPed = 'mp_m_shopkeep_01'

Config.ShopUpgrades = {
    [1] = {--default state
        upgradename         = 'Level 1',
        upgradedescription  = 'Stock: 25 | Vehicle: Speedo | Vehicle Capacity: 10 | Cost: $0',
        itemcapacity        = 25,
        upgradecost         = 0,
        vehicledata         = {model = 'speedo', capacity = 10},
    },
    [2] = {
        upgradename         = 'Level 2',
        upgradedescription  = 'Stock: 35 | Vehicle: Gburrito | Vehicle Capacity: 20 | Cost: $75000',
        itemcapacity        = 35,
        upgradecost         = 75000,
        vehicledata         = {model = 'gburrito', capacity = 20},
    },
    [3] = {
        upgradename         = 'Level 3',
        upgradedescription  = 'Stock: 45 | Vehicle: Mule | Vehicle Capacity: 30 | Cost: $150000',
        itemcapacity        = 45,
        upgradecost         = 150000,
        vehicledata         = {model = 'mule', capacity = 30},
    },
    [4] = {
        upgradename         = 'Level 4',
        upgradedescription  = 'Stock: 55 | Vehicle: Mule 3 | Vehicle Capacity: 30 | Cost: $275000',
        itemcapacity        = 55,
        upgradecost         = 275000,
        vehicledata         = {model = 'mule3', capacity = 40},
    },
    [5] = {
        upgradename         = 'Level 5',
        upgradedescription  = 'Stock: 70 | Vehicle: Pounder | Vehicle Capacity: 50 | Cost: $500000',
        itemcapacity        = 70,
        upgradecost         = 500000,
        vehicledata         = {model = 'pounder', capacity = 50},
    },
}

Config.Blips = {
    empty = {
        color = 39, size = 0.8, singlename = false,
    },
    sold = {
        color = 2, size = 0.8, singlename = false,
    }
}
