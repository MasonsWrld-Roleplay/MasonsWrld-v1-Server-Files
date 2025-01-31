

fx_version 'bodacious'
author 'Spoody'
game 'gta5'
lua54 'yes'

ui_page 'web/web.html'

files {
    'web/img/*.png',
    'web/web.html',
    'web/style.css',
    'web/*.js',
}

shared_scripts  {
    'configuration.lua',
    '@ox_lib/init.lua',
    'configuration.lua',
}

client_scripts {
    'source/client/interactions.lua',
    'source/client/functions.lua',
    'source/client/laptop.lua',
    'source/client/shops.lua',
    'source/client/sell.lua',
}

server_scripts {
    'source/server/*.lua'
}

escrow_ignore {"configuration.lua"}
dependency '/assetpacks'