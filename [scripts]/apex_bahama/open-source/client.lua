-- █████╗ ██████╗ ███████╗██╗  ██╗    ███████╗████████╗██╗   ██╗██████╗ ██╗ ██████╗ ███████╗
--██╔══██╗██╔══██╗██╔════╝╚██╗██╔╝    ██╔════╝╚══██╔══╝██║   ██║██╔══██╗██║██╔═══██╗██╔════╝
--███████║██████╔╝█████╗   ╚███╔╝     ███████╗   ██║   ██║   ██║██║  ██║██║██║   ██║███████╗
--██╔══██║██╔═══╝ ██╔══╝   ██╔██╗     ╚════██║   ██║   ██║   ██║██║  ██║██║██║   ██║╚════██║
--██║  ██║██║     ███████╗██╔╝ ██╗    ███████║   ██║   ╚██████╔╝██████╔╝██║╚██████╔╝███████║
--╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══════╝

----------------------------------------------------------------------------------------------------

local Apex = exports['apex_lib']:GetApexObject()
---------------------------------------


-- Inventory functions --
function OpenShop(invType, id, label, slots, weight, owner)
    Apex.Functions.OpenShop(invType, id, label, slots, weight, owner)
    -- If we do not support your current Inventory system. Comment out the line above by adding (--) in front of it
    -- and then add your own trigger below.
    -- Examples:
    -- TriggerServerEvent('inventory:server:OpenInventory', 'stash', id, {maxweight = weight, slots = slots})
end
function OpenInventory(invType, id, label, slots, weight)
    Apex.Functions.OpenInventory(invType, id, label, slots, weight)
    -- If we do not support your current Inventory system. Comment out the line above by adding (--) in front of it
    -- and then add your own trigger below.
    -- Examples:
    -- TriggerServerEvent('inventory:server:OpenInventory', 'type', id)
end

---------------------------------------


-- Notification functions --
function Notifications(message, time, type)
    Apex.Functions.Notify(message, time, type)
    -- If we do not support your current Notification system. Comment out the line above by adding (--) in front of it
    -- and then add your own trigger below.
    -- Examples:
    -- exports['NotificationScript']:Alert("", message, time, type)
    -- TriggerEvent('NotificationScript:sendnotification', message, time, type)
end
---------------------------------------


-- Billing functions --
function OpenBilling()
    Apex.Functions.OpenBilling()
    -- If we do not support your current billing system. Comment out the line above by adding (--) in front of it
    -- and then add your own trigger below.
    -- Examples:
    -- TriggerEvent('my_billing:open')
end
---------------------------------------


-- Fuel functions --
function GetFuel(vehicle, plate)
    Apex.Functions.GetFuel(vehicle, plate)
    -- If we do not support your current Fuel system. Comment out the line above by adding (--) in front of it
    -- and then add your own mdt trigger below.
    -- Example:
    -- exports['fuel-name']:GetFuel(vehicle)
end
function SetFuel(vehicle, plate, fuel_level)
    Apex.Functions.SetFuel(vehicle, plate, fuel_level)
    -- If we do not support your current Fuel system. Comment out the line above by adding (--) in front of it
    -- and then add your own mdt trigger below.
    -- Example:
    -- exports['fuel-name']:SetFuel(vehicle, fuel_level)
end
---------------------------------------