
-- FUNCTIONS TO USE

-- TriggerEvent("wizating_stancer:job", job, grade) -- THIS WILL SEND JOB AND GRADE TO THE CLIENT 


------------------------------------------
------------------------------------------
-- ALL BELOW ARE EXAMPLES ONLY
-- ADD YOUR OWN LUA OR EDIT WHAT IS HERE
-- DELETE WHAT YOU DO NOT NEED
-- KEEP THE FUNCTIONS FOR REFERENCE
------------------------------------------
------------------------------------------



if Config.useESX then
-----------------
-- ESX EXAMPLE -- -- SETUP TO WORK WITH LATEST ESX, WITHOUT HAVING CHANGED EVENT NAMES ETC -- VANILLA ESX
-----------------
ESX = nil
 CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Wait(0)
  end
 end)
-----------------
-- JOB SETTING --
-----------------
 if Config.restrictToESXJob then
   RegisterNetEvent('esx:playerLoaded', function(xPlayer)              -- CHANGE TO YOUR PLAYER LOADED EVENT
    local jobname = xPlayer.job.name                                    -- CHANGE TO HOW YOU GET THE JOB NAME FROM THE PLAYER DATA
    local jobgrade = xPlayer.job.grade                              -- CHANGE TO HOW YOU GET THE JOB GRADE FROM THE PLAYER DATA
    wizatingJobCheck(jobname,jobgrade)
   end)

   RegisterNetEvent('esx:setJob', function(job)                        -- CHANGE TO YOUR JOB SET EVENT
    local jobname = job.name                            -- CHANGE TO HOW YOU GET THE JOB NAME FROM THE JOB DATA
    local jobgrade = job.grade                      -- CHANGE TO HOW YOU GET THE JOB GRADE FROM THE JOB DATA  
    wizatingJobCheck(jobname,jobgrade)
   end)
 end
-- END OF ESX EXAMPLE
elseif Config.useQB then
----------------
-- QB EXAMPLE -- -- SETUP TO WORK WITH LATEST QB, WITHOUT HAVING CHANGED EVENT NAMES ETC -- VANILLA QB
----------------
QBCore = nil
QBCore = exports['qb-core']:GetCoreObject()
-----------------
-- JOB SETTING --
-----------------
   if Config.restrictToQBJob then
   RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()             -- CHANGE TO YOUR PLAYER LOADED EVENT
      local PlayerData = QBCore.Functions.GetPlayerData()
      local Job = PlayerData.job.name                                   -- CHANGE TO HOW YOU GET THE JOB NAME FROM THE PLAYER DATA
      local JobGrade = PlayerData.job.grade.level                       -- CHANGE TO HOW YOU GET THE JOB GRADE FROM THE PLAYER DATA
     
      wizatingJobCheck(Job,JobGrade)     
   end)

   RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
      local Job = JobInfo.name                                          -- CHANGE TO HOW YOU GET THE JOB NAME FROM THE JOB DATA
      local JobGrade = JobInfo.grade.level                              -- CHANGE TO HOW YOU GET THE JOB GRADE FROM THE JOB DATA
     
      wizatingJobCheck(Job,JobGrade)
   end)
  end
-- END OF QB EXAMPLE
elseif Config.useVRP then

  if Config.restrictToVRPJob then
   RegisterNetEvent('wizating_stancer:vrpSetJob')
   AddEventHandler('wizating_stancer:vrpSetJob', function(JobInfo)
    local jobname = JobInfo
    wizatingJobCheck(jobname, 1)
   end)
  end
--- for using with vrp you will need to add the "TriggerServerEvent" into a client event 
--  or function where your jobs get set so that everytime your job is changed it updates the script 

-- TriggerServerEvent('wizating_stancer:vrpJobCheck')

end


wizaPlates = function(value)
  if Config.PlateDebug then
    print("Your vehicles plate is: ["..value.."]")
    print("If you see no spaces, use trimmed.")
    print("If you see a space in the middle and not at the end, use spaces.")
    print("If you see a space in the middle and at the end then use mixed. (mostly for qb and esx vehicleshop users)")
    print("If you have custom plates, then use custom.")
  end
  if Config.Plates == "trimmed" then
   if not value then return nil end
   return (string.gsub(value, "%s+", ""))
  elseif Config.Plates == "spaces" then
   if not value then return nil end
   return (string.gsub(value, "^%s(.-)%s$", "%1"))
  elseif Config.Plates == "mixed" then --mixed QB/ESXVEHSHOP
    if not value then return nil end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
  else
    return tostring(value)
  end
 end

wizatingNotifs = function(type,message)
   exports['mythic_notify']:DoHudText(type, message) --exports['mythic_notify']:DoHudText------- change this to match your notifcation system!! Or simply use the same one. TYPE's will be INFORM / ERROR IF YOU USE DIFFERENT TYPES ITS EASY TO MATCH THEM UP WITH VARIABLES
end

RegisterCommand("removestance", function(source, args)
  if IsPedInAnyVehicle(PlayerPedId()) then
   local veh = GetVehiclePedIsIn(ped,false)
   local plate = wizaPlates(GetVehicleNumberPlateText(veh))
   local model = GetHashKey(GetEntityModel(veh))
   local netid = VehToNet(veh)
   SetVehicleSuspensionHeight(veh, 0.0)
   SetVehicleWheelSize(veh, 0.0)
   SetVehicleWheelWidth(veh, 0.0)
   if plate ~= nil then
    TriggerServerEvent('wizating_stancer:activateDefault', plate, model , netID)
   else 
    wizatingNotifs("attempting to activate default on nil plate failed")
   end
  end
end)