-- █████╗ ██████╗ ███████╗██╗  ██╗    ███████╗████████╗██╗   ██╗██████╗ ██╗ ██████╗ ███████╗
--██╔══██╗██╔══██╗██╔════╝╚██╗██╔╝    ██╔════╝╚══██╔══╝██║   ██║██╔══██╗██║██╔═══██╗██╔════╝
--███████║██████╔╝█████╗   ╚███╔╝     ███████╗   ██║   ██║   ██║██║  ██║██║██║   ██║███████╗
--██╔══██║██╔═══╝ ██╔══╝   ██╔██╗     ╚════██║   ██║   ██║   ██║██║  ██║██║██║   ██║╚════██║
--██║  ██║██║     ███████╗██╔╝ ██╗    ███████║   ██║   ╚██████╔╝██████╔╝██║╚██████╔╝███████║
--╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══════╝

----------------------------------------------------------------------------------------------------
   
-- ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗         ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
--██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║         ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
--██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║         ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
--██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║         ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
--╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗    ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
-- ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝    ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

Config = {}
Config.Debug = false
Config.VersionCheck = true


--     ██╗ ██████╗ ██████╗     ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
--     ██║██╔═══██╗██╔══██╗    ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
--     ██║██║   ██║██████╔╝    ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
--██   ██║██║   ██║██╔══██╗    ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
--╚█████╔╝╚██████╔╝██████╔╝    ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
-- ╚════╝  ╚═════╝ ╚═════╝     ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

Config.Name = "Bahama Mamas"
Config.Jobname = "bahama"
Config.Blips = {
    {
        enabled = true,
        point = vector3(-1386.05, -593.02, 30.32),
        sprite = 121,
        scale = 0.6,
        colour = 48,
        title = Config.Name,
    },
}

