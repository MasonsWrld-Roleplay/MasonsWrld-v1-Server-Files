-- Credits to es_extended
local RequestId = 0
local serverRequests = {}
local clientCallbacks = {}
local lastCallbackTimes = {}
local rateLimit = 500 -- Rate limit in milliseconds (1 second)

function nass.triggerCallback(eventName, callback, ...)
    local currentTime = GetGameTimer()
    local resource = GetInvokingResource() or "unknown"

    -- Initialize the last callback time if not set
    if not lastCallbackTimes[resource] then
        lastCallbackTimes[resource] = {}
    end

    -- Check the rate limit for the specific event
    if not lastCallbackTimes[resource][eventName] then
        lastCallbackTimes[resource][eventName] = 0
    end

    if currentTime - lastCallbackTimes[resource][eventName] < rateLimit then
        return print(("[^1ERROR^7] Rate limit exceeded for ^5%s^7, resource: ^5%s^7. ^5%s^7 milliseconds since last callback"):format(eventName, resource, currentTime - lastCallbackTimes[resource][eventName]))
    end

    lastCallbackTimes[resource][eventName] = currentTime

    serverRequests[RequestId] = callback
    TriggerServerEvent("nass:triggerServerCallback", eventName, RequestId, resource, ...)
    RequestId = RequestId + 1
end

RegisterNetEvent("nass:serverCallback", function(requestId, invoker, ...)
    if not serverRequests[requestId] then
        return print(("[^1ERROR CODE 871^7] Server Callback was called by ^5%s^7 but does not exist."):format(invoker))
    end

    serverRequests[requestId](...)
    serverRequests[requestId] = nil
end)

function nass.createClientCallback(eventName, callback)
    clientCallbacks[eventName] = callback
end

RegisterNetEvent("nass:triggerClientCallback", function(eventName, requestId, invoker, ...)
    if not clientCallbacks[eventName] then
        return print(("[^1ERROR CODE 872^7] Server Callback was called by ^5%s^7 but does not exist."):format(invoker))
    end

    clientCallbacks[eventName](function(...)
        TriggerServerEvent("nass:clientCallback", requestId, invoker, ...)
    end, ...)
end)