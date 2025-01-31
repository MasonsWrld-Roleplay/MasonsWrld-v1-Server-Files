QBCore = exports['qb-core']:GetCoreObject()

function addSocietyMoney(job, money)
    if Config.SocietyInManagement then
        exports['qb-management']:AddMoney(job, money)
    else
        exports['okokBanking']:AddMoney(job, money)
    end
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else
        copy = orig
    end
    return copy
end