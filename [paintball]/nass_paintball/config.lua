Config = {}
Config.locale = Locales["en"] -- en | es | fr | de | it | pt | ru| zh
Config.debug = false

Config.defaultSettings = {
    ["maxPlayers"] = 100,
    ["mode"] = "FFA", -- Teams/FFA
    ["numberOfTeams"] = 2,
    ["weapon"] = "nass_paintball_gun",--"nass_paintball_gun",
    ["wager"] = 500,
    ["lives"] = 3, -- If changed, must be in Config.lives
    ["map"] = "Rust",-- If changed, must be in Config.maps
    ["allowSpectate"] = true, -- Config.spectate.enabled must be true
    ["timeLimit"] = 10, --In Minutes/If changed, must be in Config.timeLimits
    ["privateLobby"] = true,
    ["maxScore"] = 10,-- If changed, must be in Config.scores
}

Config.setupLocations = {
    {
        coords = vector4(-266.3095, -2017.1084, 30.1456, 233.2725),
        blip = {
            enabled = true,
            label = Config.locale["blip_name"],
            sprite = 160,
            scale = 0.65,
            shortrange = true,
        },
        ped = {
            enabled = true,
            model = 'cs_siemonyetarian',
            frozen = true,
            blockNonTemp = true,
            invincible = true,
        }
    },
    --[[{
        coords = vector4(-282.1599, -2031.2577, 30.1457, 297.5033),
        blip = {
            enabled = true,
            label = Config.locale["blip_name"],
            sprite = 160,
            scale = 0.65,
            shortrange = true,
        },
        ped = {
            enabled = true,
            model = 'cs_siemonyetarian',
            frozen = true,
            blockNonTemp = true,
            invincible = true,
        }
    },]]
}
Config.defaultHealth = 100 --Personally would leave this(Cannot be less than 2)

Config.wagering = true -- Setting this to false will disable bettings
Config.checkCash = true --Checks player cash before creating/joining lobby
Config.wagerAccount = "cash" --cash | bank

Config.useRPName = true --Will use RP name for lobby list
Config.infiniteStamina = true --If maps are large and players are running out of stamina, would recommend this

Config.waitForRespawn = true -- Add a timer to respawn after a player death
Config.respawnTime = 10 -- In Seconds
Config.spawnProtection = true -- Give player spawn protection when they respawn
Config.spawnProtectionTimer = 5 --Timer in seconds for length of spawn protection
Config.setTransparent = true -- Set the player semi-transparent to indicate that they have spawn protection currently on | Config.SpawnProtection must be true
Config.resetHealth = true -- Reset player health when they get a kill

Config.infniteAmmo = false -- If you are having issues with your anticheat, set this to false
Config.ammoAmount = 200 -- Default ammount of bullets given with the weapon

Config.target = {-- Supports "ox_target" | "qtarget" | "qb-target" natively
    enabled = true, --Setting to false will use normal helptext prompt
    size = {x=3.0,y=3.0,z=3.0},
    distance = 3,
    icon = "fa-solid fa-gun",
    label = Config.locale["target_label"],
}

Config.clothing = false --Setting this to false will remove the outfits
Config.teams = {
    [1] = {
        name = "Red",
        color = "red",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 5, drawable = 178 }, -- Torso2
            { component = 9, texture = 4, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 5, drawable = 77 },  -- Legs
            { component = 6, texture = 5, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 5, drawable = 180 }, -- Torso2
            { component = 9, texture = 4, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 5, drawable = 79 },  -- Legs
            { component = 6, texture = 5, drawable = 58 },  -- Shoes
        },
    },
    [2] = {
        name = "Blue",
        color = "blue",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 6, drawable = 178 }, -- Torso2
            { component = 9, texture = 5, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 6, drawable = 77 },  -- Legs
            { component = 6, texture = 6, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 6, drawable = 180 }, -- Torso2
            { component = 9, texture = 5, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 6, drawable = 79 },  -- Legs
            { component = 6, texture = 6, drawable = 58 },  -- Shoes
        },
    },
    [3] = {
        name = "Green",
        color = "green",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 1, drawable = 178 }, -- Torso2
            { component = 9, texture = 0, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 1, drawable = 77 },  -- Legs
            { component = 6, texture = 1, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 1, drawable = 180 }, -- Torso2
            { component = 9, texture = 0, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 1, drawable = 79 },  -- Legs
            { component = 6, texture = 1, drawable = 58 },  -- Shoes
        },
    },
    [4] = {
        name = "Orange",
        color = "orange",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 2, drawable = 178 }, -- Torso2
            { component = 9, texture = 1, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 2, drawable = 77 },  -- Legs
            { component = 6, texture = 2, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 2, drawable = 180 }, -- Torso2
            { component = 9, texture = 1, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 2, drawable = 79 },  -- Legs
            { component = 6, texture = 2, drawable = 58 },  -- Shoes
        },
    },
    [5] = {
        name = "Yellow",
        color = "yellow",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 0, drawable = 178 }, -- Torso2
            { component = 9, texture = 1, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 0, drawable = 77 },  -- Legs
            { component = 6, texture = 0, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 0, drawable = 180 }, -- Torso2
            { component = 9, texture = 1, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 0, drawable = 79 },  -- Legs
            { component = 6, texture = 0, drawable = 58 },  -- Shoes
        },
    },
    [6] = {
        name = "Purple",
        color = "purple",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 3, drawable = 178 }, -- Torso2
            { component = 9, texture = 2, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 3, drawable = 77 },  -- Legs
            { component = 6, texture = 3, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 3, drawable = 180 }, -- Torso2
            { component = 9, texture = 2, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 3, drawable = 79 },  -- Legs
            { component = 6, texture = 3, drawable = 58 },  -- Shoes
        },
    },
    [7] = {
        name = "Black",
        color = "black",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 10, drawable = 178 }, -- Torso2
            { component = 9, texture = 9, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 10, drawable = 77 },  -- Legs
            { component = 6, texture = 10, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 10, drawable = 180 }, -- Torso2
            { component = 9, texture = 9, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 10, drawable = 79 },  -- Legs
            { component = 6, texture = 10, drawable = 58 },  -- Shoes
        },
    },
    [8] = {
        name = "White",
        color = "white",
        male_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 9, drawable = 178 }, -- Torso2
            { component = 9, texture = 8, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 17 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 9, drawable = 77 },  -- Legs
            { component = 6, texture = 9, drawable = 55 },  -- Shoes
        },
        female_clothing = {
            { component = 8, texture = 0, drawable = 15 },  -- Torso1
            { component = 11, texture = 9, drawable = 180 }, -- Torso2
            { component = 9, texture = 8, drawable = 17 },  -- Vest
            { component = 3, texture = 0, drawable = 19 },  -- Arms
            { component = 1, texture = 0, drawable = 28 },  -- Mask
            { component = 4, texture = 9, drawable = 79 },  -- Legs
            { component = 6, texture = 9, drawable = 58 },  -- Shoes
        },
    },
}