Config.Features = {
    RemoveNPCsFromLocation = true, -- Disable random NPCs spawning inside the club
    RemoveNPCsFromLocationSettings = {
        {
            coords = vector3(-1399.28, -603.94, 30.32),
            radius = 20.0,
        },
    },
    Office = true,
    OfficeSettings = {
        Target = {
            {
                points = vector3(-1370.41, -625.6, 30.32),
                heading = 303.0,
                minZ = 30.32-1,
                maxZ = 30.32+0.5,
                Size = {2.4, 1.6},
                distance = 2.0,
            },
        },
    },
    Duty = true, -- This is a QBCore function, set it to false, if using ESX!
    DutySettings = {
        Target = {
            {
                points = vector3(-1377.43, -629.6, 30.32),
                heading = 302.0,
                minZ = 30.32+0.4,
                maxZ = 30.32+1.6,
                Size = {0.2, 1.65},
                distance = 2.5,
            },
        },
    },
    Wardrobe = true,
    WardrobeSettings = {
        Target = {
            {
                points = vector3(-1376.83, -634.53, 30.32),
                heading = 303.0,
                minZ = 30.32-1,
                maxZ = 30.32+1,
                Size = {3.2, 0.8},
                distance = 2.0,
            },
        },
        ClothingStore = true,
        OutfitMenu = true,
        PersonalLocker = true,
    },
    DJBooth = true,
    DJBoothSettings = {
        EmployeeOnly = true,
        AudioVolume = 0.5,
        AudioRange = 35.0,
        Target = {
            points = vector3(-1377.29, -608.01, 31.32),
            heading = 33.0,
            minZ = 31.32-0.3,
            maxZ = 31.32+0.2,
            Size = {2.4, 0.8},
            distance = 2.5,
        },
    },
    Poledancing = true,
    PoledancingSettings = {
        EmployeeOnly = true,
        Duration = 60, -- Duration in seconds
        Target = {
            {
                points = vector3(-1409.17, -606.84, 30.5),
                minZ = 30.5-1,
                maxZ = 30.5+2,
                distance = 3.0,
            },
            {
                points = vector3(-1391.30, -632.30, 31.3),
                minZ = 31.3-1,
                maxZ = 31.3+2,
                distance = 3.0,
            },
            {
                points = vector3(-1370.01, -621.34, 30.5),
                minZ = 30.5-1,
                maxZ = 30.5+2,
                distance = 3.0,
            },
            {
                points = vector3(-1393.79, -612.27, 30.7),
                minZ = 30.7-1,
                maxZ = 30.7+2,
                distance = 3.0,
            },
            {
                points = vector3(-1390.84, -616.84, 30.7),
                minZ = 30.7-1,
                maxZ = 30.7+2,
                distance = 3.0,
            },
            {
                points = vector3(-1387.85, -621.41, 30.7),
                minZ = 30.7-1,
                maxZ = 30.7+2,
                distance = 3.0,
            },
            -- {
            --     points = vector3(0.0, 0.0, 0.0),
            --     minZ = 0.0-0.0,
            --     maxZ = 0.0+0.0,
            --     distance = 0.0,
            -- },
        },
    },
    Table = true,
    TableSettings = {
        Size = 10000,
        Slots = 10,
    },
    Tray = true,
    TraySettings = {
        Size = 10000,
        Slots = 10,
    },
    Storage = true,
    StorageSettings = {
        Size = 4000000,
        Slots = 500,
    },
    Ingredients = true,
    IngredientsSettings = {
        shelves = {
            label = "Ingredients",
            items = {
                ['pineapplejuice']  = { label = 'Pineapple Juice',  price = 5, amount = 1 },
                ['lemon']           = { label = 'Lemon',            price = 5, amount = 1 },
                ['lime']            = { label = 'Lime',             price = 5, amount = 1 },
                ['sugar']           = { label = 'Sugar',            price = 5, amount = 1 },
                ['mint']            = { label = 'Mint',             price = 5, amount = 1 },
                ['cocomilk']        = { label = 'Cocomilk',         price = 5, amount = 1 },
                ['gin']             = { label = 'Gin',              price = 5, amount = 1 },
                ['rum']             = { label = 'Rum',              price = 5, amount = 1 },
                ['whiskey']         = { label = 'Whiskey',          price = 5, amount = 1 },
                ['vodka']           = { label = 'Vodka',            price = 5, amount = 1 },
                -- ['itemname']             = { label = 'Label',        price = 0, amount = 0 },
            }
        },
    },
    Freezer = true,
    FreezerSettings = {
        shelves = {
            label = "Freezer",
            amount = 50,
            items = {
                ['ice']             = { label = 'Ice cubes',        price = 5, amount = 1 },
                -- ['itemname']             = { label = 'Label',        price = 0, amount = 0 },
            }
        },
    },
    Bartending = true,
    BartendingSettings = {
        Target = {
            {
                points = vector3(-1399.89, -598.15, 30.32),
                heading = 303.0,
                minZ = 30.32,
                maxZ = 30.32+0.5,
                Size = {0.6, 1.4},
                distance = 2.0,
            },
        },
        DrinkMakingDuration = 10, -- Duration in seconds
        Recipes = {
            {
                label = "Blue Lagoon",
                ingredients = {
                    {name = "vodka", amount = 1},
                    {name = "lemon", amount = 1},
                    {name = "ice", amount = 1},
                },
                output = {
                    {name = "bluelagoon", amount = 1},
                },
            },
            {
                label = "Pinã Colada",
                ingredients = {
                    {name = "cocomilk", amount = 1},
                    {name = "pineapplejuice", amount = 1},
                    {name = "ice", amount = 1},
                },
                output = {
                    {name = "pinacolada", amount = 1},
                },
            },
            {
                label = "San Francisco",
                ingredients = {
                    {name = "gin", amount = 1},
                    {name = "pineapplejuice", amount = 1},
                    {name = "ice", amount = 1},
                },
                output = {
                    {name = "sanfrancisco", amount = 1},
                },
            },
            {
                label = "Caipirinha",
                ingredients = {
                    {name = "rum", amount = 1},
                    {name = "lime", amount = 1},
                    {name = "sugar", amount = 1},
                    {name = "ice", amount = 1},
                },
                output = {
                    {name = "caipirinha", amount = 1},
                },
            },
            {
                label = "Mojito",
                ingredients = {
                    {name = "rum", amount = 1},
                    {name = "lime", amount = 1},
                    {name = "sugar", amount = 1},
                    {name = "mint", amount = 1},
                    {name = "ice", amount = 1},
                },
                output = {
                    {name = "mojito", amount = 1},
                },
            },
            {
                label = "Mai Tai",
                ingredients = {
                    {name = "rum", amount = 1},
                    {name = "lime", amount = 1},
                    {name = "pineapplejuice", amount = 1},
                    {name = "ice", amount = 1},
                },
                output = {
                    {name = "maitai", amount = 1},
                },
            },
        }
    }
}


