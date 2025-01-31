Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.PauseMapText = 'MasonsWrldRP | NO1 CITY'                                     -- Text shown above the map when ESC is pressed. If left empty 'FiveM' will appear
Config.HarnessUses = 20
Config.DamageNeeded = 100.0                                  -- amount of damage till you can push your vehicle. 0-1000

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1000000, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = false      -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
    controls = { 24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264 }
}

Config.Binoculars = {
    zoomSpeed = 10.0,        -- camera zoom speed
    storeBinocularsKey = 177 -- backspace by default
}

Config.AIResponse = {
    wantedLevels = false, -- if true, you will recieve wanted levels
    dispatchServices = {  -- AI dispatch services
        [1] = false,      -- Police Vehicles
        [2] = false,      -- Police Helicopters
        [3] = false,      -- Fire Department Vehicles
        [4] = false,      -- Swat Vehicles
        [5] = false,      -- Ambulance Vehicles
        [6] = false,      -- Police Motorcycles
        [7] = false,      -- Police Backup
        [8] = false,      -- Police Roadblocks
        [9] = false,      -- PoliceAutomobileWaitPulledOver
        [10] = false,     -- PoliceAutomobileWaitCruising
        [11] = false,     -- Gang Members
        [12] = false,     -- Swat Helicopters
        [13] = false,     -- Police Boats
        [14] = false,     -- Army Vehicles
        [15] = false      -- Biker Backup
    }
}

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    isEnabled = true,                                     -- If set to true, then discord rich presence will be enabled
    applicationId = '1273662842041663548',                   -- The discord application id
    iconLarge = 'logolargee',                               -- The name of the large icon
    iconLargeHoverText = 'This is a Large icon with text', -- The hover text of the large icon
    iconSmall = 'logolargee',                         -- The name of the small icon
    iconSmallHoverText = 'This is a Small icon with text', -- The hover text of the small icon
    updateRate = 60000,                                    -- How often the player count should be updated
    showPlayerCount = true,                                -- If set to true the player count will be displayed in the rich presence
    maxPlayers = 100,                                       -- Maximum amount of players
    buttons = {
        {
            text = 'Discord',
            url = 'https://discord.gg/masonswrp'
        },
        {
            text = 'Connect!',
            url = 'cfx.re/join/v79elq'
        }
    }
}

Config.Density = {
    parked = 0.2,
    vehicle = 0.2,
    multiplier = 0.2,
    peds = 0.2,
    scenario = 0.2,
}

Config.Disable = {
    hudComponents = { 1, 2, 3, 4, 7, 9, 13, 19, 20, 21, 22 }, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    controls = { 37 },                                            -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true,                                           -- false disables ammo display
    ambience = false,                                             -- disables distance sirens, distance car alarms, flight music, etc
    idleCamera = true,                                            -- disables the idle cinematic camera
    vestDrawable = false,                                         -- disables the vest equipped when using heavy armor
    pistolWhipping = true,                                        -- disables pistol whipping
    driveby = false,                                              -- disables driveby
}

