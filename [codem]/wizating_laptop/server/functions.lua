ESX = nil 
QBCore = nil
Tunnel = ""
Proxy = ""
vRP = ""

vRPclient = ""
vRPpc = {}
vRPpcC = ""


------------------------------------------
------------------------------------------
-- ALL BELOW ARE EXAMPLES ONLY
-- ADD YOUR OWN LUA OR EDIT WHAT IS HERE
-- DELETE WHAT YOU DO NOT NEED
-- KEEP THE FUNCTIONS FOR REFERENCE
------------------------------------------
------------------------------------------

if Config.useESX then
  ESX = exports['es_extended']:getSharedObject()
elseif Config.useQB then
  QBCore = exports[Config.qbObject]:GetCoreObject()
elseif Config.useVRP then
  Tunnel = module("vrp", "lib/Tunnel")
  Proxy = module("vrp", "lib/Proxy")
  vRP = Proxy.getInterface("vRP")
  vRPclient = Tunnel.getInterface("vRP","wizating_laptop")
  vRPpc = {}
  Tunnel.bindInterface("wizating_laptop",vRPpc)
  Proxy.addInterface("wizating_laptop",vRPpc)
  vRPpcC = Tunnel.getInterface("wizating_laptop","wizating_laptop")
end

wizatingNotifs = function(source,type,message) --- DONT RENAME THIS FUNCTION
    TriggerClientEvent('mythic_notify:client:SendAlert', source , { type = type , text = message}) --exports['mythic_notify']:DoHudText------- change this to match your notifcation system!! Or simply use the same one. TYPE's will be INFORM / ERROR IF YOU USE DIFFERENT TYPES ITS EASY TO MATCH THEM UP WITH VARIABLES
end


if Config.useESXitem then
    ESX.RegisterUsableItem(Config.ItemName, function(source)
          TriggerClientEvent('wizating_laptop:laptopOpen', source)
    end)
    
   ESX.RegisterServerCallback('wizating_laptop:hasitem', function(source, cb)
    local _source = source
    local sourceXPlayer = ESX.GetPlayerFromId(_source)
    local amount = 1
    local sourceItem = sourceXPlayer.getInventoryItem(Config.ItemName)
    if sourceItem.count >= amount then
      cb(true)
    else
      cb(false)
    end
   end)
elseif Config.useQBitem then
    QBCore.Functions.CreateUseableItem(Config.ItemName, function(source, item)
      local Player = QBCore.Functions.GetPlayer(source)
      if Player.Functions.GetItemByName(item.name) ~= nil then
        TriggerClientEvent('wizating_laptop:laptopOpen', source)
      end
    end)

elseif Config.useVRP then
    RegisterServerEvent('wizating_laptop:vrpOpenCheck')
    AddEventHandler('wizating_laptop:vrpOpenCheck', function()
      thePlayer = source
        ide = vRP.getUserId({thePlayer})
      if Config.restrictToVRPJob then
        if vRP.hasGroup({ide,Config.JobRole}) then
          TriggerClientEvent('wizating_laptop:vrpSetJob', source, Config.JobRole)
        else
          local jobrole = Config.JobRole
          wizatingNotifs('inform','You need to be a '..jobrole..' to use the laptop!')
        end
      end
  
      if Config.useVRPitem then
        if vRP.getInventoryItemAmount({ide,"Tuner Laptop"}) >= 1 then
         TriggerClientEvent('wizating_laptop:vrpOpen', source)
        else
          wizatingNotifs('error', 'You do not have the required item to use this!')
        end 
      else
        TriggerClientEvent('wizating_laptop:vrpOpen', source)
      end
  
    end)
end