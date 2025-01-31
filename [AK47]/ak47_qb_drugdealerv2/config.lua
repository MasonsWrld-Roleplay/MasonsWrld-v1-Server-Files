Config = {}
Config.Locale               = 'en'

Config.StartSell            = false
Config.StopSell             = false

Config.GiveBlack            = true
Config.Item                 = 'money'
Config.HasMetaData          = false --if you are using any different item then make it false

Config.CustomDispatch       = true -- enable if you want to use custom dispatch script, and add your dispatch inside client/utils.lua
Config.CopRequired          = 0
Config.CopAlertPercentage   = 20 --% max 100
Config.CopAlertBlipTime     = 60 --in sec
Config.AllowPoliceToSell    = true
Config.Cops = {
    ['police'] = true,
    ['sheriff'] = true,
}

Config.AllowEmsToSell = true
Config.Ems = {
    ['ambulance'] = true
}

Config.MaxCustomer = 6
Config.RejectPercentage = 25 --% max 100
Config.CustomerPeds = {
    [1] = 'g_f_y_families_01',
    [2] = 'g_m_y_ballaeast_01',
    [3] = 'g_f_y_ballas_01',
    [4] = 'g_m_y_ballaorig_01',
    [5] = 'g_m_y_ballaorig_01',
    [6] = 'g_f_y_vagos_01',
    [7] = 'g_m_y_ballasout_01',
    [8] = 'g_m_y_famca_01',
    [9] = 'g_m_y_famdnf_01',
}

Config.DrugList = {
    ['regweed_bud'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 200,  max = 220},
    },
    ['bananakush_bud'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 312,  max = 340},
    },
    ['purplehaze_bud'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 320,  max = 340},
    },
    ['bluedream_bud'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 330,  max = 350},
    },
    ['weed_amnesia'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 106,  max = 130},
    },
    ['weed_purplehaze'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 119,  max = 143},
    },
    ['weed_gelato'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 132,  max = 156},
    },
    ['weed_zkittlez'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 145,  max = 169},
    },
    ['lean_bottle'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 206,  max = 242},
    },
    ['xpills'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 200,  max = 252},
    },
    ['spice_pooch'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 200,  max = 210},
    },
    ['heroin_shot'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 212,  max = 230},
    },
    ['coke_pooch'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 360,  max = 400},
    },
    ['weed_pooch'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 246,  max = 280},
    },
    ['meth_pooch'] = {
        quantity    = { min = 4,    max = 10},
        price       = { min = 260,  max = 300},
    },
    ['cokebaggy'] = {
        quantity    = { min = 1,    max = 10},
        price       = { min = 249,  max = 273},
    },
}

Config.Offsets = { -- Don't touch if you don't know what is this
    [1] = {
        x = 0.0,
        y = 15.0
    },
    [2] = {
        x = 0.0,
        y = -15.0
    },
    [3] = {
        x = 15.0,
        y = 0.0
    },
    [4] = {
        x = -15.0,
        y = 0.0
    },
    [5] = {
        x = 15.0,
        y = 15.0
    },
    [6] = {
        x = -15.0,
        y = 15.0
    },
    [7] = {
        x = 15.0,
        y = -15.0
    },
    [8] = {
        x = -15.0,
        y = -15.0
    },
    [9] = {
        x = 0.0,
        y = 25.0
    },
    [10] = {
        x = 0.0,
        y = -25.0
    },
    [11] = {
        x = 25.0,
        y = 0.0
    },
    [12] = {
        x = -25.0,
        y = 0.0
    },
    [13] = {
        x = 25.0,
        y = 25.0
    },
    [14] = {
        x = -25.0,
        y = 25.0
    },
    [15] = {
        x = 25.0,
        y = -25.0
    },
    [16] = {
        x = -25.0,
        y = -25.0
    },
    [17] = {
        x = 0.0,
        y = 20.0
    },
    [18] = {
        x = 0.0,
        y = -20.0
    },
    [19] = {
        x = 20.0,
        y = 0.0
    },
    [20] = {
        x = -20.0,
        y = 0.0
    },
    [21] = {
        x = 20.0,
        y = 20.0
    },
    [22] = {
        x = -20.0,
        y = 20.0
    },
    [23] = {
        x = 20.0,
        y = -20.0
    },
    [24] = {
        x = -20.0,
        y = -20.0
    },
}
