Config = {
--[[ONLY CHANGE THESE NUMBERS IF YOU KNOW WHAT YOUR DOING MAKING A MAX OR MIN TO LOW OR HIGH COULD CAUSE ALOT 
   OF ISSUES WITH THE CARS. DO SO AT YOUR OWN RISK.]]
 

--[[  WARNING BEFORE ATTEMPTING TO SET THE SCRIPT AND HAVING ISSUES WE HEAVILY ADVISE YOU READ THE INSTALL GUIDE]]


Command = true,
CommandName = 'laptop',

ItemName = 'tuners_laptop',
JobRoles = { ---- need to use a framework to set this true
   [1] = {name = "yannimize" , minJobGrade = 0 },
  -- [2] = {name = "tuner" , minJobGrade = 0 },
  -- [3] = {name = "customs" , minJobGrade = 0 }
 },

useESX = false,
esxObject = 'esx:getSharedObject', -- What your getSharedObject is named, if you have renamed it.
useESXitem = false,
restrictToESXJob = false,

useQB = true,
qbObject = 'qb-core', -- Object or export name
useQBitem = false,
restrictToQBJob = true,

useVRP = false,
useVRPitem = false,
restrictToVRPJob = false,

--- PLATES --
PlateDebug = false,
Plates = "trimmed", --  spaces || mixed 
--|| "trimmed - Works for all normal 8 character plates removes all whitespace and spaces ||
--|| "spaces - Works for vehicleshop that have spaces in plates but remove the white space at the end of the plate ||
--|| "mixed - Works for QB or users with esx_vehicleshop ||
--|| "custom - Works for all Spaces Normally best option ||

------ SQL INFO CHANGE THESE TO MATCH YOURS -----
UseOwnedVehicles  = false, -- change this to true if using owned vehicles and set up the tables to match your framework
ownedVehicles = 'CHANGE ME', ----  change this to the table name of your owned vehicles
vehiclePlate = 'CHANGE ME', ---- change this to the column name where you store your numberplates in your owned vehicles table

DeleteUnownedVehiclesFromSQL = false, ----- when using the with above it will add a 1 into the database where the owned column is if a user owns the vehicle. 
-- Then on server restart the script will look for every car with 0 in the owned column and remove them from your database.
-- CAUTION TURNING THIS TO TRUE WITHOUT CORRECTLY SETTING UP THE ABOVE WILL REMOVE ALL TUNES AS THE VEHICLE WILL ALWAYS BE UNOWNED TO THE SCRIPT

------ DYNO ----------
UseDyno = true, --- SETTING TO FALSE REMOVES THE LAPTOPS DYNO USE 
WHPMODIFIER = 410, --- lower or higher this value to increase or decrease the hp values shown on dyno.
TQMODIFIER = 1.185, --- lower or higher this value to increase or decrease the torque values shown on dyno.
DynoMarker = true,
DynoUseMaxDistance = 5.0,
DynoLocations = { 
   { x = -223.9 , y = -1330.09 , z = 30.89 },
   --{ x =  0.0, y =  0.0, z =  0.0 }, ----- add cords here
},

------ LOCK TO RACETRACK LOCATIONS --- SET TO FALSE TO USE LAPTOP NORMALLY
-- this only allows the laptop to be used within this location , once leaving said zone vehicle returns to default handling and vice versa.
OnlyTuneInLocations = false,
TuneMaxDistanceFromLocations = 100.0,
TuneLocations = {
   [1] = { x = -72.97 , y = -1757.15 , z = 29.51 },
   [2] = { x = 104.15 , y = 156.09 , z = 104.72 } 
   --- will need to add to a ',' to the end of the previous coords
   -- if you want to add more then two locations and make sure to follow number order.
   -- [3] = { x = 0.0 , y = 0.0 , z =  0.0}, 
   -- [4] = { x = 0.0 , y = 0.0 , z =  0.0} ----- example
},

fTractionCurveMax = 4.7,
fTractionCurveMin = 4.5,
fTractionLossMult = 1.4,
fTractionCurveLateral = 120.0,
fBrakeBiasFront = 0.8,
fSuspensionForce = 9,           --- THESE ARE THE MAX VALUES THE LAPTOP CAN SET 
fLowSpeedTractionLossMult = 2.2,      --- THERE ARE NO MINS FOR THESE AS THE MIN IS 0
fInitialDriveForce = 3.0,
fSuspensionReboundDamp = 10.8,
fSuspensionCompDamp = 8.0,
fSuspensionBiasFront = 0.8,
fSuspensionUpperLimit = 1.0,
fSuspensionLowerLimit = -1.0 ,                               

fTractionSpringDeltaMax_MAX = 0.5,
fTractionSpringDeltaMax_MIN = 0.2,

fTractionBiasFront_MAX = 0.99,
fTractionBiasFront_MIN = 0.01,

fDriveInertia_MAX = 2.5,
fDriveInertia_MIN = 0.1,

fClutchChangeRateScaleUpShift_MAX = 9.0,
fClutchChangeRateScaleUpShift_MIN = 0.3,

fClutchChangeRateScaleDownShift_MAX = 9.0,
fClutchChangeRateScaleDownShift_MIN = 0.3,

fInitialDragCoeff_MAX = 300.0,
fInitialDragCoeff_MIN = 0.9,

fInitialDriveMaxFlatVel_MAX = 330,
fInitialDriveMaxFlatVel_MIN = 100,

fBrakeForce_MAX = 5.0,
fBrakeForce_MIN = 0.001,

fHandBrakeForce_MAX = 5.0,
fHandBrakeForce_MIN = 0.001,

fAntiRollBarForce_MAX = 5,
fAntiRollBarForce_MIN = 0,

fAntiRollBarBiasFront_MAX = 1,
fAntiRollBarBiasFront_MIN = 0,

fSteeringLock = 75,

fRollCentreHeightFront_MAX = 1.2,
fRollCentreHeightFront_MIN = -1.0,

fRollCentreHeightRear_MAX = 1.2,
fRollCentreHeightRear_MIN = -1.0,


fSuspensionRaise_MAX = 5.0,
fSuspensionRaise_MIN = -5.0,

------
-- NOTIFICATIONS
------

notification1 = 'Race Tune : ON',
notification2 = 'Preset Deleted!',
notification3 = 'Cars handling has been reset to default !!',
notification4 = 'You need to be in a vehicle to use the laptop!',
notification5 = 'You need to select a preset before trying to share!',
notification6 = 'No player near you!',
notification7 = 'Target is not the closet player !',
notification8 = 'Car data has been set. Some require you to move your vehicle to take effect!',
notification9 = 'You need to be at the race track to use the laptop!',
notification10 = 'You do not have the required item to use this!',
notification11 = 'Race Tune : OFF',

notification15 = 'Dyno iniatilized start revving your engines Press [E] again to finish!!',
notification16 = 'Dyno has finished open up your laptop!!',
notification17 = 'Preset Selected!',
notification18 = 'You need to be the driver of a vehicle to use the laptop!'


}