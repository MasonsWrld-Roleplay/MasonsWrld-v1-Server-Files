

fx_version 'bodacious'
game 'gta5'

description "Wizating Stancer v2.39c Enhanced"

client_scripts {
 'client/functions.lua',
 'client/client.lua',
}

server_scripts {
   "server/functions.lua",
   "server/server.lua",
   "@oxmysql/lib/MySQL.lua",
}

shared_script 'config.lua'

files {
	"html/*.html",
	"html/*.js",
	"html/*.css",
    "html/images/*.png"
}

ui_page "html/index.html"

escrow_ignore {
	'config.lua',
	'VRPMANIFEST/*',
	'QBMANIFEST/*'
}

lua54 'yes'
