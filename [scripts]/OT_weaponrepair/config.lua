Config = {}

Config.useOTSkills = false -- requires our skills system, you can find here: https://forum.cfx.re/t/paid-ot-skills/4917372
Config.xpreward = 5

Config.requireditem = 'money'
Config.requireditemamount = 500000
Config.repairtime = 30000
Config.repairItem = 'weaponrepairkit'

Config.require = {
    -- ['WEAPON_COMBATPDW'] = {
    --     requireditem = 'money',
    --     requireditemamount = 2000,
    --     repairtime = 10000
    -- },
}

Config.locations = {
    {
        coords = vector3(770.28, -1697.79, 44.15 - 1.0),
        heading = 84.29,
        spawnprop = true, -- spawns the workbench at the location 
        free = false -- allows weapons to be repaired for free at the location
    },
    {
        coords = vector3(347.86, 240.34, 132.69 - 1.0),
        heading = 248.44,
        spawnprop = true, -- spawns the workbench at the location 
        free = false -- allows weapons to be repaired for free at the location
    },
    {
        coords = vector3(891.29, -952.58, 44.2 - 1.0),
        heading = 89.18,
        spawnprop = true, -- spawns the workbench at the location 
        free = false -- allows weapons to be repaired for free at the location
    },
}