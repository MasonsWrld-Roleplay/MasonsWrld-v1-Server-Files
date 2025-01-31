local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('sw-galaxy:shared:startEmote', function(emote)
	if Config.Animations == 'rpemotes' then
		TriggerEvent('animations:client:EmoteCommandStart', {emote})
	end
end)

RegisterNetEvent('sw-galaxy:shared:cancelEmote', function()
	if Config.Animations == 'rpemotes' then
		exports['rpemotes']:EmoteCancel()
	end
end)

RegisterNetEvent('sw-galaxy:shared:setPlayerInAnimation', function()
	if Config.Animations == 'rpemotes' then
		exports['rpemotes']:IsPlayerInAnim(true)
	end
end)

RegisterNetEvent('sw-galaxy:shared:startSkillbar', function(data)
	if Config.Skillbar == 'none' then
		TriggerEvent('sw-galaxy:client:finishSkillbar', data, 1)
	elseif Config.Skillbar == 'ps-ui' then
		exports['ps-ui']:Circle(function(success)
			if success then
				TriggerEvent('sw-galaxy:client:finishSkillbar', data, 1)
			else
				TriggerEvent('sw-galaxy:client:finishSkillbar', data)
			end
		end, 4, 10) -- NumberOfCircles, MS
	elseif Config.Skillbar == 'ox' then
		local success = lib.skillCheck({'easy', 'easy', 'easy'}, {'w', 'a', 's', 'd'})
		if success then
			TriggerEvent('sw-galaxy:client:finishSkillbar', data, 1)
		else
			TriggerEvent('sw-galaxy:client:finishSkillbar', data)
		end
	elseif Config.Skillbar == 'qb' then
		local success = exports['qb-minigames']:Skillbar()
		if success then
			TriggerEvent('sw-galaxy:client:finishSkillbar', data, 1)
		else
			TriggerEvent('sw-galaxy:client:finishSkillbar', data)
		end
	end
end)

RegisterNetEvent('sw-galaxy:shared:displayMenu', function(itemName, item)
	exports['ps-ui']:ShowImage(Config.Locations[Config.Interior].Menus[item].imageLink)
end)

RegisterNetEvent('sw-galaxy:shared:openStash', function(stashName, maxweight, slots)
	if Config.Stashes == 'qb' then
		TriggerServerEvent('sw-galaxy:server:openInventory', stashName, maxweight, slots)
	else
		TriggerServerEvent('inventory:server:OpenInventory', 'stash', stashName, { maxweight = maxweight, slots = slots })
		TriggerEvent('inventory:client:SetCurrentStash', stashName)
	end
end)