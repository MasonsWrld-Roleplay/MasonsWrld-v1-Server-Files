

client_script '@ak47/client/native.lua'
server_script '@ak47/server/native.lua'
fx_version 'adamant'
game 'gta5'
description 'Ak47 Cardealer'
author 'MenanAk47'
version '3.5'

ui_page "nui/index.html"

client_scripts {
    "@ox_lib/init.lua",
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    
    "config.lua",
    "modules/**/config.lua",

    "locales/locale.lua",
    "locales/en.lua",

    "utils/client.lua",
    "modules/**/client/*.lua",
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "config.lua",
    "modules/**/config.lua",

    "locales/locale.lua",
    "locales/en.lua",

    "utils/server.lua",
    "modules/**/server/*.lua",
    "webhooks.lua",
}

files {
    "nui/**/*",
}

escrow_ignore {
    "INSTALL ME FIRST/**/*",
    "config.lua",
    "modules/**/config.lua",
    "modules/**/customizable.lua",
    "locales/*.lua",
    "modules/realestate/**/*",
    "modules/inventory/**/*",
    "modules/wardrobe/**/*",
    "modules/weather/**/*",
    "webhooks.lua",
    "utils/*",
}

lua54 'yes'

dependencies {
    'PolyZone',
    'qb-core',
    'qb-management',
    'ox_lib',
    'qb-target',
}

dependency '/assetpacks'