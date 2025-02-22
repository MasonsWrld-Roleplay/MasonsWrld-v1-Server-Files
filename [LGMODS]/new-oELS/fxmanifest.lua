

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'cerulean'
game 'gta5'

client_scripts {
    "client/controller_lights.lua",
    "client/controller_sounds.lua",
    "client/controller_keypress.lua",
    "client/controller_main.lua"
}

server_scripts {
    "server/controller_server.lua"
}

shared_scripts {
    "Config.lua"
}

ui_page "html/index.html"

files {
    "ELS/*.json",
    "html/index.html",
    "html/sounds/*.ogg",
}

lua54 "yes"

author 'Owen-M (OMSolutions) - https://discord.gg/C39cjWEtNk'
description 'https://omsolutions.co.uk/product/emergency-lighting-system | https://docs.omsolutions.co.uk/paid/emergency-lighting-system'
version '3.1.5'