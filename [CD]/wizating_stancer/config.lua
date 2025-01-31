Config = {}
--[[

THERE IS A COUPLE VARIABLES AT THE TOP OF THE .CSS FOR THE STANCER , 
YOU CAN EASILY CHANGE THE BACKGROUND AND ITS START UP LOCATION HERE ALSO YOU CAN CHANGE WHERE THE PRESS E PROMPT SHOWS.


 Thanks for your support. to set up the script is very simple. in around 10 short steps and you should be up and running

 The only dependency the script has is 'mysql-async' how ever if you using qb and oxmysql you can set that up to work with it also.

 now when using the frameworks making sure to only set one to true setting a framework your not on true will cause the script to break!



 a simple guide on how the script works...

 you set a location to where anybody or a selected job role can use the script once your in this location and you get out the vehicle you want to tune. 
 when you walk upto any of the cars wheels you will get a prompt E html pop up for you to press when you press e the stancer will open.

 now from the start the stancer will start on mode 1 . you can change modes by clicking the image in the bottom left
 Mode 1:
 any wheel you walk upto you can change the camber and offset indpendantly

 Mode 2:
 the stancer will select the 2 wheels from the front or back depending where your standing.

 Mode 3: 
 allows you to change all 4 wheels at once


 the image on the bottom right allows you to move the stancer where you want. allthough after you leave and rejoin it will go back to its original location

 make sure to click SAVE otherwise it will not store the data and sync it 

 ********************************************* ********************************************* ********************************************* *********************************************
  To speed up things and keep your tuning table tidy we run an sql command that removes all vehicles that are not owned by players that got tuned on previous restart
    as you will never see the vehicles again so we highly advise keeping this set to true! Config.deleteUnownedVehicleTunes = true

 **// unfortunatly due to way gta is made put your wheels below -15 camber to the max say -25 , 
  can cause some weird things to happen at high speeds we advise only going so high camber for show cars 
  vstancer would cap out at around -14(deg) camber on our stancer. so we have given nearly double that for that show stance,
  unfortunaltly we cannot go anymore the car becomes undriveable **//

  IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT IMPORTANT
    ********************************************* ********************************************* ********************************************* *********************************************
  INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE INSTALL GUIDE                                            
 
  ********************************************* ********************************************* ********************************************* *********************************************
 ESX.
 1. Add sql to your database
 2. Set Config.useESX = true,
 3. If you want to lock the stancer to a job role you can!, Simply type the job role into Config.JobRole and then set Config.restrictToESXJob = true
 4. If you want to use owned vehicles the script should be set up to work with standard esx tables so you should not need to change them, but we recommend you double check it against your database
 5. Once doing so you can set Config.UseOwnedVehicles = true
 6. Now set up your garage locations (this is the locations where it will give you the prompt press e to tune / if you want to use everywhere set coords to middle map and radius 10000
 7. Add wizating_stancer to your server.cfg 
 8. Start server 

 VRP.

 1. Add sql to your database
 2. switch out the fxmanifest for the vrp manifest from the manifests folder
 3. Set Config.useVRP = true,
 4. If you want to lock the stancer to a job role you can!, Simply type the job role into Config.JobRole and then set Config.restrictToVRPJob = true
 5. If you want to use owned vehicles the standard table and column for vrp would be  Config.ownedVehicles = 'vrp_user_vehicles' , Config.vehiclePlate = 'vehicle_plate' but we recommend you double check it against your database
 6. Once doing so you can set Config.UseOwnedVehicles = true
 7. Now set up your garage locations (this is the locations where it will give you the prompt press e to tune / if you want to use everywhere set coords to middle map and radius 10000
 8. Add wizating_stancer to your server.cfg 
 9. Start server 

 QB

 1. Add sql to your database
 2. switch out the fxmanifest for the qb manifest from the manifests folder
 3. Set Config.useQB = true,
 4. If you want to lock the stancer to a job role you can!, Simply type the job role into Config.JobRole and then set Config.restrictToQBJob = true
 5. If you want to use owned vehicles the standard table and column for vrp would be  Config.ownedVehicles = 'player_vehicles' , Config.vehiclePlate = 'plate' but we recommend you double check it against your database
 6. Once doing so you can set Config.UseOwnedVehicles = true
 7. Now set up your garage locations (this is the locations where it will give you the prompt press e to tune / if you want to use everywhere set coords to middle map and radius 10000
 8. Add wizating_stancer to your server.cfg 
 9. Start server 

 STANDALONE
 you can set the script to work on any framework by turning them all off , adding your vehicle tables for the owned vehicles.
 aslong as you have the mysql-async installed it can run on just a standard cfx server to a fully custom one

]]

------ MAKE SURE TO FOLLOW ALL STEPS IN THE INSTALL GUIDE FOR A HASSLE FREE SETUP! 

-- Shift allows you to use the UI when on screen
-- INSIDE index.js, change "var stancerFocusKey = 16" to another js key, 16 = shift

-- make sure you only set the framework you want to use or the script will break

----
-- EDIT THE functions.lua TO SET UP GETTING JOB INFO IF YOU ARE USING A MODIFIED FRAMEWORK
-- IT WILL FUNCTION CORRECTLY IF YOU ARE USING AN OFFICIAL, UNEDITED FRAMEWORK OUT OF THE BOX
---

---- !!!!!!!!!!!!!!!!!!!!!!!! PLEASE TAKE AN EXTRA FEW MINUTES READING THROUGH AND UNDERSTANDING WHAT EVERYTHING DOES IN HERE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

---- WHEN USING THIS MAKE SURE TO ADD TO YOUR SERVER FILES  -------  DecorSetInt(vehicle, "Wiza-Stanced", 0) ----------------------- ANY VEHICLE SCRIPT THAT EDITS THE VEHICLE LOOKS / WHEELS / EXTRAS
Config.fullyOptimized = false ------ To use this mode you must set up your vehicle scripts correctly. if you do not you will need to open the stancer and close it anytime you make any visual change on the vehicle bumpers etc / extras etc
-- EASIEST WAY TO SET THIS UP IS RUN IT ON AND ANYTIME YOU FIND THE WHEELS ARE RESETTING AND NOT SETTING BACK ADD INTO THE SCRIPT THAT CAUSED IT TO HAPPEN. THERE SHOULD NOT BE MANY. 

-- EVERY place in your server files the vehicle has any change to a modification or extra applied you will need to add ..  DecorSetInt(vehicle, "Wiza-Stanced", 0)
-- If you cannot do this do not worry the script will still run fine just not to the best of its ability.
-- If you cannot access your vehicle files do you purchasing them,
-- Then you would simply need to open a ticket with that developer and ask them nicely to add DecorSetInt(vehicle, "Wiza-Stanced", 0) in any location the vehicle is edited.
-- WARNING !!! If you miss any spaces you needed to add it all you would have to do to reapply vehicle stance is open the stancer on the vehicle and close it do not save. and it will reapply.

Config.HydraulicUse = true -- Used when fullyOptimized is false (IF USINMG LOWRIDERS, LIKE THE VOODOO ETC)
                           -- Allows lowriders to function
                           -- This will impact performance - with 10+ cars in the area the ms will jump from 0.0 to 0.20+ depending on your system specs

Config.openStancerKey = 38
Config.showHTMLOPEN = '( E )'
Config.focusKey = 21 --- SHIFT you may want to change this if you plan on using tab to cycle the sliders as steam overlay will pop up.
Config.CommandName = "stancer" --- this command is used to hide the stancer E prompt when taking screenshots or not wanting to use it. its a toggle on /off using the same command

Config.PlateDebug = false
Config.Plates = "custom" --  spaces || mixed 
-- || "trimmed - Works for all normal 8 character plates removes all whitespace and spaces ||
-- || "spaces - Works for vehicleshop that have spaces in plates but remove the white space at the end of the plate ||
-- || "mixed - Works for QB or users with esx_vehicleshop ||
-- || "custom - Works for all Spaces Normally best option ||

Config.ItemName = "stancekit"
Config.useitem = false
---------------------------------
Config.useESX = false
Config.restrictToESXJob = false

Config.useQB = true
Config.restrictToQBJob = true

Config.useVRP = false
Config.restrictToVRPJob = false
-------------------------------
Config.DebugJob = false
Config.JobRoles = {
    [1] = {
        name = "fastcustoms",
        minJobGrade = 0
    },
    -- [2] = {name = "tuner" , minJobGrade = 0 },
    -- [3] = {name = "customs" , minJobGrade = 0 }
}

Config.customWheels = true -- Enables resizing of wheels, set to false if you do not want players to change the size/width

Config.useAnimation = true -- enables player animation for changing the stance of wheels

Config.SyncRange = 50.0 --[[ This sets the range where you can see other players tunes. 
a nice optimized level is 50 but 75 is better for higher end systems that can see further would not go over 100 as you would not see it.
50 min  - 100 max 
]]
Config.SyncInUse = true ---- at a minor cost of performance you can turn this on so players can see you live making changes in the stancer

Config.wheelDamage = true ----- if using a WHEEL DAMAGE SCRIPT for your wheels so they break off make sure this is set to TRUE

Config.EnableColliders = true -- Enable collider scaling on wheels(STOPS CAR FROM FLOATING WITH RESIZING AND CHANGES SIZE OF SKIDMARKS TO MATCH TYRE SIZE)
Config.NoColliderTable = false ---- LEAVE FALSE IF YOUR NOT HAVING ISSUES WITH CARS FLOATING. TRUE TURNS ON THE TABLE BELOW MAKE SURE TO CONFIGURE IT CORRECTLY TO YOUR SERVER.
Config.NoColliderVehicles = {"TURISMO2", "SULTAN"} -- ALL CAPS -- THIS STOPS COLLIDERS WORKING ON THESE VEHICLES ( MAINLY NEED TO USE THIS WHEN USING BAD MODS. IF CAR AND RIMPACK MADE CORRECTLY YOU WILL NOT NEED THIS)
--- ABOVE ARE 2 EXAMPLES. REMOVE AND EDIT THESE EXAMPLES THE COLLIDERS ARE FINE ON THESE VEHICLES
--- USE VEHICLE MODEL NAME, AS MANY AS NEEDED JUST COPY THE ABOVE FORMAT.

Config.ServerRefresh = 2500 --[[ if your finding the script is finding your location too slow
 you can lower this but would not advise any lower then 1500 or higher then 5000]]

Config.closeUiVehicleDistance = 3.5 ---- the max distance you can be before the stancer closes automatically.

Config.SaveToDataBase = true --- IF YOU WANT TO SAVE STANCES BETWEEN SERVER RESTARTS KEEP THIS TRUE (DESIGNED FOR NON RP SERVERS AND TESTING)
-- IF YOUR SERVER IS A VMENU SERVER WITH HIGH POPULATION OR PEOPLE USING THE SAME NUMBERPLATES SETTING THIS TO FALSE MIGHT BE A GOOD IDEA. 

------ SQL INFO CHANGE THESE TO MATCH YOURS -----
Config.UseOwnedVehicles = false -- change this to true if using owned vehicles and set up the tables to match your framework
Config.ownedVehicles = 'owned_vehicles' -- 'owned_vehicles' ----  CHANGE THIS TO MATCH YOUR FRAMEWORK / TABLE NAME OF OWNED VEHICLES
Config.vehiclePlate = 'plate' ---- CHANGE THIS TO MATCH YOUR FRAMEWORK / COLUMN NAME INSIDE OWNED VEHICLES FOR PLATE

Config.deleteUnownedVehicleTunes = false ---- Set this true if you want the script to automatically delete STANCED vehicles that players do not own in the server.
-- from stanced vehicles that are not owned by players --- !!!WARNING!!! if you do not set up your ownedvehicles table to match your framework,
-- THIS WILL DELETE ALL STANCED VEHICLES IN DATABASE IF NOT SET UP CORRECTLY

-------- this is the locations where you can use the stancer 
Config.UseGarageLocations = false ---- setting this to truee will lock thee stancer to the locations in you set below setting this false will make it work global
Config.garageLocations = {
    [1] = {
        coords = {
            x = 109.46,
            y = 154.98,
            z = 104.96
        },
        radius = 100
    } ----- WE ADVISE CHANGING THIS BEFORE START UP 
    -- [2] = {  coords = {x = -19.08, y = -1716.22, z = 29.2} , radius = 100}, 
    -- [3] = {  coords = {x = -998.19, y = -3019.46, z = 13.95} , radius = 100}   -- make sure if you add location the number goes in order 1 2 3 4 5 6 7 
    -- [4] = {  coords = {x = -998.19, y = -3019.46, z = 13.95} , radius = 75}    -- you can add more then this these are just examples to give you an idea of the format
    -- [5] = {  coords = {x = -998.19, y = -3019.46, z = 13.95} , radius = 10}    -- add a , after each line also, except the last
    -- [6] = {  coords = {x = -998.19, y = -3019.46, z = 13.95} , radius = 25}   
    -- [7] = {  coords = {x = -998.19, y = -3019.46, z = 13.95} , radius = 10000}   
}

Config.UseModel = true ---- Designed for vMenu servers where people using the same plate on different cars..
---99% of servers can leave this like this and ONLY if advised to in a ticket should you really change it.
------
-- NOTIFICATIONS
------

Config.notification1 = 'Stancer OFF'
Config.notification2 = 'Stancer ON'
Config.notification3 =
    'Stancer set to DEFAULT , To keep click SAVE. If you made a mistake you can relog for previous Theme!'
Config.notification4 = 'Preset Selected!'
Config.notification5 = 'Attempting to select preset nil plate failed!'
Config.notification6 = 'Theme updated'
Config.notification7 = 'Theme Saved'
Config.notification8 = 'Vehicle returned to default. You may need to drive a short distance for it to take full affect'
Config.notification9 = 'Vehicle Stanced'
Config.notification10 = 'Preset deleting.....'
Config.notification11 = 'Name in use. Please use another name!'
Config.notification12 = 'Preset Saved'
Config.notification13 = "Currently returning vehicle to default stance"
Config.notification14 = "Attempting to activate default on nil plate failed"
