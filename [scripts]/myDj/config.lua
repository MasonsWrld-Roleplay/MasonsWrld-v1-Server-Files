Config = {}
Translation = {}

Translation = {
    ['de'] = {
        ['DJ_interact'] = 'Drücke ~g~E~s~, um auf das DJ Pult zuzugreifen',
        ['title_does_not_exist'] = '~r~Dieser Titel existiert nicht!',
    },

    ['en'] = {
        ['DJ_interact'] = 'Press ~g~E~s~, to access the DJ desk',
        ['title_does_not_exist'] = '~r~This title does not exist!',
    }
}

Config.Locale = 'en'

Config.useESX = false -- can not be disabled without changing the callbacks
Config.enableCommand = false

Config.enableMarker = true -- purple marker at the DJ stations

Config.DJPositions = {
    {
        name = 'hookah',
        pos = vector3(-418.96, -27.52, 41.3),
        requiredJob = hookahlounge, -- example: requiredJob = "dj" 
        range = 100.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'Bahama',
        pos = vector3(-1376.48, -607.65, 31.32),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 100.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },
{
        name = 'cayo',
        pos = vector3(4893.18, -4904.88, 3.49),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'risingsuns',
        pos = vector3(-342.4, -153.84, 39.06),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },   

    {
        name = 'gng',
        pos = vector3(-954.61, -85.57, 46.38),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },   
    
    {
        name = 'yard',
        pos = vector3(1219.51, -872.7, 70.81),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'yard2',
        pos = vector3(-1698.26, 703.09, 201.33),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'block1',
        pos = vector3(464.53, -1510.69, 33.41),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'galaxy',
        pos = vector3(375.48, 275.83, 92.4),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'galaxy2',
        pos = vector3(399.32, 269.1, 92.05),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },


    {
        name = 'studio',
        pos = vector3(500.62, -75.12, 58.16),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 85.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'gentlemensclub',
        pos = vector3(-385.91, 213.92, 83.66),
        requiredJob = "gentlemansclub", -- example: requiredJob = "dj" 
        range = 85.0,
        volume = 1.0 --[[ do not touch the volume! --]]
    },

}