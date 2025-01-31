fx_version 'bodacious'
game 'gta5'

description "Wizating Laptop v2.82"

client_scripts {
	'client/client.lua',
	'client/functions.lua'
}

server_scripts {
   "server/server.lua",
   "server/functions.lua",
   "@mysql-async/lib/MySQL.lua" -- If using qb with oxmysql replace with "@oxmysql/lib/MySQL.lua"
}

shared_script 'config.lua'

files {
	"html/*.html",
	"html/*.js",
	"html/*.css",
    "html/*.png"
}

ui_page "html/index.html"

escrow_ignore {
	'config.lua',
	'server/functions.lua',
	'client/functions.lua'
}

  lua54 'yes'
