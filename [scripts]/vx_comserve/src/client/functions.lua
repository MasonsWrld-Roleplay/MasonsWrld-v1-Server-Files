functions = {}

function functions.showTextUI(text)
	if lib.isTextUIOpen() then
		return
	end

	lib.showTextUI(text)
end

function functions.hideTextUI()
	if not lib.isTextUIOpen() then
		return
	end

	lib.hideTextUI()
end

-- Only used if Config.useAuthority is true
function functions.createGlobalPlayerTarget()
	if not Config.useAuthority then
		return
	end

	exports.ox_target:addGlobalPlayer({
		label = locale("give_comserve"),
		icon = "fas fa-broom",
		distance = 2.5,
		groups = Config.authorizedJobs,
		onSelect = function(data)
			local entity = data.entity
			local player = NetworkGetPlayerIndexFromPed(entity)
			local target = GetPlayerServerId(player)

			local input = lib.inputDialog("Taakstraf", {
				{
					type = "input",
					label = "Reden",
					description = "Reden voor taakstraf",
					required = true
				},
				{
					type = "number",
					label = "Taken",
					description = "Hoeveelheid taken",
					required = true,
					min = 0
				}
			})

			if input == nil then
				return
			end

			local reason = input[1] or "No reason."
			local tasks = input[2] or 1

			lib.callback.await("cfx_comserve:setComserve", false, target, reason, tasks)
		end
	})
end
