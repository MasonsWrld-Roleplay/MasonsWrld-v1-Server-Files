Config = {}
-- Set Config.kmh to false if you want to use mph
Config.kmh = false

-- Set Config.maxSpeed to false if you want to use same speed for all vehicles
-- Set the max speed for all vehicles on Config.maxSpeed
Config.useCategories = true
Config.maxSpeed = 150

Config.Categories = {
   -- COMPACTS
   {category = 0, maxSpeed = 160},
   -- SEDANS
   {category = 1, maxSpeed = 160},
   -- SUV'S
   {category = 2, maxSpeed = 130},
   -- COUPES
   {category = 3, maxSpeed = 160},
   -- MUSCLE
   {category = 4, maxSpeed = 160},
   -- SPORT CLASSIC
   {category = 5, maxSpeed = 160},
   -- SPORT
   {category = 6, maxSpeed = 160},
   -- SUPER
   {category = 7, maxSpeed = 200},
   -- MOTORCYCLES
   {category = 8, maxSpeed = 166},
   -- OFFROAD
   {category = 9, maxSpeed = 120},
   -- INDUSTRIAL
   {category = 10, maxSpeed = 120},
   -- UTILITY
   {category = 11, maxSpeed = 120},
   -- VANS
   {category = 12, maxSpeed = 130},
   -- BICYCLES
   {category = 13, maxSpeed = 110},
   -- BOATS
   {category = 14, maxSpeed = 140},

   --#region PLANES AND HELIS
   -- YOU MUST NOT LOCK THIS ONES OR YOU WON'T BE ABLE TO FLY THEM!!!
   {category = 15, maxSpeed = nil},
   {category = 16, maxSpeed = nil},
   --#endregion

   -- SERVICE
   {category = 17, maxSpeed = 230},
   -- EMERGENCY
   {category = 18, maxSpeed = 230},
   -- MILITARY
   {category = 19, maxSpeed = 230}
}

-- DO NOT MODIFY
Config.kmhValue = 3.6
Config.mphValue = 2.23694