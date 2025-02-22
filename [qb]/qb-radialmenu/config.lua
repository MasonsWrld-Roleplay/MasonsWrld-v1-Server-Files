Config = {}
Config.Keybind = 'Z' -- FiveM Keyboard, this is registered keymapping, so needs changed in keybindings if player already has this mapped.
Config.Toggle = false -- use toggle mode. False requires hold of key
Config.UseWhilstWalking = true -- use whilst walking
Config.EnableExtraMenu = true
Config.Fliptime = 15000

Config.MenuItems = {
    [1] = 
    -- {
    --     id = 'citizen',
    --     title = 'Citizen',
    --     icon = 'user',
    --     items = {
            -- {
            --     id = 'givenum',
            --     title = 'Give Contact Details',
            --     icon = 'address-book',
            --     type = 'client',
            --     event = 'qb-phone:client:GiveContactDetails',
            --     shouldClose = true
            -- },
            -- {
            --     id = 'togglehotdogsell',
            --     title = 'Hotdog Selling',
            --     icon = 'hotdog',
            --     type = 'client',
            --     event = 'qb-hotdogjob:client:ToggleSell',
            --     shouldClose = true
            -- },
            {
                id = 'interactions',
                title = 'Interaction',
                icon = 'person',
                items = {
                    {
                        id = 'playerinvehicle',
                        title = 'Put In Vehicle',
                        icon = 'car-side',
                        type = 'client',
                        event = 'police:client:PutPlayerInVehicle',
                        shouldClose = true
                    },{
                        id = 'playeroutvehicle',
                        title = 'Take Out Of Vehicle',
                        icon = 'car-side',
                        type = 'client',
                        event = 'police:client:SetPlayerOutVehicle',
                        shouldClose = true
                    },{
                        id = 'carryplayer',
                        title = 'Carry Player',
                        icon = 'hands-holding',
                        type = 'client',
                        event = 'rtx_carry:Carry',
                        shouldClose = true
                    },{
                        id = 'getintrunk',
                        title = 'Get In Trunk',
                        icon = 'car',
                        type = 'client',
                        event = 'qb-trunk:client:GetIn',
                        shouldClose = true
                    },
                }
            },

    [2] = 
            {
                id = 'illegal',
                title = 'Illegal',
                icon = 'triangle-exclamation',
                items = {
                    {
                        id = 'stealplayer',
                        title = 'Rob',
                        icon = 'mask',
                        type = 'client',
                        event = 'RadialMenu:Client:Steal',
                        shouldClose = true
                    },{
                        id = 'stealshoe',
                        title = 'Steal Shoe',
                        icon = 'shoe-prints',
                        type = 'client',
                        event = 'tnj-stealshoes:client:StartTheftShoe',
                        shouldClose = true
                    },{
                        id = 'cornerselling',
                        title = 'Corner Selling',
                        icon = 'cannabis',
                        type = 'client',
                        event = 'RadialMenu:Client:Trap',
                        shouldClose = true
                    }
                }
            },

    [3] = {
        -- id = 'general',
        -- title = 'General',
        -- icon = 'rectangle-list',
        -- items = {
            -- {
            --     id = 'house',
            --     title = 'House Interaction',
            --     icon = 'house',
            --     items = {
            --         {
            --             id = 'givehousekey',
            --             title = 'Give House Keys',
            --             icon = 'key',
            --             type = 'client',
            --             event = 'qb-houses:client:giveHouseKey',
            --             shouldClose = true
            --         }, {
            --             id = 'removehousekey',
            --             title = 'Remove House Keys',
            --             icon = 'key',
            --             type = 'client',
            --             event = 'qb-houses:client:removeHouseKey',
            --             shouldClose = true
            --         }, {
            --             id = 'togglelock',
            --             title = 'Toggle Doorlock',
            --             icon = 'door-closed',
            --             type = 'client',
            --             event = 'qb-houses:client:toggleDoorlock',
            --             shouldClose = true
            --         }, {
            --             id = 'decoratehouse',
            --             title = 'Decorate House',
            --             icon = 'box',
            --             type = 'client',
            --             event = 'qb-houses:client:decorate',
            --             shouldClose = true
            --         }, {
            --             id = 'houseLocations',
            --             title = 'Interaction Locations',
            --             icon = 'house',
            --             items = {
            --                 {
            --                     id = 'setstash',
            --                     title = 'Set Stash',
            --                     icon = 'box-open',
            --                     type = 'client',
            --                     event = 'qb-houses:client:setLocation',
            --                     shouldClose = true
            --                 }, {
            --                     id = 'setoutift',
            --                     title = 'Set Wardrobe',
            --                     icon = 'shirt',
            --                     type = 'client',
            --                     event = 'qb-houses:client:setLocation',
            --                     shouldClose = true
            --                 }, {
            --                     id = 'setlogout',
            --                     title = 'Set Logout',
            --                     icon = 'door-open',
            --                     type = 'client',
            --                     event = 'qb-houses:client:setLocation',
            --                     shouldClose = true
            --                 }
            --             }
            --         }
            --     }
            -- },
                id = 'clothesmenu',
                title = 'Clothing',
                icon = 'shirt',
                items = {
                    {
                        id = 'Hair',
                        title = 'Hair',
                        icon = 'user',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleClothing',
                        shouldClose = true
                    }, {
                        id = 'Ear',
                        title = 'Ear Piece',
                        icon = 'ear-deaf',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleProps',
                        shouldClose = true
                    }, {
                        id = 'Neck',
                        title = 'Neck',
                        icon = 'user-tie',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleClothing',
                        shouldClose = true
                    }, {
                        id = 'Top',
                        title = 'Top',
                        icon = 'shirt',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleClothing',
                        shouldClose = true
                    }, {
                        id = 'Shirt',
                        title = 'Shirt',
                        icon = 'shirt',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleClothing',
                        shouldClose = true
                    }, {
                        id = 'Pants',
                        title = 'Pants',
                        icon = 'user',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleClothing',
                        shouldClose = true
                    }, {
                        id = 'Shoes',
                        title = 'Shoes',
                        icon = 'shoe-prints',
                        type = 'client',
                        event = 'qb-radialmenu:ToggleClothing',
                        shouldClose = true
                    }, {
                        id = 'meer',
                        title = 'Extras',
                        icon = 'plus',
                        items = {
                            {
                                id = 'Hat',
                                title = 'Hat',
                                icon = 'hat-cowboy-side',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleProps',
                                shouldClose = true
                            }, {
                                id = 'Glasses',
                                title = 'Glasses',
                                icon = 'glasses',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleProps',
                                shouldClose = true
                            }, {
                                id = 'Visor',
                                title = 'Visor',
                                icon = 'hat-cowboy-side',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleProps',
                                shouldClose = true
                            }, {
                                id = 'Mask',
                                title = 'Mask',
                                icon = 'masks-theater',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleClothing',
                                shouldClose = true
                            }, {
                                id = 'Vest',
                                title = 'Vest',
                                icon = 'vest',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleClothing',
                                shouldClose = true
                            }, {
                                id = 'Bag',
                                title = 'Bag',
                                icon = 'bag-shopping',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleClothing',
                                shouldClose = true
                            }, {
                                id = 'Bracelet',
                                title = 'Bracelet',
                                icon = 'user',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleProps',
                                shouldClose = true
                            }, {
                                id = 'Watch',
                                title = 'Watch',
                                icon = 'stopwatch',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleProps',
                                shouldClose = true
                            }, {
                                id = 'Gloves',
                                title = 'Gloves',
                                icon = 'mitten',
                                type = 'client',
                                event = 'qb-radialmenu:ToggleClothing',
                                shouldClose = true
                            }
                        },
                    },
                },
            },
        }

Config.VehicleDoors = {
    id = 'vehicledoors',
    title = 'Vehicle Doors',
    icon = 'car-side',
    items = {
        {
            id = 'door0',
            title = 'Drivers door',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door4',
            title = 'Hood',
            icon = 'car',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door1',
            title = 'Passengers door',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door3',
            title = 'Right rear',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door5',
            title = 'Trunk',
            icon = 'car',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door2',
            title = 'Left rear',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }
    }
}

Config.VehicleExtras = {
    id = 'vehicleextras',
    title = 'Vehicle Extras',
    icon = 'plus',
    items = {
        {
            id = 'extra1',
            title = 'Extra 1',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra2',
            title = 'Extra 2',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra3',
            title = 'Extra 3',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra4',
            title = 'Extra 4',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra5',
            title = 'Extra 5',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra6',
            title = 'Extra 6',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra7',
            title = 'Extra 7',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra8',
            title = 'Extra 8',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra9',
            title = 'Extra 9',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra10',
            title = 'Extra 10',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra11',
            title = 'Extra 11',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra12',
            title = 'Extra 12',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra13',
            title = 'Extra 13',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }
    }
}

Config.VehicleSeats = {
    id = 'vehicleseats',
    title = 'Vehicle Seats',
    icon = 'chair',
    items = {}
}

Config.JobInteractions = {
    ["ambulance"] = {
        {
            id = 'emergencybutton2',
            title = 'Emergency button',
            icon = 'bell',
            type = 'client',
            event = 'cd_dispatch:PanicButtonEvent',
            shouldClose = true
        },{
            id = 'openmdt2',
            title = 'MDT',
            icon = 'tablet',
            type = 'client',
            event = 'RadialMenu:Client:MDT',
            shouldClose = true
        },{
            id = 'escort',
            title = 'Escort',
            icon = 'user-group',
            type = 'client',
            event = 'escort:client:EscortPlayer',
            shouldClose = true
        },{
            id = 'stretcher',
            title = 'Toggle Stretcher',
            icon = 'bed',
            type = 'client',
            event = 'wasabi_ambulance:toggleStretcher',
            shouldClose = false
        },
        {
            id = 'medicalactions',
            title = 'Medical Actions',
            icon = 'star-of-life',
            items = {
                {
                    id = 'diagnose',
                    title = 'Disagnose Patient',
                    icon = 'stethoscope',
                    type = 'client',
                    event = 'wasabi_ambulance:diagnosePatient',
                    shouldClose = true
                },{
                    id = 'revive',
                    title = 'Revive Patient',
                    icon = 'kit-medical',
                    type = 'client',
                    event = 'wasabi_ambulance:reviveTarget',
                    shouldClose = false
                },{
                    id = 'heal',
                    title = 'Heal Patient',
                    icon = 'bandage',
                    type = 'client',
                    event = 'wasabi_ambulance:healTarget',
                    shouldClose = false
                },{
                    id = 'sedative',
                    title = 'Use Sedative',
                    icon = 'syringe',
                    type = 'client',
                    event = 'wasabi_ambulance:useSedative',
                    shouldClose = false
                },
            }
        },
    },
    -- ["taxi"] = {
    --     {
    --         id = 'togglemeter',
    --         title = 'Show/Hide Meter',
    --         icon = 'eye-slash',
    --         type = 'client',
    --         event = 'qb-taxi:client:toggleMeter',
    --         shouldClose = false
    --     }, {
    --         id = 'togglemouse',
    --         title = 'Start/Stop Meter',
    --         icon = 'hourglass-start',
    --         type = 'client',
    --         event = 'qb-taxi:client:enableMeter',
    --         shouldClose = true
    --     }, {
    --         id = 'npc_mission',
    --         title = 'NPC Mission',
    --         icon = 'taxi',
    --         type = 'client',
    --         event = 'qb-taxi:client:DoTaxiNpc',
    --         shouldClose = true
    --     }
    -- },
    -- ["tow"] = {
    --     {
    --         id = 'togglenpc',
    --         title = 'Toggle NPC',
    --         icon = 'toggle-on',
    --         type = 'client',
    --         event = 'jobs:client:ToggleNpc',
    --         shouldClose = true
    --     }, {
    --         id = 'towvehicle',
    --         title = 'Tow vehicle',
    --         icon = 'truck-pickup',
    --         type = 'client',
    --         event = 'qb-tow:client:TowVehicle',
    --         shouldClose = true
    --     }
    -- },
    -- ["mechanic"] = {
    --     {
    --         id = 'towvehicle',
    --         title = 'Tow vehicle',
    --         icon = 'truck-pickup',
    --         type = 'client',
    --         event = 'qb-tow:client:TowVehicle',
    --         shouldClose = true
    --     }
    -- },
    ["police"] = {
        {
            id = 'emergencybutton',
            title = 'Emergency button',
            icon = 'bell',
            type = 'client',
            event = 'cd_dispatch:PanicButtonEvent',
            shouldClose = true
        }, {
            id = 'openmdt',
            title = 'MDT',
            icon = 'tablet',
            type = 'client',
            event = 'RadialMenu:Client:MDT',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Police Actions',
            icon = 'list-check',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Check Health Status',
                    icon = 'heart-pulse',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                }, {
                    id = 'gsrtest',
                    title = 'GSR Test',
                    icon = 'gun',
                    type = 'client',
                    event = 'wasabi_police:gsrTest',
                    shouldClose = true
                }, {
                    id = 'escort',
                    title = 'Escort',
                    icon = 'user-group',
                    type = 'client',
                    event = 'wasabi_police:escortPlayer',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Search',
                    icon = 'magnifying-glass',
                    type = 'client',
                    event = 'wasabi_police:searchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Jail Tablet',
                    icon = 'tablet',
                    type = 'client',
                    event = 'RadialMenu:Client:Jail',
                    shouldClose = true
                }
            }
        },
        {
            id = 'policevehicle',
            title = 'Police Vehicle Actions',
            icon = 'car',
            items = {
                {
                    id = 'pdlockpickvehicle',
                    title = 'Lockpick Vehicle',
                    icon = 'key',
                    type = 'client',
                    event = 'wasabi_police:lockpickVehicle',
                    shouldClose = true
                }, {
                    id = 'pdputinvehicle',
                    title = 'Put In Vehicle',
                    icon = 'arrow-right-to-bracket',
                    type = 'client',
                    event = 'wasabi_police:inVehiclePlayer',
                    shouldClose = true
                }, {
                    id = 'pdremovefromvehicle',
                    title = 'Remove From Vehicle',
                    icon = 'arrow-right-from-bracket',
                    type = 'client',
                    event = 'wasabi_police:outVehiclePlayer',
                    shouldClose = true
                },
            }
        },
        {
            id = 'policeobjects',
            title = 'Objects',
            icon = 'box',
            type = 'client',
            event = 'wasabi_police:placeObjects',
            shouldClose = true
        }
    },
}

Config.TrunkClasses = {
    [0] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [1] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sedans
    [2] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- SUVs
    [3] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [4] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Muscle
    [5] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports Classics
    [6] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports
    [7] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Super
    [8] = {allowed = false, x = 0.0, y = -1.0, z = 0.25}, -- Motorcycles
    [9] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Off-road
    [10] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Industrial
    [11] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Utility
    [12] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Vans
    [13] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Cycles
    [14] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Boats
    [15] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Helicopters
    [16] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Planes
    [17] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Service
    [18] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Emergency
    [19] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Military
    [20] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Commercial
    [21] = {allowed = true, x = 0.0, y = -1.0, z = 0.25} -- Trains
}

Config.ExtrasEnabled = true

Config.Commands = {
    ["top"] = {
        Func = function() ToggleClothing("Top") end,
        Sprite = "top",
        Desc = "Take your shirt off/on",
        Button = 1,
        Name = "Torso"
    },
    ["gloves"] = {
        Func = function() ToggleClothing("gloves") end,
        Sprite = "gloves",
        Desc = "Take your gloves off/on",
        Button = 2,
        Name = "Gloves"
    },
    ["visor"] = {
        Func = function() ToggleProps("visor") end,
        Sprite = "visor",
        Desc = "Toggle hat variation",
        Button = 3,
        Name = "Visor"
    },
    ["bag"] = {
        Func = function() ToggleClothing("Bag") end,
        Sprite = "bag",
        Desc = "Opens or closes your bag",
        Button = 8,
        Name = "Bag"
    },
    ["shoes"] = {
        Func = function() ToggleClothing("Shoes") end,
        Sprite = "shoes",
        Desc = "Take your shoes off/on",
        Button = 5,
        Name = "Shoes"
    },
    ["vest"] = {
        Func = function() ToggleClothing("Vest") end,
        Sprite = "vest",
        Desc = "Take your vest off/on",
        Button = 14,
        Name = "Vest"
    },
    ["hair"] = {
        Func = function() ToggleClothing("hair") end,
        Sprite = "hair",
        Desc = "Put your hair up/down/in a bun/ponytail.",
        Button = 7,
        Name = "Hair"
    },
    ["hat"] = {
        Func = function() ToggleProps("Hat") end,
        Sprite = "hat",
        Desc = "Take your hat off/on",
        Button = 4,
        Name = "Hat"
    },
    ["glasses"] = {
        Func = function() ToggleProps("Glasses") end,
        Sprite = "glasses",
        Desc = "Take your glasses off/on",
        Button = 9,
        Name = "Glasses"
    },
    ["ear"] = {
        Func = function() ToggleProps("Ear") end,
        Sprite = "ear",
        Desc = "Take your ear accessory off/on",
        Button = 10,
        Name = "Ear"
    },
    ["neck"] = {
        Func = function() ToggleClothing("Neck") end,
        Sprite = "neck",
        Desc = "Take your neck accessory off/on",
        Button = 11,
        Name = "Neck"
    },
    ["watch"] = {
        Func = function() ToggleProps("Watch") end,
        Sprite = "watch",
        Desc = "Take your watch off/on",
        Button = 12,
        Name = "Watch",
        Rotation = 5.0
    },
    ["bracelet"] = {
        Func = function() ToggleProps("Bracelet") end,
        Sprite = "bracelet",
        Desc = "Take your bracelet off/on",
        Button = 13,
        Name = "Bracelet"
    },
    ["mask"] = {
        Func = function() ToggleClothing("Mask") end,
        Sprite = "mask",
        Desc = "Take your mask off/on",
        Button = 6,
        Name = "Mask"
    }
}

local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

Config.ExtraCommands = {
    ["pants"] = {
        Func = function() ToggleClothing("Pants", true) end,
        Sprite = "pants",
        Desc = "Take your pants off/on",
        Name = "Pants",
        OffsetX = -0.04,
        OffsetY = 0.0
    },
    ["shirt"] = {
        Func = function() ToggleClothing("Shirt", true) end,
        Sprite = "shirt",
        Desc = "Take your shirt off/on",
        Name = "shirt",
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ["reset"] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nothing To Reset', 'error')
            end
        end,
        Sprite = "reset",
        Desc = "Revert everything back to normal",
        Name = "reset",
        OffsetX = 0.12,
        OffsetY = 0.2,
        Rotate = true
    },
    ["bagoff"] = {
        Func = function() ToggleClothing("Bagoff", true) end,
        Sprite = "bagoff",
        SpriteFunc = function()
            local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
            local BagOff = LastEquipped["Bagoff"]
            if LastEquipped["Bagoff"] then
                if bags[BagOff.Drawable] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            end
            if Bag ~= 0 then
                if bags[Bag] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            else
                return false
            end
        end,
        Desc = "Take your bag off/on",
        Name = "bagoff",
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}