Config.Consumables = {
    eat = {
        ['fries'] = math.random(35, 54),
        ['pizza_ham'] = math.random(35, 54),
        ['chips'] = math.random(35, 54),
        ['donut'] = math.random(35, 54),
 -- default food items
        ['sandwich'] = math.random(35, 54),
        ['tosti'] = math.random(40, 50),
        ['twerks_candy'] = math.random(35, 54),
        ['snikkel_candy'] = math.random(40, 50)
    },
    drink = {
        ['sprunk'] = math.random(35, 54),
        ['sludgie'] = math.random(35, 54),
        ['ecola_light'] = math.random(35, 54),
        ['ecola'] = math.random(35, 54),
        ['water'] = math.random(35, 54),
 -- default drink items
        ['water_bottle'] = math.random(35, 54),
        ['kurkakola'] = math.random(35, 54),
        ['coffee'] = math.random(40, 50)
    },
    alcohol = { -- default alcohol items
        ['whiskey'] = math.random(20, 30),
        ['beer'] = math.random(30, 40),
        ['vodka'] = math.random(20, 40),

        ['au_vodka'] = math.random(40, 80),

    },
    custom = { -- put any custom items here
        -- ['newitem'] = {
        --     progress = {
        --         label = 'Using Item...',
        --         time = 5000
        --     },
        --     animation = {
        --         animDict = 'amb@prop_human_bbq@male@base',
        --         anim = 'base',
        --         flags = 8,
        --     },
        --     prop = {
        --         model = false,
        --         bone = false,
        --         coords = false, -- vector 3 format
        --         rotation = false, -- vector 3 format
        --     },
        --     replenish = {'''
        --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
        --         replenish = math.random(20, 40),
        --         isAlcohol = false, -- if you want it to add alcohol count
        --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
        --         server = false -- if the event above is a server event
        --     }
        -- }

        
        -- ['au_vodka'] = {
        --     progress = {
        --         label = 'Using Item...',
        --         time = 5000
        --     },
        --     animation = {
        --         animDict = 'amb@prop_human_bbq@male@base',
        --         anim = 'base',
        --         flags = 8,
        --     },
        --     prop = {
        --         model = false,
        --         bone = false,
        --         coords = false, -- vector 3 format
        --         rotation = false, -- vector 3 format
        --     },
        --     replenish = {
        --         type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
        --         replenish = math.random(10, 15),
        --         isAlcohol = true, -- if you want it to add alcohol count
        --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
        --         server = false -- if the event above is a server event
        --     }
        -- }
    }
}

Config.Fireworks = {
    delay = 5, -- time in s till it goes off
    items = {  -- firework items
        'firework1',
        'firework2',
        'firework3',
        'firework4'
    }
}

Config.BlacklistedScenarios = {
    types = {
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE_BIKE'
    },
    groups = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`
    }
}

Config.BlacklistedVehs = {
    [`shamal`] = true,
    [`luxor`] = true,
    [`luxor2`] = true,
    [`jet`] = true,
    [`lazer`] = true,
    [`buzzard`] = true,
    [`buzzard2`] = true,
    [`annihilator`] = true,
    [`savage`] = true,
    [`titan`] = true,
    [`rhino`] = true,
    [`firetruck`] = true,
    [`mule`] = true,
    [`maverick`] = true,
    [`blimp`] = true,
    [`airtug`] = true,
    [`camper`] = true,
    [`hydra`] = true,
    [`oppressor`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true,
    [`police`] = true,
    [`police2`] = true,
    [`police3`] = true,
    [`police4`] = true,
    [`policeb`] = true,
    [`policeold1`] = true,
    [`policeold2`] = true,
    [`polmav`] = true,
    [`policet`] = true,
    [`dump`] = true,
    [`firetruk`] = true,
    [`boxville5`] = true,
    [`issi4`] = true,
    [`issi5`] = true,
    [`issi6`] = true,
    [`asea2`] = true,
    [`emperor3`] = true,
    [`baller5`] = true,
    [`baller6`] = true,
    [`mesa2`] = true,
    [`squaddie`] = true,
    [`xls2`] = true,
    [`dominator4`] = true,
    [`dominator5`] = true,
    [`dominator6`] = true,
    [`dukes2`] = true,
    [`imperator`] = true,
    [`imperator2`] = true,
    [`imperator3`] = true,
    [`ruiner3`] = true,
    [`slamvan4`] = true,
    [`slamvan5`] = true,
    [`slamvan6`] = true,
    [`kuruma2`] = true,
    [`zr380`] = true,
    [`zr3802`] = true,
    [`zr3803`] = true,
    [`deathbike2`] = true,
    [`deathbike3`] = true,
    [`shotaro`] = true,
    [`blazer5`] = true,
    [`bruiser`] = true,
    [`bruiser2`] = true,
    [`bruiser3`] = true,
    [`brutus`] = true,
    [`brutus2`] = true,
    [`brutus3`] = true,
    [`dune2`] = true,
    [`dune3`] = true,
    [`dune4`] = true,
    [`dune5`] = true,
    [`insurgent`] = true,
    [`insurgent2`] = true,
    [`marshall`] = true,
    [`monster`] = true,
    [`monster3`] = true,
    [`monster4`] = true,
    [`monster5`] = true,
    [`nightshark`] = true,
    [`rancherxl2`] = true,
    [`rcbandito`] = true,
    [`technical`] = true,
    [`technical2`] = true,
    [`zhaba`] = true,
    [`bulldozer`] = true,
    [`cutter`] = true,
    [`handler`] = true,
    [`mixer`] = true,
    [`mixer2`] = true,
    [`armytanker`] = true,
    [`armytrailer2`] = true,
    [`sadler2`] = true,
    [`tanker`] = true,
    [`tanker2`] = true,
    [`tractor3`] = true,
    [`trailerlarge`] = true,
    [`avisa`] = true,
    [`dinghy5`] = true,
    [`kosatka`] = true,
    [`patrolboat`] = true,
    [`predator`] = true,
    [`submersible`] = true,
    [`submersible2`] = true,
    [`tug`] = true,
    [`annihilator2`] = true,
    [`cargobob`] = true,
    [`cargobob2`] = true,
    [`cargobob3`] = true,
    [`cargobob4`] = true,
    [`conada2`] = true,
    [`valkyrie`] = true,
    [`valkyrie2`] = true,
    [`alkonost`] = true,
    [`avenger`] = true,
    [`avenger2`] = true,
    [`avenger3`] = true,
    [`avenger4`] = true,
    [`blimp2`] = true,
    [`bombushka`] = true,
    [`cargoplane`] = true,
    [`mogul`] = true,
    [`molotok`] = true,
    [`pyro`] = true,
    [`raiju`] = true,
    [`starling`] = true,
    [`streamer216`] = true,
    [`tula`] = true,
    [`volatol`] = true,
    [`brickade`] = true,
    [`brickade2`] = true,
    [`wastelander`] = true,
    [`riot`] = true,
    [`riot2`] = true,
    [`barracks`] = true,
    [`barracks2`] = true,
    [`barracks3`] = true,
    [`chernobog`] = true,
    [`minitank`] = true,
    [`thruster`] = true,
    [`hauler2`] = true,
    [`phantom2`] = true,
    [`stockade3`] = true,
    [`terbyte`] = true,
    [`tankercar`] = true,
    [`formula`] = true,
    [`formula2`] = true,
    [`openwheel1`] = true,
    [`openwheel2`] = true,
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true
}

Config.WeapDraw = {
    variants = { 130, 122, 3, 6, 8 },
    weapons = {
        --'WEAPON_STUNGUN',
        'WEAPON_PISTOL',
        'WEAPON_PISTOL_MK2',
        'WEAPON_COMBATPISTOL',
        'WEAPON_APPISTOL',
        'WEAPON_PISTOL50',
        'WEAPON_REVOLVER',
        'WEAPON_SNSPISTOL',
        'WEAPON_HEAVYPISTOL',
        'WEAPON_VINTAGEPISTOL'
    }
}

Config.Objects = { -- for object removal
    { coords = vector3(266.09, -349.35, 44.74), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02b' },
    { coords = vector3(285.28, -355.78, 45.13), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02a' },
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    [1] = {                   -- Elevator @ labs
        [1] = {               -- up
            poly = { coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
        [2] = { -- down
            poly = { coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },
    [2] = { --Coke Processing Enter/Exit
        [1] = {
            poly = { coords = vector3(909.49, -1589.22, 30.51), heading = 92.24, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Enter Coke Processing'
        },
        [2] = {
            poly = { coords = vector3(1088.81, -3187.57, -38.99), heading = 181.7, length = 2, width = 2 },
            allowVeh = false,
            label = '[E] Leave'
        }
    }
}

Config.CarWash = {
    dirtLevel = 0.1,                                                                                   -- threshold for the dirt level to be counted as dirty
    defaultPrice = 20,                                                                                 -- default price for the carwash
    locations = {
        [1] = { coords = vector3(174.81, -1736.77, 28.87), length = 7.0, width = 8.8, heading = 359 }, -- South Los Santos Carson Avenue
        [2] = { coords = vector3(25.2, -1391.98, 28.91), length = 6.6, width = 8.2, heading = 0 },     -- South Los Santos Innocence Boulevard
        [3] = { coords = vector3(-74.27, 6427.72, 31.02), length = 9.4, width = 8, heading = 315 },    -- Paleto Bay Boulevard
        [4] = { coords = vector3(1362.69, 3591.81, 34.5), length = 6.4, width = 8, heading = 21 },     -- Sandy Shores
        [5] = { coords = vector3(-699.84, -932.68, 18.59), length = 11.8, width = 5.2, heading = 0 }   -- Little Seoul Gas Station
    }
-- Do not edit this part manually unless you know what you are doing
}