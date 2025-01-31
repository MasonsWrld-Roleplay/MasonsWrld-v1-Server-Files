

fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

description 'Realistic wheel damage'
version '1.3.0'

server_scripts {
    'config.lua',
    'server/server.lua',
}

client_scripts {
    'config.lua',
    'client/client.lua',
    'client/editable/editable.lua',
}

escrow_ignore {
    'config.lua',
    'client/editable/*.lua',
}

dependency '/assetpacks'