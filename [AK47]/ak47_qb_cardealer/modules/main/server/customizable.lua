AddEventHandler('ak47_qb_cardealer:onpurchase', function(xPlayer, data, prop)
    if prop then
        prop.plate = data.plate
    end
    MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
        xPlayer.PlayerData.license,
        xPlayer.PlayerData.citizenid,
        data.model,
        GetHashKey(data.model),
        prop and json.encode(prop) or json.encode({model = GetHashKey(data.model), plate = data.plate}),
        data.plate,
        'pillboxgarage',
        0
    })
end)