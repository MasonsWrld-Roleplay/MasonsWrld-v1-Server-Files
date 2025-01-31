local hookId = exports.ox_inventory:registerHook('swapItems', function(payload)
    print(json.encode(payload, { indent = true }))

    if payload.fromType == "player" and payload.toType == "player" then
        return false
    else
        return true
    end
end, {
    print = true,
    itemFilter = {
        WEAPON_M82V2 = true, -- HERE U JUST PUT SOME ITEMS
    },
})