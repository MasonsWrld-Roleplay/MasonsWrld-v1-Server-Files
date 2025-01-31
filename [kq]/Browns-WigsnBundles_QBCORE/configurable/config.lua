Config = {}


Config.Notifications = 'ox' -- 'ox', 'qb', or 'custom' (If 'custom' change the logic in 'configurable/notify.lua')

Config.ProgressBar = 'ox' -- 'ox' = ox_lib or 'qb' = progressBar (progressBar = default that comes within qbcore framework)

Config.ShopSystem = 'ox_inventory' -- 'ox_inventory' or 'qb-inventory' or 'custom' (if custom add the items to your own shop)

-- shop items (if Config.ShopSystem is set to 'custom' ignore this part and implement your own shop for the items using same price.)
Config.WigTablePrice = 400 -- price for wig_table in shop
Config.SewInPrice = 5 -- price for wig_sewin in shop
Config.WigCapPrice = 5  -- price for wig_cap in shop
Config.WigBundlesPrice = 20 -- price for wig_bundles in shop

-- shop blip
Config.ShowShopBlip = true -- true/false for showing the shop blip
Config.BlipSprite = 621 -- blip sprite number see
Config.BlipColor = 48 -- blip color
Config.BlipScale = 0.8 -- size of the blip ( 0 - 1.0 )
Config.WigShopBlipName = 'Wigs N Bundles Shop' -- name of the shop on the map

-- shop ped/location
Config.IsPedFloating = true -- Make this true if the shop ped is floating above the ground OR Make this false if the shop ped is under the ground or not visible
Config.ShopCoords = vector3(226.52, -1538.91, 29.35) -- cords of the NPC that sells the wig crafting items
Config.ShopCoordsHeading = 309.94 -- heading of the NPC that sells the wig crafting items

-- corner selling 
Config.CornerSellCommand = 'wigdealer' -- command to start corner selling wigs, must be entered manually after each sell (to make selling process slower and not break economy) [prefer keybinding it]
Config.MaxDealerSell = 50 -- the max amount of wigs that can be sold when corner selling wigs
Config.StraightDealerSellAmount = 40 -- sell amount for 40 inch wigs when corner selling
Config.BraidsDealerSellAmount = 40 -- sell amount for braids wigs when corner selling
Config.CurlyDealerSellAmount = 40 -- sell amount for curly wigs when corner selling
Config.BangDealerSellAmount =40 -- sell amount for bangs wigs when corner selling

-- bulk order mission phone
Config.EnablePhone = false -- enables the random chance of getting the clientale phone item (allows players to do a single mission where they can sell wigs for 2x amount at a clients house (removes the phone upon usage))
Config.PhoneChance = 1 -- [RECCOMENDED 1-3% TO NOT BREAK ECONOMY] The chance (in percentage) of getting a clientale phone when selling to NPCs (corner selling) 

-- bulk order house mission (meant to make double profit for each wig)
Config.MaxMissionSell = 1000 -- max amount of wigs that can be sold when doing the bulk order mission
Config.StraightMissionAmount = 140 -- sell amount for 40 inch wigs when doing house mission
Config.BraidsMissionAmount = 100 -- sell amount for braids wigs when doing house mission
Config.CurlyMissionAmount = 70 -- sell amount for curly wigs when doing house mission
Config.BangMissionAmount = 40 -- sell amount for bangs wigs when doing house mission