Config.maps = {
    ["Rust"] = {
        arena = {
            enabled = true, -- Set this to false if you are using your own custom map
            category = "dystopian", -- dystopian | scifi | wasteland
            map = 3, -- 1 - 10
        },
        image = "rust.png",
        center = vector3(2767.8115, -3794.8323, 158.7349),
        radius = 300,
        spawnPoints = {
            [1] = {
                vector4(2671.6387, -3855.6348, 141.4863, 310.8796),
                vector4(2670.3169, -3853.1331, 141.4015, 312.2545),
                vector4(2669.3611, -3852.1426, 141.3924, 310.1322),
                vector4(2668.3889, -3851.1965, 141.4104, 318.0562),
                vector4(2670.7549, -3850.0293, 141.5217, 305.4125),
                vector4(2672.9873, -3850.9797, 141.6102, 310.5557),
                vector4(2675.6755, -3852.1650, 141.7262, 306.6124),
                vector4(2675.1650, -3849.1694, 141.7378, 313.0872),
            },
            [2] = {
                vector4(2940.4919, -3853.5085, 142.1111, 55.0655),
                vector4(2954.5388, -3848.1382, 141.9142, 22.2144),
                vector4(2935.6707, -3852.3701, 142.0761, 43.2612),
                vector4(2926.6140, -3863.1594, 141.6174, 68.8148),
                vector4(2939.5940, -3847.2336, 142.2166, 38.1283),
                vector4(2941.3562, -3844.5745, 142.3644, 47.0536),
                vector4(2938.2803, -3844.2119, 142.3012, 61.6045),
                vector4(2935.1382, -3861.9009, 141.9000, 61.3476),
            },
            [3] = {
                vector4(2914.1111, -3742.0054, 141.4653, 136.6300),
                vector4(2911.8000, -3741.7610, 141.5827, 136.5760),
                vector4(2911.6804, -3744.0134, 141.6324, 151.4610),
                vector4(2916.1101, -3746.7617, 141.6801, 127.5688),
                vector4(2913.9229, -3747.4104, 141.6519, 139.5191),
                vector4(2912.1643, -3747.1541, 141.6398, 160.2724),
                vector4(2915.9949, -3740.5723, 141.3758, 150.8835),
                vector4(2914.1858, -3738.4485, 141.2598, 154.3377),
            },
            [4] = {
                vector4(2844.6736, -3876.0549, 142.9941, 61.3302),
                vector4(2834.6367, -3878.8083, 140.6891, 51.1721),
                vector4(2832.8389, -3886.2522, 140.1946, 105.4217),
                vector4(2839.2314, -3883.7175, 140.3039, 355.8749),
                vector4(2849.8740, -3880.6038, 142.1500, 308.6048),
                vector4(2835.0803, -3848.5500, 139.4299, 39.5235),
                vector4(2848.1548, -3836.4185, 139.7768, 73.3786),
                vector4(2840.6362, -3832.0833, 140.0584, 6.7658),
            },
            [5] = {
                vector4(2737.8882, -3822.4238, 140.8094, 290.7247),
                vector4(2755.3113, -3821.0544, 141.6273, 37.1949),
                vector4(2758.9421, -3809.7529, 141.8258, 28.0504),
                vector4(2752.3638, -3804.7659, 141.2556, 70.7184),
                vector4(2736.6948, -3810.2092, 140.7037, 117.2030),
                vector4(2742.0823, -3832.1177, 140.6462, 103.4137),
                vector4(2755.2300, -3839.6069, 141.4184, 275.0222),
                vector4(2763.1143, -3825.8508, 141.8438, 342.4534),
            },
            [6] = {
                vector4(2847.3916, -3722.4370, 140.0584, 147.1812),
                vector4(2858.5986, -3714.2185, 139.8999, 265.9172),
                vector4(2854.7202, -3729.3147, 139.4746, 192.2906),
                vector4(2843.2979, -3738.0156, 140.2040, 107.4946),
                vector4(2831.3315, -3732.4929, 140.0395, 54.6424),
                vector4(2830.5725, -3713.1450, 140.1472, 138.9170),
                vector4(2835.3193, -3720.9512, 143.9605, 152.4907),
                vector4(2849.6790, -3714.7434, 140.0325, 152.5651),
            },
            [7] = {
                vector4(2857.6184, -3796.5620, 140.4013, 136.1310),
                vector4(2862.8984, -3806.4253, 141.7708, 263.7797),
                vector4(2878.9863, -3806.5322, 142.3927, 312.2801),
                vector4(2882.6455, -3793.7002, 142.2140, 325.5119),
                vector4(2888.1428, -3807.0049, 142.3161, 180.2201),
                vector4(2873.1165, -3795.3904, 141.5411, 53.3761),
                vector4(2847.2991, -3812.9392, 143.4852, 120.9921),
                vector4(2845.5049, -3819.3525, 143.3565, 241.5330),
            },
            [8] = {
                vector4(2668.2983, -3756.4016, 141.7825, 218.1909),
                vector4(2670.7559, -3755.1118, 141.8511, 207.8655),
                vector4(2669.2334, -3753.3650, 141.7376, 223.1027),
                vector4(2666.7183, -3754.5098, 141.5804, 227.8636),
                vector4(2666.1670, -3756.7217, 141.6486, 223.0755),
                vector4(2669.0222, -3759.1382, 141.9379, 224.7239),
                vector4(2663.7009, -3760.6536, 141.8985, 242.3004),
                vector4(2674.4014, -3758.8611, 141.9422, 229.7647),
            },
            
        },
        flags = {
            [1] = vector4(2664.4514, -3860.2002, 140.6023, 322.6412),
            [2] = vector4(2934.4363, -3862.4929, 140.8289, 96.6718),
        },
        animation = {
            enabled = true,
            opening = {
                firstCamPos = vector4(2795.0320, -3692.2739, 139.5050, 359.9776),
                secondCamPos = vector4(2800.9272, -3704.4854, 139.3283, 178.8751),
                pedPos = vector4(2795.0542, -3684.9895, 140.0010, 176.7969),
            },
            winning = {
                firstCamPos = vector4(2956.6384, -3726.6807, 141.0011, 279.0172),
                secondCamPos = vector4(2963.5059, -3733.5686, 141.0011, 350.8982),
                pedPos = vector4(2963.9102, -3726.2297, 141.0010, 137.8155),
            },
        }
    },  
    ["Nebulis"] = {
        arena = {
            enabled = true, -- Set this to false if you are using your own custom map
            category = "scifi", -- dystopian | scifi | wasteland
            map = 9, -- 1 - 10
        },
        image = "nebulis.png",
        center = vector3(2767.8115, -3794.8323, 158.7349),
        radius = 300,
        spawnPoints = {
            [1] = {
                vector4(2877.7075, -3736.1052, 135.7679, 130.1864),
                vector4(2888.4836, -3742.4224, 139.9847, 172.2804),
                vector4(2875.8931, -3745.0066, 140.3910, 104.1925),
                vector4(2896.0693, -3723.9949, 139.9987, 132.3673),
                vector4(2835.0173, -3743.0671, 147.8494, 101.4699),
                vector4(2842.0906, -3731.4739, 139.9992, 142.3213),
                vector4(2827.3674, -3748.1340, 139.9846, 136.5052),
                vector4(2818.1509, -3739.8367, 140.0002, 110.2501),
            },
            [2] = {
                vector4(2808.4890, -3820.2461, 127.9987, 297.7657),
                vector4(2828.0061, -3802.7952, 127.9984, 312.5197),
                vector4(2810.6167, -3781.4604, 128.0000, 37.8405),
                vector4(2802.9299, -3760.3462, 128.0358, 91.7331),
                vector4(2781.9819, -3787.6248, 127.9984, 142.4792),
                vector4(2787.9893, -3816.2319, 128.1102, 215.2384),
                vector4(2795.5256, -3837.8083, 127.9993, 285.9180),
                vector4(2860.3103, -3791.4514, 127.9989, 123.9619),
            },
            [3] = {
                vector4(2717.1111, -3866.0730, 137.3158, 288.5235),
                vector4(2708.1421, -3854.5493, 139.9919, 312.7325),
                vector4(2760.4666, -3852.2815, 147.1153, 298.6079),
                vector4(2760.9685, -3869.5400, 139.9999, 328.3160),
                vector4(2772.3269, -3852.3386, 140.0001, 323.1586),
                vector4(2780.5164, -3859.4377, 140.0002, 302.0420),
                vector4(2715.2007, -3881.0862, 139.9996, 312.5674),
                vector4(2781.7556, -3880.4307, 139.9993, 317.4583),
            },
            [4] = {
                vector4(2717.1272, -3734.6877, 137.3156, 258.1393),
                vector4(2716.9983, -3746.5676, 139.9912, 249.6662),
                vector4(2763.1794, -3745.7070, 147.6024, 231.6447),
                vector4(2748.8713, -3725.3757, 139.9985, 225.0151),
                vector4(2769.3870, -3745.1704, 139.9999, 226.5601),
                vector4(2779.8679, -3739.9949, 140.0002, 269.0406),
                vector4(2762.6016, -3721.2378, 140.0001, 216.6748),
                vector4(2784.7573, -3740.6018, 148.0121, 221.9157),
            },
            [5] = {
                vector4(2661.9231, -3818.7678, 128.0002, 292.5126),
                vector4(2675.0164, -3800.7290, 128.0003, 312.9055),
                vector4(2661.9529, -3778.9417, 127.9998, 272.4986),
                vector4(2680.2644, -3778.1321, 128.0003, 268.1677),
                vector4(2683.4385, -3755.4502, 127.9997, 264.7991),
                vector4(2698.2791, -3752.4114, 128.0003, 261.6228),
                vector4(2695.8040, -3814.7070, 127.9990, 255.1772),
                vector4(2706.0081, -3845.5134, 128.0000, 248.5213),
            },
            [6] = {
                vector4(2891.8477, -3744.1592, 127.9996, 121.0078),
                vector4(2920.3020, -3758.7678, 128.0020, 137.7948),
                vector4(2936.0210, -3780.4109, 127.9574, 101.8291),
                vector4(2942.2046, -3824.4624, 128.0000, 69.2642),
                vector4(2924.6853, -3842.3906, 128.0000, 41.2509),
                vector4(2903.7024, -3851.4536, 127.9780, 25.3778),
                vector4(2900.3088, -3812.0259, 127.9981, 141.6058),
                vector4(2893.8728, -3784.9275, 128.0535, 47.7460),
            },
            [7] = {
                vector4(2788.3704, -3786.0710, 140.0891, 29.6143),
                vector4(2781.4534, -3801.8406, 140.0894, 162.4909),
                vector4(2791.7356, -3812.6096, 140.0894, 209.2748),
                vector4(2807.0420, -3813.8604, 140.0894, 262.6780),
                vector4(2814.4719, -3800.8572, 140.0894, 328.9228),
                vector4(2811.0293, -3788.5474, 140.0894, 356.6208),
                vector4(2801.8140, -3793.4407, 140.0895, 153.9745),
                vector4(2801.0811, -3804.3662, 140.0893, 174.3616),
            },
            [8] = {
                vector4(2884.1167, -3867.0195, 137.6249, 62.7521),
                vector4(2894.1528, -3851.4106, 139.9896, 43.8120),
                vector4(2840.2993, -3851.7791, 146.9520, 64.2360),
                vector4(2913.2932, -3843.6675, 139.9734, 359.7884),
                vector4(2831.2495, -3857.9043, 139.9993, 48.0824),
                vector4(2818.0081, -3860.0098, 140.0002, 66.5570),
                vector4(2837.2327, -3872.3894, 139.9999, 48.5265),
                vector4(2882.9683, -3883.3699, 139.9987, 58.5323),
            },
            
        },
        flags = {
            [1] = vector4(2875.8931, -3742.0066, 139.3910, 104.1925),
            [2] = vector4(2808.6167, -3781.4604, 128.0000, 37.8405),
        },
        animation = {
            enabled = true,
            opening = {
                firstCamPos = vector4(2795.0320, -3692.2739, 139.5050, 359.9776),
                secondCamPos = vector4(2800.9272, -3704.4854, 139.3283, 178.8751),
                pedPos = vector4(2795.0542, -3684.9895, 140.0010, 176.7969),
            },
            winning = {
                firstCamPos = vector4(2956.6384, -3726.6807, 141.0011, 279.0172),
                secondCamPos = vector4(2963.5059, -3733.5686, 141.0011, 350.8982),
                pedPos = vector4(2963.9102, -3726.2297, 141.0010, 137.8155),
            },
        }
    },
    ["Wasteland"] = {
        arena = {
            enabled = true, -- Set this to false if you are using your own custom map
            category = "wasteland", -- dystopian | scifi | wasteland
            map = 1, -- 1 - 10
        },
        image = "wasteland.png",
        center = vector3(2767.8115, -3794.8323, 158.7349),
        radius = 300,
        spawnPoints = {
            [1] = {
                vector4(2654.6121, -3844.6682, 139.9996, 309.1362),
                vector4(2650.4934, -3833.9128, 139.9966, 11.9108),
                vector4(2649.6763, -3812.5286, 139.3284, 311.0358),
                vector4(2660.2954, -3807.3562, 135.5194, 309.5295),
                vector4(2667.0869, -3818.5142, 133.7399, 244.4456),
                vector4(2669.7222, -3836.5959, 135.9292, 216.6075),
                vector4(2684.1816, -3842.9902, 132.9112, 271.4904),
                vector4(2696.1780, -3849.1809, 131.6608, 242.0275),
            },
            [2] = {
                vector4(2727.3474, -3796.5454, 110.3015, 268.8500),
                vector4(2731.1423, -3820.5447, 112.2867, 294.6314),
                vector4(2752.7283, -3831.1782, 120.0949, 280.2125),
                vector4(2731.0044, -3776.2178, 113.4648, 250.2331),
                vector4(2752.2412, -3765.5615, 120.8031, 227.8115),
                vector4(2766.7209, -3785.4519, 104.6481, 242.7348),
                vector4(2759.1365, -3802.8276, 103.5955, 279.4023),
                vector4(2776.8528, -3814.9292, 104.5173, 294.2168),
            },
            [3] = {
                vector4(2944.6016, -3847.3057, 139.9996, 57.9116),
                vector4(2952.4673, -3829.9338, 139.9655, 66.2639),
                vector4(2934.7241, -3860.4460, 139.9971, 30.5232),
                vector4(2922.4299, -3868.2927, 139.9204, 19.8127),
                vector4(2918.0828, -3856.6128, 138.2195, 19.8837),
                vector4(2930.5117, -3845.1831, 138.1876, 48.2144),
                vector4(2937.3127, -3827.4963, 136.6787, 77.5446),
                vector4(2947.4441, -3813.1365, 138.7080, 76.9152),
            },
            [4] = {
                vector4(2913.1355, -3728.2681, 139.9970, 131.5450),
                vector4(2927.7893, -3738.3337, 139.9972, 124.0630),
                vector4(2933.5876, -3747.7190, 139.7753, 122.1269),
                vector4(2942.7991, -3753.5752, 139.8898, 158.8461),
                vector4(2926.0063, -3750.7139, 138.0288, 149.9485),
                vector4(2905.6387, -3741.8047, 135.8194, 162.7806),
                vector4(2894.8232, -3733.0903, 138.0200, 164.0504),
                vector4(2925.9209, -3748.6882, 138.5687, 158.8045),
            },
            [5] = {
                vector4(2735.8145, -3784.5598, 127.9954, 186.8852),
                vector4(2759.2974, -3790.1538, 127.9925, 139.6902),
                vector4(2742.3289, -3811.2864, 127.9952, 350.4439),
                vector4(2760.3823, -3808.5671, 127.9204, 18.2218),
                vector4(2782.8127, -3807.2080, 127.9917, 272.6118),
                vector4(2775.4341, -3790.9548, 127.9937, 257.6358),
                vector4(2763.9866, -3799.5703, 127.9926, 255.2771),
                vector4(2735.6648, -3801.7883, 128.0068, 105.6480),
            },
            [6] = {
                vector4(2866.1750, -3813.6680, 127.9962, 37.6156),
                vector4(2850.0911, -3814.6599, 127.9954, 57.9757),
                vector4(2856.6025, -3787.7227, 127.9903, 110.4954),
                vector4(2842.1716, -3791.0410, 127.9897, 143.4809),
                vector4(2835.4861, -3796.4390, 127.9950, 111.7712),
                vector4(2824.6426, -3804.6213, 127.9954, 86.7546),
                vector4(2874.9238, -3806.2251, 127.9997, 266.0074),
                vector4(2872.1804, -3787.9753, 128.0023, 242.3317),
            },
            [7] = {
                vector4(2843.6687, -3777.6672, 109.4463, 132.3529),
                vector4(2864.4172, -3778.8452, 111.3927, 225.0679),
                vector4(2878.4465, -3802.4587, 112.2085, 85.4043),
                vector4(2855.8948, -3822.8184, 110.4903, 74.4489),
                vector4(2846.1060, -3829.4175, 120.0958, 80.2130),
                vector4(2842.1218, -3770.5576, 120.6618, 104.8087),
                vector4(2833.1968, -3801.0303, 104.3264, 108.0145),
                vector4(2852.5349, -3804.1780, 103.8437, 93.9799),
            },
            [8] = {
                vector4(2694.6250, -3723.7705, 139.9972, 267.0436),
                vector4(2705.2092, -3725.4492, 139.9448, 264.9389),
                vector4(2682.0088, -3735.3218, 139.7949, 163.2310),
                vector4(2694.0852, -3743.7351, 135.0397, 242.0199),
                vector4(2707.1658, -3740.1738, 134.0993, 230.1057),
                vector4(2681.2927, -3724.1543, 139.9904, 214.0304),
                vector4(2704.4556, -3753.1362, 129.7559, 240.9392),
                vector4(2703.7949, -3736.5984, 136.4666, 261.0138),
            },
        },
        flags = {
            [1] = vector4(2652.6121, -3844.6682, 139.9996, 309.1362),
            [2] = vector4(2752.2412, -3763.5615, 120.8031, 227.8115),
        },
        animation = {
            enabled = true,
            opening = {
                firstCamPos = vector4(2795.0320, -3692.2739, 139.5050, 359.9776),
                secondCamPos = vector4(2800.9272, -3704.4854, 139.3283, 178.8751),
                pedPos = vector4(2795.0542, -3684.9895, 140.0010, 176.7969),
            },
            winning = {
                firstCamPos = vector4(2956.6384, -3726.6807, 141.0011, 279.0172),
                secondCamPos = vector4(2963.5059, -3733.5686, 141.0011, 350.8982),
                pedPos = vector4(2963.9102, -3726.2297, 141.0010, 137.8155),
            },
        }
    }, 
    ["Plane Yard"] = {
        arena = {
            enabled = true, -- Set this to false if you are using your own custom map
            category = "dystopian", -- dystopian | scifi | wasteland
            map = 4, -- 1 - 10
        },
        image = "planeyard.png",
        center = vector3(2767.8115, -3794.8323, 158.7349),
        radius = 300,
        spawnPoints = {
            [1] = {
                vector4(2913.9092, -3745.6721, 140.1068, 130.1140),
                vector4(2926.1526, -3764.8188, 140.4639, 127.8174),
                vector4(2940.1062, -3765.2822, 139.9828, 91.9470),
                vector4(2927.8787, -3773.3438, 140.5386, 124.7353),
                vector4(2917.3760, -3767.3728, 141.3700, 115.2725),
                vector4(2908.5557, -3765.2893, 142.9528, 89.5821),
                vector4(2884.6250, -3738.7009, 140.2764, 128.3206),
                vector4(2877.5632, -3746.6499, 141.1012, 99.8623),
            },
            [2] = {
                vector4(2876.1860, -3797.6543, 145.9464, 87.5176),
                vector4(2873.6028, -3784.5352, 144.8293, 20.4817),
                vector4(2879.4907, -3771.1367, 145.6844, 198.6272),
                vector4(2863.1829, -3796.4084, 150.3669, 44.6514),
                vector4(2861.7922, -3797.7744, 145.9860, 197.5549),
                vector4(2859.5540, -3807.1721, 144.9221, 137.6900),
                vector4(2883.3416, -3806.4351, 144.4744, 77.3062),
                vector4(2890.0930, -3803.8035, 144.2478, 283.8114),
            },
            [3] = {
                vector4(2669.1011, -3839.1865, 140.0345, 296.2662),
                vector4(2679.6072, -3843.7053, 140.0348, 293.6091),
                vector4(2692.5564, -3831.9680, 140.0927, 280.1859),
                vector4(2681.1838, -3822.5989, 140.0929, 349.5950),
                vector4(2657.9421, -3826.5398, 140.0331, 322.5122),
                vector4(2710.8579, -3862.4448, 140.0329, 296.6707),
                vector4(2724.9285, -3857.4868, 140.0348, 303.8330),
                vector4(2739.8921, -3856.5312, 140.0293, 298.2741),
            },
            [4] = {
                vector4(2711.0667, -3741.0474, 140.0334, 232.8683),
                vector4(2700.8943, -3747.2583, 140.0719, 185.5319),
                vector4(2696.4480, -3763.9124, 140.0817, 187.6205),
                vector4(2681.1111, -3747.8501, 140.0286, 200.3331),
                vector4(2669.8735, -3757.3677, 140.0328, 254.8833),
                vector4(2723.7678, -3771.5229, 140.1019, 241.9316),
                vector4(2761.5850, -3751.6658, 140.0329, 244.0870),
                vector4(2757.6135, -3762.3826, 140.0422, 210.2894),
            },
            [5] = {
                vector4(2814.3328, -3850.8850, 138.5757, 80.4625),
                vector4(2847.4265, -3842.1021, 139.6503, 273.5383),
                vector4(2851.3657, -3860.8257, 139.8913, 347.0911),
                vector4(2797.6404, -3842.1299, 140.4794, 67.2488),
                vector4(2801.3813, -3859.3901, 139.8649, 63.6317),
                vector4(2820.5432, -3828.0925, 138.4783, 4.4596),
                vector4(2842.0403, -3827.5793, 139.0998, 274.6032),
                vector4(2790.0125, -3834.4353, 140.2282, 32.0745),
            },
            [6] = {
                vector4(2817.5791, -3755.2388, 140.3923, 132.2441),
                vector4(2807.1421, -3751.4382, 140.3352, 112.0575),
                vector4(2830.8562, -3744.1931, 140.2586, 238.7028),
                vector4(2836.4963, -3738.7124, 140.0329, 247.5634),
                vector4(2838.1511, -3762.2700, 140.1558, 162.5877),
                vector4(2802.5833, -3746.0229, 140.2135, 112.8454),
                vector4(2785.5105, -3738.3198, 139.9871, 122.5689),
                vector4(2817.1077, -3740.8660, 140.1246, 223.2566),
            },
            [7] = {
                vector4(2766.0254, -3823.4968, 140.6401, 293.1979),
                vector4(2763.7329, -3818.4487, 140.2556, 97.3183),
                vector4(2779.2283, -3804.0437, 140.0662, 313.2572),
                vector4(2783.1055, -3809.5107, 140.0988, 258.6172),
                vector4(2750.2976, -3832.4609, 145.8212, 223.3495),
                vector4(2755.5862, -3836.9204, 140.3334, 227.7629),
                vector4(2734.4260, -3837.7397, 140.6520, 119.2907),
                vector4(2789.4568, -3807.0266, 140.1469, 266.1598),
            },
            [8] = {
                vector4(2924.3257, -3848.4570, 140.0345, 60.7804),
                vector4(2919.2866, -3842.8364, 140.0348, 52.2829),
                vector4(2938.7642, -3835.4604, 140.0348, 15.7773),
                vector4(2928.4663, -3832.0942, 140.0348, 47.0732),
                vector4(2918.6128, -3828.3955, 140.1533, 60.3269),
                vector4(2907.0491, -3835.9268, 140.2819, 83.4736),
                vector4(2899.4133, -3849.5872, 140.0345, 77.5644),
                vector4(2892.8455, -3836.2612, 140.0459, 26.3910),
            }, 
        },
        flags = {
            [1] = vector4(2906.5557, -3763.2893, 142.9528, 89.5821),
            [2] = vector4(2877.4907, -377.1367, 145.6844, 198.6272),
        },
        animation = {
            enabled = true,
            opening = {
                firstCamPos = vector4(2795.0320, -3692.2739, 139.5050, 359.9776),
                secondCamPos = vector4(2810.0422, -3698.2104, 139.0010, 179.0620),
                pedPos = vector4(2795.0542, -3684.9895, 140.0010, 176.7969),
            },
            winning = {
                firstCamPos = vector4(2956.6384, -3726.6807, 141.0011, 279.0172),
                secondCamPos = vector4(2963.5059, -3733.5686, 141.0011, 350.8982),
                pedPos = vector4(2963.9102, -3726.2297, 141.0010, 137.8155),
            },
        }
    },
}

