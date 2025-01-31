Config = {}
Config.MinimumStoreRobberyPolice = 2
Config.resetTime = (60 * 1000) * 60
Config.tickInterval = 1000
Config.stickyNoteChance = 35 -- Percent chance to get the safe code from a cash register
Config.RegisterCash = math.random(20000, 50000)
Config.SafeCash = math.random(50000, 100000)
Config.SkillCheck = math.random(1, 6)
Config.SkillTime = math.random(8, 13)

Config.Scrapmetal = math.random(50, 100)
Config.LuckyScrapmetal = math.random(50, 100)

Config.Registers = {
    [1] = { vector3(-47.24, -1757.65, 29.53), robbed = false, time = 0, safeKey = 1, camId = 4 },
    [2] = { vector3(-48.58, -1759.21, 29.53), robbed = false, time = 0, safeKey = 1, camId = 4 },
    [3] = { vector3(-1486.7, -378.38, 40.23), robbed = false, time = 0, safeKey = 2, camId = 5 },
    [4] = { vector3(-1222.28, -907.74, 12.42), robbed = false, time = 0, safeKey = 3, camId = 6 },
    [5] = { vector3(-706.68, -915.5, 19.21), robbed = false, time = 0, safeKey = 4, camId = 7 },
    [6] = { vector3(-706.6, -913.46, 19.21), robbed = false, time = 0, safeKey = 4, camId = 7 },
    [7] = { vector3(25.42, -1347.78, 29.49), robbed = false, time = 0, safeKey = 5, camId = 8 },
    [8] = { vector3(25.43, -1345.59, 29.49), robbed = false, time = 0, safeKey = 5, camId = 8 },
    [9] = { vector3(1134.79, -982.36, 46.41), robbed = false, time = 0, safeKey = 6, camId = 9 },
    [10] = { vector3(1164.57, -324.75, 69.2), robbed = false, time = 0, safeKey = 7, camId = 10 },
    [11] = { vector3(1164.17, -322.85, 69.2), robbed = false, time = 0, safeKey = 7, camId = 10 },
    [12] = { vector3(373.79, 327.77, 103.56), robbed = false, time = 0, safeKey = 8, camId = 11 },
    [13] = { vector3(373.29, 325.7, 103.56), robbed = false, time = 0, safeKey = 8, camId = 11 },
    [14] = { vector3(-1819.12, 792.44, 138.08), robbed = false, time = 0, safeKey = 9, camId = 12 },
    [15] = { vector3(-1820.5, 793.79, 138.08), robbed = false, time = 0, safeKey = 9, camId = 12 },
    [16] = { vector3(-2966.93, 390.9, 15.04), robbed = false, time = 0, safeKey = 10, camId = 13 },
    [17] = { vector3(-3040.75, 584.78, 7.9), robbed = false, time = 0, safeKey = 11, camId = 14 },
    [18] = { vector3(-3038.76, 585.47, 7.9), robbed = false, time = 0, safeKey = 11, camId = 14 },
    [19] = { vector3(-3243.85, 1000.89, 12.83), robbed = false, time = 0, safeKey = 12, camId = 15 },
    [20] = { vector3(-3241.66, 1000.77, 12.83), robbed = false, time = 0, safeKey = 12, camId = 15 },
    [21] = { vector3(548.49, 2669.63, 42.15), robbed = false, time = 0, safeKey = 13, camId = 16 },
    [22] = { vector3(548.21, 2671.75, 42.15), robbed = false, time = 0, safeKey = 13, camId = 16 },
    [23] = { vector3(1165.96, 2710.35, 38.15), robbed = false, time = 0, safeKey = 14, camId = 17 },
    [24] = { vector3(2676.99, 3280.88, 55.24), robbed = false, time = 0, safeKey = 15, camId = 18 },
    [25] = { vector3(2678.94, 3279.86, 55.24), robbed = false, time = 0, safeKey = 15, camId = 18 },
    [26] = { vector3(1959.96, 3741.8, 32.34), robbed = false, time = 0, safeKey = 16, camId = 19 },
    [27] = { vector3(1961.09, 3739.98, 32.34), robbed = false, time = 0, safeKey = 16, camId = 19 },
    [28] = { vector3(1729.23, 6416.31, 35.03), robbed = false, time = 0, safeKey = 17, camId = 20 },
    [29] = { vector3(1728.4, 6414.4, 35.03), robbed = false, time = 0, safeKey = 17, camId = 20 },
    [30] = { vector3(-160.8, 6321.67, 31.5), robbed = false, time = 0, safeKey = 18, camId = 27 },
    [31] = { vector3(162.23, 6642.17, 31.6), robbed = false, time = 0, safeKey = 19, camId = 28 },
    [32] = { vector3(160.65, 6640.64, 31.6), robbed = false, time = 0, safeKey = 19, camId = 29 },
}

Config.Safes = {
    [1] = { vector4(-43.77, -1748.09, 29.03, 46.83), type = 'keypad', robbed = false, camId = 4 },
    [2] = { vector4(-1478.94, -375.5, 39.16, 229.5), type = 'keypad', robbed = false, camId = 5 },
    [3] = { vector4(-1221.13, -916.2, 11.31, 124.1), type = 'keypad', robbed = false, camId = 6 },
    [4] = { vector4(-710.24, -904.18, 18.87, 91.03), type = 'keypad', robbed = false, camId = 7 },
    [5] = { vector3(31.59, -1339.28, 30.0), type = 'keypad', robbed = false, camId = 8 },
    [6] = { vector3(1126.74, -979.56, 45.51), type = 'keypad', robbed = false, camId = 9 },
    [7] = { vector3(1158.99, -314.1, 68.8), type = 'keypad', robbed = false, camId = 10 },
    [8] = { vector3(381.45, 332.42, 104.0), type = 'keypad', robbed = false, camId = 11 },
    [9] = { vector3(-1829.55, 798.4, 137.89), type = 'keypad', robbed = false, camId = 12 },
    [10] = { vector3(-2959.64, 387.08, 14.04), type = 'keypad', robbed = false, camId = 13 },
    [11] = { vector3(-3048.75, 588.73, 8.4), type = 'keypad', robbed = false, camId = 14 },
    [12] = { vector3(-3249.68, 1007.7, 13.34), type = 'keypad', robbed = false, camId = 15 },
    [13] = { vector3(543.43, 2662.48, 42.56), type = 'keypad', robbed = false, camId = 16 },
    [14] = { vector3(1169.31, 2717.79, 37.15), type = 'keypad', robbed = false, camId = 17 },
    [15] = { vector3(2674.4, 3289.4, 55.7), type = 'keypad', robbed = false, camId = 18 },
    [16] = { vector3(1962.1, 3750.46, 32.82), type = 'keypad', robbed = false, camId = 19 },
    [17] = { vector3(1737.83, 6419.24, 35.48), type = 'keypad', robbed = false, camId = 20 },
    [18] = { vector3(-168.40, 6318.80, 30.58), type = 'keypad', robbed = false, camId = 27 },
    [19] = { vector3(171.28, 6642.18, 32.06), type = 'keypad', robbed = false, camId = 30 },
}
