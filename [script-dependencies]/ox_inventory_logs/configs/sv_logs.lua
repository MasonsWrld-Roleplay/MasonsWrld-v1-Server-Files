webhooks = {
    ['drop'] = 'https://discord.com/api/webhooks/1278594105475072000/GTsQ6sqcWPKM1Go1XTO_dQfZelymrjmSQb6VZFU90okppumIEV1Wo9rp9kncW9sIdmMJ',
    ['pickup'] = 'https://discord.com/api/webhooks/1278594239604850719/cxdmzBccXOtN4BTAaonyr_SkPW99Jc0Y0JF0p1A9pxl9VMvevxsY2-nRXMFO4u6fmv1b',
    ['give'] = 'https://discord.com/api/webhooks/1278594377714761750/wlhVqsvWHlYdRDy-cl0SkJF0iIBfLdYRSY4_ovrIGjT62MvR_MAtSF_3un3MTEKmZQ4o',
    ['stash'] = 'https://discord.com/api/webhooks/1278594491179208734/gDDxWOxKm1EP-KLLrCGG7n2XgwoRuwWNm8AHJOTB-Ln5USeoW7IMsuPx-vHlQfVf8xlP',
}
hooks = {
    ['drop'] = {
        from = 'player',
        to = 'drop',
        callback = function(payload)
            local playerName = GetPlayerName(payload.source)
            local playerIdentifier = GetPlayerIdentifiers(payload.source)[1]
            local playerCoords = GetEntityCoords(GetPlayerPed(payload.source))
            sendWebhook('drop', {
                {
                    title = 'Drop',
                    description = ('Hráč **%s** (%s, %s) **položil** item **%s** x%s (metadata: %s) na souřadnicích %s.')
                        :format(
                            playerName,
                            playerIdentifier,
                            payload.source,
                            payload.fromSlot.name,
                            payload.fromSlot.count,
                            json.encode(payload.fromSlot.metadata),
                            ('%s, %s, %s'):format(playerCoords.x, playerCoords.y, playerCoords.z)
                        ),
                    color = 0x00ff00
                }
            })
        end
    },
    ['pickup'] = {
        from = 'drop',
        to = 'player',
        callback = function(payload)
            local playerName = GetPlayerName(payload.source)
            local playerIdentifier = GetPlayerIdentifiers(payload.source)[1]
            local playerCoords = GetEntityCoords(GetPlayerPed(payload.source))
            sendWebhook('pickup', {
                {
                    title = 'Pickup',
                    description = ('Hráč **%s** (%s, %s) **vzal** item **%s** x%s (metadata: %s) **ze země** na souřadnicích %s.')
                        :format(
                            playerName,
                            playerIdentifier,
                            payload.source,
                            payload.fromSlot.name,
                            payload.fromSlot.count,
                            json.encode(payload.fromSlot.metadata),
                            ('%s, %s, %s'):format(playerCoords.x, playerCoords.y, playerCoords.z)
                        ),
                    color = 0x00ff00
                }
            })
        end
    },
    ['give'] = {
        from = 'player',
        to = 'player',
        callback = function(payload)
            if payload.fromInventory == payload.toInventory then return end
            local playerName = GetPlayerName(payload.source)
            local playerIdentifier = GetPlayerIdentifiers(payload.source)[1]
            local playerCoords = GetEntityCoords(GetPlayerPed(payload.source))
            local targetSource = payload.toInventory
            local targetName = GetPlayerName(targetSource)
            local targetIdentifier = GetPlayerIdentifiers(targetSource)[1]
            local targetCoords = GetEntityCoords(GetPlayerPed(targetSource))
            sendWebhook('give', {
                {
                    title = 'Předání itemů mezi hráči',
                    description = ('Hráč **%s** (%s, %s) **dal** hráči **%s** (%s, %s) item **%s** x%s (metadata: %s) na souřadnicích %s a %s.')
                        :format(
                            playerName,
                            playerIdentifier,
                            payload.source,
                            targetName,
                            targetIdentifier,
                            targetSource,
                            payload.fromSlot.name,
                            payload.fromSlot.count,
                            json.encode(payload.fromSlot.metadata),
                            ('%s, %s, %s'):format(playerCoords.x, playerCoords.y, playerCoords.z),
                            ('%s, %s, %s'):format(targetCoords.x, targetCoords.y, targetCoords.z)
                        ),
                    color = 0x00ff00
                }
            })
        end
    },
    ['stash_pick'] = {
        from = 'player',
        to = 'stash',
        callback = function(payload)
            local playerName = GetPlayerName(payload.source)
            local playerIdentifier = GetPlayerIdentifiers(payload.source)[1]
            local playerCoords = GetEntityCoords(GetPlayerPed(payload.source))
            sendWebhook('stash', {
                {
                    title = 'Sklad',
                    description = ('Hráč **%s** (%s, %s) **dal** item **%s** x%s (metadata: %s) **do skladu %s** na souřadnicích %s.')
                        :format(
                            playerName,
                            playerIdentifier,
                            payload.source,
                            payload.fromSlot.name,
                            payload.fromSlot.count,
                            json.encode(payload.fromSlot.metadata),
                            payload.toInventory,
                            ('%s, %s, %s'):format(playerCoords.x, playerCoords.y, playerCoords.z)
                        ),
                    color = 0x00ff00
                }
            })
        end
    },
    ['stash'] = {
        from = 'stash',
        to = 'player',
        callback = function(payload)
            local playerName = GetPlayerName(payload.source)
            local playerIdentifier = GetPlayerIdentifiers(payload.source)[1]
            local playerCoords = GetEntityCoords(GetPlayerPed(payload.source))
            sendWebhook('stash', {
                {
                    title = 'Sklad',
                    description = ('Hráč **%s** (%s, %s) **vzal** item **%s** x%s (metadata: %s) **ze skladu %s** na souřadnicích %s.')
                        :format(
                            playerName,
                            playerIdentifier,
                            payload.source,
                            payload.fromSlot.name,
                            payload.fromSlot.count,
                            json.encode(payload.fromSlot.metadata),
                            payload.fromInventory,
                            ('%s, %s, %s'):format(playerCoords.x, playerCoords.y, playerCoords.z)
                        ),
                    color = 0x00ff00
                }
            })
        end
    },
}
