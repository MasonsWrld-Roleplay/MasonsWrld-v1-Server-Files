functions = {}

---@param target number playerId
---@param comserve Comserve
function functions.onComserve(target, comserve)
	-- TriggerClientEvent("chat:addMessage", -1, {
	-- 	color = { 255, 0, 0 },
	-- 	args = { "Server", "Player " .. target .. " has been sent on community service" }
	-- })

	local adminName = type(comserve.adminName) == "number" and GetPlayerName(comserve.adminName) or comserve.adminName
	webhook.sendWebhook(ServerConfig.onComserveWebhook, {
		username = "Vertex Scripts - Community Service",
		embeds = {
			{
				color = 0x008ECC,
				title = "Community Service",
				description = "Player " .. target .. " has been sent on community service",
				fields = {
					{ name = "Admin",  value = string.format("%s", adminName),                          inline = true },
					{ name = "Target", value = string.format("%s (%s)", GetPlayerName(target), target), inline = true },
					{ name = "Reason", value = comserve.reason,                                         inline = false },
					{ name = "Tasks",  value = tostring(comserve.tasksGiven),                           inline = false },
				}
			}
		}
	})
end

---@param target number playerId
---@param comserve Comserve
function functions.onComserveEnd(target, comserve)
	-- TriggerClientEvent("chat:addMessage", -1, {
	-- 	color = { 255, 0, 0 },
	-- 	args = { "Server", "Player " .. target .. " has been released from community service" }
	-- })

	local adminName = type(comserve.adminName) == "number" and GetPlayerName(comserve.adminName) or comserve.adminName
	webhook.sendWebhook(ServerConfig.offComserveWebhook, {
		username = "Vertex Scripts - Community Service",
		embeds = {
			{
				color = 0x008ECC,
				title = "Community Service",
				description = "Player " .. target .. " has been released from community service",
				fields = {
					{ name = "Admin",  value = string.format("%s", adminName),                          inline = true },
					{ name = "Target", value = string.format("%s (%s)", GetPlayerName(target), target), inline = true },
					{ name = "Reason", value = comserve.reason,                                         inline = false },
					{ name = "Tasks",  value = tostring(comserve.tasksGiven),                           inline = false },
				}
			}
		}
	})
end
