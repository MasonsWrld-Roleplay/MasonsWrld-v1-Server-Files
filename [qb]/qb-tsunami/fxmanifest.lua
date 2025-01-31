

---@diagnostic disable: undefined-global

fx_version 'cerulean'
game 'gta5'

description 'QB Tsunami'
name 'qb-tsunami'
developer 'ActuallyStrez, Sky, Tofu, QBCore'
version 'V3.5'
lua54 'yes'


shared_scripts {
    '@ox_lib/init.lua'
}


client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

escrow_ignore {
    'client/main.lua',
    'server/main.lua',
}