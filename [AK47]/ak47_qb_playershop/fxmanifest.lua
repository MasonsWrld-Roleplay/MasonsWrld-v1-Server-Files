

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'adamant'
game 'gta5'
description 'Ak47 Player Shop'
author 'MenanAk47'
version '1.6'

ui_page "nui/index.html"

files {
    "nui/**/*",
}

client_scripts {
    "@ox_lib/init.lua",
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',

    "config.lua",
    "framework/client/*.lua",
    "modules/**/config.lua",

    "locales/locale.lua",
    "locales/en.lua",

    "utils/client.lua",
    "modules/**/client/*.lua",
}

server_scripts {
    "@ox_lib/init.lua",
    "@mysql-async/lib/MySQL.lua",
    "config.lua",
    "framework/server/*.lua",
    "modules/**/config.lua",

    "locales/locale.lua",
    "locales/en.lua",

    "utils/server.lua",
    "modules/**/server/*.lua",
}

escrow_ignore {
    "INSTALL ME FIRST/**/*",
    "locales/*",
    "config.lua",
    "framework/**/*",
    "modules/**/config.lua",
    "modules/**/customizable.lua",
    "utils/*.lua",
}

lua54 'yes'

dependencies {
    'qb-core',
    'PolyZone',
    'ox_lib',
    'qb-target',
}

dependency '/assetpacks'