--If you want to remove a weapon, delete it from this list
Config.headshotMultiplier = 3.0
Config.weapons = {
    ["nass_paintball_gun"] = {label = "Paintball Gun", damage = 20},
    ["WEAPON_REVOLVER"] = {label = "Revolver", damage = 37},
    ["WEAPON_PISTOL"] = {label = "Pistol", damage = 15},
    ["WEAPON_PISTOL_MK2"] = {label = "Pistol Mk2", damage = 20},
    ["WEAPON_COMBATPISTOL"] = {label = "Combatpistol", damage = 25},
    ["WEAPON_APPISTOL"] = {label = "AP Pistol", damage = 20},
    ["WEAPON_PISTOL50"] = {label = "Pistol 50", damage = 40},
    ["WEAPON_SNSPISTOL"] = {label = "SNS Pistol", damage = 15},
    ["WEAPON_HEAVYPISTOL"] = {label = "Heavy Pistol", damage = 40},
    ["WEAPON_VINTAGEPISTOL"] = {label = "Vintage Pistol", damage = 30},
    ["WEAPON_MARKSMANPISTOL"] = {label = "Marksman Pistol", damage = 30},
    ["WEAPON_MICROSMG"] = {label = "Micro SMG", damage = 20},
    ["WEAPON_MINISMG"] = {label = "Mini SMG", damage = 20},
    ["WEAPON_SMG"] = {label = "SMG", damage = 20},
    ["WEAPON_SMG_MK2"] = {label = "SMG Mk2", damage = 20},
    ["WEAPON_ASSAULTSMG"] = {label = "Assault SMG", damage = 20},
    ["WEAPON_MG"] = {label = "MG", damage = 20},
    ["WEAPON_COMBATMG"] = {label = "Combat MG", damage = 20},
    ["WEAPON_COMBATMG_MK2"] = {label = "Combat MG Mk2", damage = 20},
    ["WEAPON_COMBATPDW"] = {label = "Combat PDW", damage = 20},
    ["WEAPON_GUSENBERG"] = {label = "Gusenberg", damage = 20},
    ["WEAPON_MACHINEPISTOL"] = {label = "Machine Pistol", damage = 20},
    ["WEAPON_ASSAULTRIFLE"] = {label = "Assault Rifle", damage = 20},
    ["WEAPON_ASSAULTRIFLE_MK2"] = {label = "Assault Rifle Mk2", damage = 20},
    ["WEAPON_CARBINERIFLE"] = {label = "Carbine Rifle", damage = 20},
    ["WEAPON_CARBINERIFLE_MK2"] = {label = "Carbine Rifle Mk2", damage = 20},
    ["WEAPON_ADVANCEDRIFLE"] = {label = "Advanced Rifle", damage = 20},
    ["WEAPON_SPECIALCARBINE"] = {label = "Special Carbine", damage = 20},
    ["WEAPON_BULLPUPRIFLE"] = {label = "Bullpup Rifle", damage = 20},
    ["WEAPON_COMPACTRIFLE"] = {label = "Compact Rifle", damage = 20},
    ["WEAPON_PUMPSHOTGUN"] = {label = "Pump Shotgun", damage = 60},
    ["WEAPON_SAWNOFFSHOTGUN"] = {label = "Sawnoff Shotgun", damage = 40},
    ["WEAPON_BULLPUPSHOTGUN"] = {label = "Bullpup Shotgun", damage = 50},
    ["WEAPON_ASSAULTSHOTGUN"] = {label = "Assault Shotgun", damage = 60},
    ["WEAPON_MUSKET"] = {label = "Musket", damage = 120},
    ["WEAPON_HEAVYSHOTGUN"] = {label = "Heavy Shotgun", damage = 40},
    ["WEAPON_DBSHOTGUN"] = {label = "DB Shotgun", damage = 40},
    ["WEAPON_SNIPERRIFLE"] = {label = "Sniper Rifle", damage = 200},
    ["WEAPON_HEAVYSNIPER"] = {label = "Heavy Sniper", damage = 200},
    ["WEAPON_HEAVYSNIPER_MK2"] = {label = "Heavy Sniper Mk2", damage = 200},
    ["WEAPON_MARKSMANRIFLE"] = {label = "Marksman Rifle", damage = 200},
    ["WEAPON_SNSPISTOL_MK2"] = {label = "SNS Pistol Mk2", damage = 17},
    ["WEAPON_REVOLVER_MK2"] = {label = "Revolver Mk2", damage = 40},
    ["WEAPON_DOUBLEACTION"] = {label = "Double Action", damage = 30},
    ["WEAPON_SPECIALCARBINE_MK2"] = {label = "Special Carbine Mk2", damage = 20},
    ["WEAPON_BULLPUPRIFLE_MK2"] = {label = "Bullpup Rifle Mk2", damage = 20},
    ["WEAPON_PUMPSHOTGUN_MK2"] = {label = "Pump Shotgun Mk2", damage = 20},
    ["WEAPON_MARKSMANRIFLE_MK2"] = {label = "Marksman Rifle Mk2", damage = 20},
    ["WEAPON_RAYPISTOL"] = {label = "Ray Pistol", damage = 20},
    ["WEAPON_RAYCARBINE"] = {label = "Ray Carbine", damage = 20},
    ["WEAPON_RAYMINIGUN"] = {label = "Ray Minigun", damage = 20},
    ["WEAPON_NAVYREVOLVER"] = {label = "Navy Revolver", damage = 20},
    ["WEAPON_MILITARYRIFLE"] = {label = "Military Rifle", damage = 20},
    ["WEAPON_COMBATSHOTGUN"] = {label = "Combat Shotgun", damage = 20},
    ["WEAPON_AUTOSHOTGUN"] = {label = "Auto Shotgun", damage = 30},
}

