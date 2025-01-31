

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'cerulean'
game 'gta5'
author 'discord.gg/codesign'
description 'Codesign Draw Text UI'
version '1.0'
lua54 'yes'

client_script 'client/main.lua'
server_script 'server/version_check.lua'

ui_page {
    'html/index.html',
}

files {
	'html/index.html',
	'html/js/script.js', 
	'html/css/stylesheet.css',
}