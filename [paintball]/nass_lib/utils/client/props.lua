nass.createdProps = {}

function nass.createProp(options, resourceName)
    if not options.model then return false end
    if not options.coords then return false end
    
    local networked = false
    if options.networked then
        networked = true
    end
    local model = options.model
	nass.loadModel(model)
    

    if not model then return false end
    local newProp = CreateObjectNoOffset(joaat(model), options.coords.x, options.coords.y, options.coords.z - 1, options.coords.w, networked, true)
    if not newProp then return false end
    
    if options.coords.w then
        SetEntityHeading(newProp, options.coords.w)
    end

    if options.frozen then
		FreezeEntityPosition(newProp, true)
	end

	if options.invincible then
		SetEntityInvincible(newProp, true)
	end

    local resource = GetInvokingResource() and GetInvokingResource() or resourceName
    if resource ~= nil then
        if not nass.createdProps[resource] then
            nass.createdProps[resource] = {}
        end
        nass.createdProps[resource][newProp] = newProp
    end
    return newProp
end


function nass.removeAllSpawnedProps(resourceName)
    if nass.createdProps[resourceName] then 
		for k, v in pairs(nass.createdProps[resourceName]) do
			nass.removeProp(k, resourceName)
		end
        nass.createdProps[resourceName] = {}
	end
end
AddEventHandler('onResourceStop', nass.removeAllSpawnedProps)

function nass.removeProp(prop, resourceName)
    DeleteObject(prop)
    nass.createdProps[resourceName][prop] = nil
end

function nass.createPropAtPoint(options, resourceName)
    local resource = GetInvokingResource() and GetInvokingResource() or resourceName
    local point = nass.points.new({
        resource = resource,
        coords = options.coords,
        distance = options.distance or 50.0,
        onEnter = function()
            if not options.propId or not DoesEntityExist(nass.createdProps[resource][options.propId]) then
                options.propId = nass.createProp(options, resource)
            end
        end,
        onExit = function()
            nass.removeProp(options.propId, resource)
        end,
    })
    return point
end