Config.leaderboard = {
    enabled = true,
    name = "showLeadeboard",
    keybind = "I",
}


-- Time limits for the dropdown menu in the lobby creation UI
Config.timeLimits = { 
    --Time in minutes
    3,
    5,
    10,
    15,
    20,
    "Unlimited",
}

Config.lives = {
    "1",
    "3",
    "5",
    "10",
}

-- Max Scores for both CTF and Dog Tags
Config.scores = {
    "3",
    "5",
    "10",
    "15",
    "20",
}

Config.spectate = {
    enabled = true,
    controls = { -- https://docs.fivem.net/docs/game-references/controls/#controls
        cancel = {194, "INPUT_FRONTEND_RRIGHT"}, --Backspace
        left = {189, "INPUT_FRONTEND_LEFT"}, -- Left Arrow
        right = {190, "INPUT_FRONTEND_RIGHT"}, -- Right Arrow
    }
}


Config.gunGameWeapons = { --Must be in Config.weapons
    "WEAPON_REVOLVER",
    "WEAPON_PISTOL",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_MICROSMG",
    "WEAPON_SMG",
    "WEAPON_ASSAULTSMG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATPDW",
    "WEAPON_GUSENBERG",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_CARBINERIFLE",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_RAYPISTOL",
    "nass_paintball_gun",
}

