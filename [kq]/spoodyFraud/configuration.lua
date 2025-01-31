---@description Gathering details for QBCore, you can change it here
local function get()
    QBCore = exports['qb-core']:GetCoreObject()

    if IsDuplicityVersion() then
        QBCore = exports['qb-core']:GetCoreObject()
    end
end

Settings = {
    ---@type "target" | "textui" # Target will use ox_target, textui will use Ox Lib Text UI
    OxType = "textui",

    Sales = {
        Alert = true, -- Enable police alerts?
        Chances = 0.50, -- 50% chance police get alerted
    },

    Police = {
        PoliceJob = "police",
        DrawBlip = true, -- Draw a blip on their map when an alert happens?
    }

}

Job = {
    Enabled = false, --- Enable jobs? (if enabled, the specified job will only be allowed to use the laptop, print checks, cards etc)
    DistributionSystem = true, --- Allow default players (without jobs) to sell illegal items? (i.e unemployed can sell cloned cards, sims, checks)
    JobName = "scammer", --- Job name
}

Selling = {
    Clones = {
        Rewards = {
            Reward = {min = 550, max = 600}, -- Randomized between values of $350 & $3500
            Account = "cash", -- cash or bank?
        },

        Locations = {
            ["Pacific Bank"] = {
                Location = vec3(-428.31, -24.21, -4.18),
                Heading = 301.8932,
            },
        }
    },

    Checks = {
        Rewards = {
            Reward = {min = 500, max = 600}, -- Randomized between values of $350 & $3500
            Account = "cash", -- cash or bank?
        },

        Locations = {
            ["Pacific Bank"] = {
                Heading = 337.0690,
                Location = vec3(248.3301, 222.9014, 106.2868),

                Ped = {
                    Enabled = true,
                    Coords = vec4(249.0421, 224.6193, 105.3, 155.6678),
                    Hash = "u_m_m_bankman",
                },
            },
        }
    },

    Sims = {
        Rewards = {
            --- Sim Swapping takes longer than check fraud and swiping, your players should be rewarded with more money
            Reward = {min = 400, max = 700}, -- Randomized between values of $350 & $3500
            Account = "cash", -- cash or bank?
        },

        Locations = {
            ["Sandy Shoes"] = {
                Heading = 15.9248,
                Location = vec3(1737.7275, 3709.7366, 34.1376), --- Notice: the coords MUST be in front of the ped (if enabled)

                Ped = {
                    Enabled = true,
                    Coords = vec4(1738.0103, 3709.0566, 33.15, 15.9248),
                    Hash = "hc_hacker"
                }
            },
        }
    }
}

Blackmarket = {
    Locations = {

        ["Blackmarket"] = { 
            Enabled = true,
            Location = vec3(-327.0636, -1300.5070, 31.3452),

            Ped = {
                Enabled = true,
                Location = vec4(-326.5181, -1300.4691, 30.4, 89.9135),
                Hash = "ig_joeminuteman",
            },

            Items = {
                --- GUIDE: To properly initiate images, set your file path for your inventory images like below:
                { Item = "checkpaper", Image = "nui://ox_inventory/web/images/checkpaper.png", Label = "Checkpaper", Count = 5, Price = 500 },
                { Item = "simcard", Image = "nui://ox_inventory/web/images/simcard.png", Label = "Sim Card", Count = 5, Price = 500 },
            }
        },

        ["Electronic Shop"] = {
            Enabled = true,
            Location = vec3(-662.4022, -853.1427, 24.4536),

            Ped = {
                Enabled = true,
                Location = vec4(-662.4503, -853.9371, 23.45, 3.4931),
                Hash = "ig_jay_norris",
            },

            Items = {
                --- GUIDE: To properly initiate images, set your file path for your inventory images like below:
                { Item = "laptop", Image = "nui://ox_inventory/web/images/laptop.png", Label = "Laptop", Count = 1, Price = 1000},
                { Item = "printer", Image = "nui://ox_inventory/web/images/printer.png", Label = "Printer", Count = 1, Price = 500},
                { Item = "burnerphone", Image = "nui://ox_inventory/web/images/burnerphone.png", Label = "Burner Phone", Count = 1, Price = 1500 },
            }
        }

    }
}

Config = {
    Notify = function(message)
        lib.notify({
            title = "Scamming",
            description = message,
            type = 'success'
        })
    end,

    ---@param index string | "check" | "atm"
    ---@param location string
    PoliceNotify = function(location, index)
        --- (NOTE: Police blips will still show up! no need to worry about it :D)

        if index == "check" then
            Config.Notify("The bank at: " ..location.. " has reported someone selling a fraudulent check!")
            PlaySoundFrontend(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", true)

        elseif index == "atm" then
            Config.Notify("The ATM at: " ..location.. " has reported someone using a fradulent card!")
            PlaySoundFrontend(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", true)

        end
    end,

    Models = {
        Printer = "v_res_printer",
        Laptop = "bkr_prop_clubhouse_laptop_01a",
        MSR = "leansy_reader"
    },

    Items = {
        Laptop = "laptop",
        Printer = "printer",
        MSR = "msr",
        BurnerPhone = "burnerphone",
        Clone = "blank",
        Cloned = "ccard",
        Check = "checkpaper",
        FCheck = "fcheck",
        Sim = "sim",
        SimCard = "simcard",
    },
}

get()