--████████╗ █████╗ ██████╗  ██████╗ ███████╗████████╗███████╗
--╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ ██╔════╝╚══██╔══╝██╔════╝
--   ██║   ███████║██████╔╝██║  ███╗█████╗     ██║   ███████╗
--   ██║   ██╔══██║██╔══██╗██║   ██║██╔══╝     ██║   ╚════██║
--   ██║   ██║  ██║██║  ██║╚██████╔╝███████╗   ██║   ███████║
--   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚══════╝

Config.AdditionalTargets = {
    Storage = {
        {
            Coords = vector3(-1404.09, -598.79, 30.32),
            Heading = 303.0,
            Size = {1.3, 0.5},
            Distance = 2.0,
            minZ = 30.32-1.2,
            maxZ = 30.32,
        },
    },
    Ingredients = {
        {
            Coords = vector3(-1400.67, -597.38, 30.32),
            Heading = 33.0,
            Size = {0.65, 0.4},
            Distance = 2.0,
            minZ = 30.32-1.2,
            maxZ = 30.32,
        },
    },
    Freezer = {
        {
            Coords = vector3(-1404.67, -600.06, 30.32),
            Heading = 303.0,
            Size = {0.8, 0.8},
            Distance = 2.0,
            minZ = 30.32-1,
            maxZ = 30.32,
        },
    },
    CashRegisters = {
        {
            Coords = vector3(-1383.75, -592.37, 30.32),
            Heading = 33.0,
            Size = {0.55, 0.75},
            Distance = 2.0,
            minZ = 30.32,
            maxZ = 30.32+0.5,
        },
        {
            Coords = vector3(-1398.86, -600.12, 30.32),
            Heading = 283.0,
            Size = {0.35, 0.45},
            Distance = 2.0,
            minZ = 30.32,
            maxZ = 30.32+0.5,
        },
        {
            Coords = vector3(-1402.86, -602.57, 30.32),
            Heading = 143.0,
            Size = {0.35, 0.45},
            Distance = 2.0,
            minZ = 30.32,
            maxZ = 30.32+0.5,
        },
    },
    Tables = {
        {   Coords = vector3(-1385.72, -588.57, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1384.72, -590.08, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1390.19, -591.10, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1393.92, -593.61, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1395.79, -594.87, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1397.60, -596.06, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1406.23, -601.84, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1408.21, -603.17, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1410.31, -604.54, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1399.89, -620.70, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1399.15, -622.11, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1398.00, -623.92, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1397.17, -625.24, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1395.85, -627.21, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1395.28, -628.13, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1385.63, -630.14, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1383.49, -628.76, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1381.37, -627.39, 30.32), Heading = 33.0,     Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1380.62, -617.81, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1381.60, -616.27, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1386.58, -608.57, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
        {   Coords = vector3(-1387.61, -607.05, 30.32), Heading = 303.0,    Size = {0.8, 1.0}, Distance = 2.5, minZ = 30.32-1.1, maxZ = 30.32, },
    },
    Trays = {
        {   Coords = vector3(-1398.79, -601.67, 30.32), Heading = 335.0,    Size = {1.0, 1.0}, Distance = 2.5, minZ = 30.32, maxZ = 30.32+0.5, },
        {   Coords = vector3(-1400.82, -603.27, 30.32), Heading = 10.0,     Size = {1.0, 1.0}, Distance = 2.5, minZ = 30.32, maxZ = 30.32+0.5, },
    },
}


--███████╗███████╗ █████╗ ████████╗███████╗
--██╔════╝██╔════╝██╔══██╗╚══██╔══╝██╔════╝
--███████╗█████╗  ███████║   ██║   ███████╗
--╚════██║██╔══╝  ██╔══██║   ██║   ╚════██║
--███████║███████╗██║  ██║   ██║   ███████║
--╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝

Config.Seats = {
    --[[
        YOU CAN ADD, REMOVE OR ADJUST AS YOU WANT FOR MORE SEATS
    ]]--
    --[[ BAHAMA MAMAS ]]--
    --[[ Entrance ]]--
    { coords = vector4(-1384.80, -587.37, 30.32, 123.0),    stand = vector3(-1385.23, -589.34, 30.32)},
	{ coords = vector4(-1384.40, -587.99, 30.32, 123.0),    stand = vector3(-1385.23, -589.34, 30.32)},
	{ coords = vector4(-1383.65, -589.17, 30.32, 123.0),    stand = vector3(-1385.23, -589.34, 30.32)},
	{ coords = vector4(-1383.24, -589.81, 30.32, 123.0),    stand = vector3(-1385.23, -589.34, 30.32)},
	{ coords = vector4(-1390.56, -589.70, 30.32, 213.0),    stand = vector3(-1389.53, -590.07, 30.32)},
	{ coords = vector4(-1391.36, -590.23, 30.32, 213.0),    stand = vector3(-1389.53, -590.07, 30.32)},
	{ coords = vector4(-1391.79, -591.72, 30.32, 303.0),    stand = vector3(-1391.09, -591.43, 30.32)},
    --[[ Bench 1 ]]--
    { coords = vector4(-1392.84, -592.24, 30.32, 123.0),    stand = vector3(-1393.12, -593.09, 30.32)},
	{ coords = vector4(-1394.35, -592.16, 30.32, 213.0),    stand = vector3(-1394.92, -594.06, 30.32)},
	{ coords = vector4(-1395.13, -592.77, 30.32, 213.0),    stand = vector3(-1394.92, -594.06, 30.32)},
	{ coords = vector4(-1396.74, -593.78, 30.32, 213.0),    stand = vector3(-1396.75, -595.36, 30.32)},
	{ coords = vector4(-1397.95, -594.58, 30.32, 213.0),    stand = vector3(-1396.75, -595.36, 30.32)},
	{ coords = vector4(-1398.79, -595.16, 30.32, 213.0),    stand = vector3(-1396.75, -595.36, 30.32)},
	{ coords = vector4(-1399.24, -596.54, 30.32, 303.0),    stand = vector3(-1398.49, -596.43, 30.32)},
    --[[ Bench 2 ]]--
    { coords = vector4(-1406.48, -600.46, 30.32, 213.0),    stand = vector3(-1407.30, -602.43, 30.32)},
	{ coords = vector4(-1407.31, -600.99, 30.32, 213.0),    stand = vector3(-1407.30, -602.43, 30.32)},
	{ coords = vector4(-1408.55, -601.81, 30.32, 213.0),    stand = vector3(-1407.30, -602.43, 30.32)},
	{ coords = vector4(-1409.38, -602.33, 30.32, 213.0),    stand = vector3(-1409.18, -603.87, 30.32)},
	{ coords = vector4(-1410.57, -603.14, 30.32, 213.0),    stand = vector3(-1409.18, -603.87, 30.32)},
	{ coords = vector4(-1411.38, -603.69, 30.32, 213.0),    stand = vector3(-1409.18, -603.87, 30.32)},
	{ coords = vector4(-1411.85, -605.10, 30.32, 303.0),    stand = vector3(-1411.16, -604.93, 30.32)},
    --[[ Bench 3 ]]--
	{ coords = vector4(-1400.92, -619.77, 30.32, 213.0),    stand = vector3(-1400.23, -620.10, 30.32)},
	{ coords = vector4(-1401.22, -621.46, 30.32, 303.0),    stand = vector3(-1399.56, -621.35, 30.32)},
	{ coords = vector4(-1400.25, -623.01, 30.32, 303.0),    stand = vector3(-1399.56, -621.35, 30.32)},
	{ coords = vector4(-1399.16, -624.70, 30.32, 303.0),    stand = vector3(-1398.56, -622.99, 30.32)},
	{ coords = vector4(-1398.38, -625.94, 30.32, 303.0),    stand = vector3(-1396.53, -626.15, 30.32)},
	{ coords = vector4(-1397.27, -627.61, 30.32, 303.0),    stand = vector3(-1396.53, -626.15, 30.32)},
	{ coords = vector4(-1396.14, -629.14, 30.32, 303.0),    stand = vector3(-1395.05, -629.07, 30.32)},
	{ coords = vector4(-1394.71, -629.68, 30.32, 33.00),    stand = vector3(-1395.05, -629.07, 30.32)},
    --[[ Bench 4 ]]--
	{ coords = vector4(-1386.74, -631.45, 30.32, 303.0),    stand = vector3(-1386.42, -630.71, 30.32)},
	{ coords = vector4(-1385.30, -631.48, 30.32, 33.00),    stand = vector3(-1386.42, -630.71, 30.32)},
	{ coords = vector4(-1384.46, -630.96, 30.32, 33.00),    stand = vector3(-1384.69, -629.38, 30.32)},
	{ coords = vector4(-1383.14, -630.18, 30.32, 33.00),    stand = vector3(-1384.69, -629.38, 30.32)},
	{ coords = vector4(-1382.39, -629.64, 30.32, 33.00),    stand = vector3(-1382.56, -628.10, 30.32)},
	{ coords = vector4(-1381.22, -628.74, 30.32, 33.00),    stand = vector3(-1382.56, -628.10, 30.32)},
	{ coords = vector4(-1380.38, -628.22, 30.32, 33.00),    stand = vector3(-1380.64, -626.95, 30.32)},
	{ coords = vector4(-1379.87, -626.86, 30.32, 123.0),    stand = vector3(-1380.64, -626.95, 30.32)},
    --[[ Bench 5 ]]--
	{ coords = vector4(-1379.44, -618.80, 30.32, 33.00),    stand = vector3(-1381.16, -617.11, 30.32)},
	{ coords = vector4(-1379.38, -617.36, 30.32, 123.0),    stand = vector3(-1381.16, -617.11, 30.32)},
	{ coords = vector4(-1380.64, -615.30, 30.32, 123.0),    stand = vector3(-1381.16, -617.11, 30.32)},
	{ coords = vector4(-1382.14, -614.86, 30.32, 213.0),    stand = vector3(-1381.16, -617.11, 30.32)},
    --[[ Bench 6 ]]--
	{ coords = vector4(-1385.41, -609.61, 30.32, 33.00),    stand = vector3(-1387.05, -607.75, 30.32)},
	{ coords = vector4(-1385.30, -608.10, 30.32, 123.0),    stand = vector3(-1387.05, -607.75, 30.32)},
	{ coords = vector4(-1386.61, -606.07, 30.32, 123.0),    stand = vector3(-1387.05, -607.75, 30.32)},
	{ coords = vector4(-1388.15, -605.62, 30.32, 213.0),    stand = vector3(-1387.05, -607.75, 30.32)},
    --[[ Booth 1 ]]--
    { coords = vector4(-1408.55, -610.11, 30.32, 303.0),    stand = vector3(-1407.7, -610.18, 30.68)},
	{ coords = vector4(-1408.00, -610.86, 30.32, 303.0),    stand = vector3(-1407.7, -610.18, 30.68)},
    --[[ Booth 2 ]]--
	{ coords = vector4(-1406.84, -612.75, 30.32, 303.0),    stand = vector3(-1405.82, -612.65, 30.68)},
	{ coords = vector4(-1406.30, -613.51, 30.32, 303.0),    stand = vector3(-1405.82, -612.65, 30.68)},
    --[[ Booth 3 ]]--
	{ coords = vector4(-1405.05, -615.45, 30.32, 303.0),    stand = vector3(-1403.91, -615.27, 30.68)},
	{ coords = vector4(-1404.57, -616.20, 30.32, 303.0),    stand = vector3(-1403.91, -615.27, 30.68)},
    --[[ Booth 4 ]]--
	{ coords = vector4(-1403.30, -618.13, 30.32, 303.0),    stand = vector3(-1402.07, -617.85, 30.68)},
	{ coords = vector4(-1402.85, -618.81, 30.32, 303.0),    stand = vector3(-1402.07, -617.85, 30.68)},
    --[[ Bar ]]--
    { coords = vector4(-1397.953, -598.735, 30.65, 120.0),  stand = vector3(-1397.35, -598.34, 30.32)},
	{ coords = vector4(-1397.452, -600.868, 30.65, 87.00),  stand = vector3(-1396.82, -600.90, 30.32)},
	{ coords = vector4(-1398.306, -603.074, 30.65, 55.00),  stand = vector3(-1397.80, -603.43, 30.32)},
	{ coords = vector4(-1400.289, -604.363, 30.65, 15.00),  stand = vector3(-1400.24, -604.97, 30.32)},
	{ coords = vector4(-1402.652, -604.245, 30.65, 344.0),  stand = vector3(-1402.88, -604.89, 30.32)},
	{ coords = vector4(-1404.492, -602.775, 30.65, 318.0),  stand = vector3(-1404.97, -603.10, 30.32)},
    --[[ Outer Ring ]]--
    { coords = vector4(-1399.70, -609.61, 30.65, 254.0),    stand = vector3(-1400.58, -609.23, 30.32)},
	{ coords = vector4(-1399.65, -613.46, 30.65, 293.0),    stand = vector3(-1400.10, -613.62, 30.32)},
	{ coords = vector4(-1397.72, -616.72, 30.65, 303.0),    stand = vector3(-1398.45, -617.14, 30.32)},
	{ coords = vector4(-1393.66, -622.98, 30.65, 303.0),    stand = vector3(-1394.17, -623.45, 30.32)},
	{ coords = vector4(-1391.52, -626.08, 30.65, 319.0),    stand = vector3(-1391.90, -626.66, 30.32)},
	{ coords = vector4(-1388.09, -627.85, 30.65, 354.0),    stand = vector3(-1388.06, -628.48, 30.32)},
    { coords = vector4(-1381.88, -623.83, 30.65, 78.00),    stand = vector3(-1381.25, -623.95, 30.32)},
	{ coords = vector4(-1382.11, -619.97, 30.65, 103.0),    stand = vector3(-1381.56, -619.57, 30.32)},
	{ coords = vector4(-1384.07, -616.75, 30.65, 123.0),    stand = vector3(-1383.53, -616.40, 30.32)},
	{ coords = vector4(-1388.14, -610.50, 30.65, 123.0),    stand = vector3(-1387.58, -610.16, 30.32)},
	{ coords = vector4(-1390.33, -607.41, 30.65, 150.0),    stand = vector3(-1389.97, -606.77, 30.32)},
	{ coords = vector4(-1393.84, -605.80, 30.65, 173.0),    stand = vector3(-1393.82, -605.13, 30.32)},
    --[[ Inner Ring Bench ]]--
    { coords = vector4(-1397.27, -614.77, 29.72, 303.0),    stand = vector3(-1396.85, -614.43, 29.72)},
	{ coords = vector4(-1396.58, -615.88, 29.72, 303.0),    stand = vector3(-1396.05, -615.59, 29.72)},
	{ coords = vector4(-1392.31, -622.49, 29.72, 303.0),    stand = vector3(-1391.92, -622.18, 29.72)},
	{ coords = vector4(-1391.49, -623.70, 29.72, 303.0),    stand = vector3(-1391.03, -623.40, 29.72)},
	{ coords = vector4(-1384.31, -618.90, 29.72, 123.0),    stand = vector3(-1384.67, -619.21, 29.72)},
	{ coords = vector4(-1385.01, -617.73, 29.72, 123.0),    stand = vector3(-1385.44, -617.97, 29.72)},
    { coords = vector4(-1389.25, -611.20, 29.72, 123.0),    stand = vector3(-1389.68, -611.51, 29.72)},
	{ coords = vector4(-1390.07, -610.00, 29.72, 123.0),    stand = vector3(-1390.41, -610.33, 29.72)},    
    --[[ Platform 1 ]]--
    { coords = vector4(-1395.51, -611.15, 30.05, 241.0),    stand = vector3(-1396.06, -610.82, 29.72)},
	{ coords = vector4(-1395.82, -612.50, 30.05, 276.0),    stand = vector3(-1396.56, -612.62, 29.72)},
	{ coords = vector4(-1394.80, -613.98, 30.05, 330.0),    stand = vector3(-1395.03, -614.46, 29.72)},
	{ coords = vector4(-1393.59, -614.27, 30.05, 2.000),    stand = vector3(-1393.55, -614.72, 29.72)},
	{ coords = vector4(-1392.01, -613.16, 30.05, 70.00),    stand = vector3(-1391.43, -613.38, 29.72)},
	{ coords = vector4(-1391.73, -611.84, 30.05, 100.0),    stand = vector3(-1391.19, -611.77, 29.72)},
    { coords = vector4(-1392.83, -610.52, 30.05, 166.0),    stand = vector3(-1392.60, -609.99, 29.72)},
	{ coords = vector4(-1393.88, -610.25, 30.05, 188.0),    stand = vector3(-1393.93, -609.73, 29.72)},
    --[[ Platform 2 ]]--
    { coords = vector4(-1392.51, -615.65, 30.05, 241.0),    stand = vector3(-1393.02, -615.42, 29.72)},
	{ coords = vector4(-1392.93, -617.11, 30.05, 276.0),    stand = vector3(-1393.59, -617.19, 29.72)},
	{ coords = vector4(-1392.00, -618.46, 30.05, 330.0),    stand = vector3(-1392.27, -618.97, 29.72)},
	{ coords = vector4(-1390.47, -618.86, 30.05, 2.000),    stand = vector3(-1390.35, -619.50, 29.72)},
	{ coords = vector4(-1389.06, -617.92, 30.05, 70.00),    stand = vector3(-1388.56, -618.18, 29.72)},
	{ coords = vector4(-1388.68, -616.54, 30.05, 100.0),    stand = vector3(-1388.15, -616.41, 29.72)},
    { coords = vector4(-1389.65, -615.09, 30.05, 166.0),    stand = vector3(-1389.38, -614.53, 29.72)},
	{ coords = vector4(-1391.14, -614.81, 30.05, 188.0),    stand = vector3(-1391.25, -614.37, 29.72)},
    --[[ Platform 3 ]]--
    { coords = vector4(-1389.61, -620.23, 30.05, 241.0),    stand = vector3(-1390.15, -620.00, 29.72)},
	{ coords = vector4(-1389.91, -621.68, 30.05, 276.0),    stand = vector3(-1390.51, -621.77, 29.72)},
	{ coords = vector4(-1388.98, -623.14, 30.05, 330.0),    stand = vector3(-1389.36, -623.58, 29.72)},
	{ coords = vector4(-1387.45, -623.55, 30.05, 2.000),    stand = vector3(-1387.31, -624.07, 29.72)},
	{ coords = vector4(-1386.08, -622.53, 30.05, 70.00),    stand = vector3(-1385.72, -622.80, 29.72)},
	{ coords = vector4(-1385.76, -621.12, 30.05, 100.0),    stand = vector3(-1385.25, -621.04, 29.72)},
    { coords = vector4(-1386.72, -619.63, 30.05, 166.0),    stand = vector3(-1386.49, -619.12, 29.72)},
	{ coords = vector4(-1388.22, -619.34, 30.05, 188.0),    stand = vector3(-1388.35, -618.83, 29.72)},
    --[[ Hottub 1 ]]--
    { coords = vector4(-1384.32, -606.10, 29.91, 8.7300),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1385.33, -605.15, 29.91, 279.14),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1384.47, -604.23, 29.91, 187.32),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1383.39, -605.20, 29.91, 95.910),   stand = vector3(-1382.4, -604.21, 30.92)},
    --[[ Hottub 2 ]]--
    { coords = vector4(-1381.61, -603.16, 29.91, 306.85),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1381.32, -601.87, 29.91, 218.43),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1380.08, -602.00, 29.91, 124.22),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1380.43, -603.39, 29.91, 28.470),   stand = vector3(-1382.4, -604.21, 30.92)},
    --[[ Hottub 3 ]]--
    { coords = vector4(-1381.24, -607.17, 29.91, 3.9800),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1382.24, -606.17, 29.91, 260.56),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1381.19, -605.32, 29.91, 177.56),   stand = vector3(-1382.4, -604.21, 30.92)},
    { coords = vector4(-1380.43, -606.17, 29.91, 90.110),   stand = vector3(-1382.4, -604.21, 30.92)},
    --[[ Hottub 4 ]]--
    { coords = vector4(-1377.78, -611.63, 29.91, 216.13),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1376.45, -611.95, 29.91, 113.98),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1376.85, -613.16, 29.91, 40.330),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1378.02, -613.01, 29.91, 305.76),   stand = vector3(-1375.84, -614.19, 30.92)},
    --[[ Hottub 5 ]]--
    { coords = vector4(-1377.53, -614.67, 29.91, 185.51),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1376.70, -615.70, 29.91, 72.580),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1377.53, -616.55, 29.91, 354.13),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1378.53, -615.63, 29.91, 274.52),   stand = vector3(-1375.84, -614.19, 30.92)},
    --[[ Hottub 6 ]]--
    { coords = vector4(-1374.62, -613.93, 29.91, 309.86),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1374.21, -612.61, 29.91, 216.04),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1373.03, -612.84, 29.91, 122.23),   stand = vector3(-1375.84, -614.19, 30.92)},
    { coords = vector4(-1373.22, -614.13, 29.91, 32.400),   stand = vector3(-1375.84, -614.19, 30.92)},
}