Config.animationDicts = {
    [1] = {dict = "anim@amb@nightclub@dancers@podium_dancers@", anim = "hi_dance_facedj_17_v2_male^5"},
    [2] = {dict = "misscommon@response", anim = "bring_it_on"},
    [3] = {dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", anim = "high_center"},
    [4] = {dict = "anim@mp_player_intcelebrationfemale@shadow_boxing" , anim = "shadow_boxing"},
    [5] = {dict = "anim@mp_player_intcelebrationfemale@knuckle_crunch", anim = "knuckle_crunch"},
    [6] = {dict = "anim@mp_player_intcelebrationfemale@thumbs_up", anim = "thumbs_up"},
    [7] = {dict = "mp_player_int_uppergang_sign_b", anim = "mp_player_int_gang_sign_b_enter"},
    [8] = {dict = "move_clown@p_m_two_idles@", anim = "fidget_adjust_nose"},
    [9] = {dict = "anim@mp_player_intcelebrationfemale@cut_throat", anim = "cut_throat"},
    [10] = {dict = "anim@mp_player_intcelebrationfemale@finger", anim = "finger"},
    [11] = {dict = "anim@arena@celeb@flat@paired@no_props@", anim = "laugh_a_player_a"},
    [12] = {dict = "anim@mp_player_intcelebrationfemale@mind_blown", anim = "mind_blown"},
    [13] = {dict = "anim@mp_player_intcelebrationfemale@raining_cash", anim = "raining_cash"},
    [14] = {dict = "anim@mp_player_intcelebrationfemale@raise_the_roof", anim = "raise_the_roof"},
    [15] = {dict = "anim@mp_player_intcelebrationfemale@shush", anim = "shush"},
    [16] = {dict = "anim@mp_player_intcelebrationfemale@thumb_on_ears", anim = "thumb_on_ears"},
    [17] = {dict = "anim@mp_player_intcelebrationfemale@uncle_disco", anim = "uncle_disco"},
    [18] = {dict = "anim@mp_player_intcelebrationfemale@wave", anim = "wave"},
    [19] = {dict = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"},
    [20] = {dict = "anim@mp_player_intcelebrationmale@blow_kiss", anim = "blow_kiss"},
    [21] = {dict = "anim@mp_player_intcelebrationmale@chicken_taunt", anim = "chicken_taunt"},
    [22] = {dict = "anim@mp_player_intcelebrationmale@karate_chops", anim = "karate_chops"},
    [23] = {dict = "anim@mp_player_intcelebrationmale@slow_clap", anim = "slow_clap"},
    [24] = {dict = "anim@mp_player_intcelebrationmale@wank", anim = "wave"},
    [25] = {dict = "anim@mp_player_intcelebrationpaired@m_m_fist_bump", anim = "fist_bump_left"},
    [26] = {dict = "anim@mp_player_intcelebrationpaired@f_f_sarcastic", anim = "sarcastic_left"},
}

Config.deathAnimation = {
    dict = "mini@cpr@char_b@cpr_def",
    anim = "cpr_pumpchest_idle",
}


Config.checkPermFunction = false -- Added by request. Turn this on to use the permCheck function in the server/unlocked.lua