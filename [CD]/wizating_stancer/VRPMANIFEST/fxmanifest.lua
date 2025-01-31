fx_version 'bodacious'
game 'gta5'

description "Wizating Stancer v2.39c Enhanced"
dependency "vrp"


client_scripts {
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	'client/client.lua',
	'client/functions.lua'
}



server_scripts {
	"@vrp/lib/utils.lua",
	"@mysql-async/lib/MySQL.lua",
   "server/server.lua",
   'server/functions.lua'
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
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	'config.lua'
}

  lua54 'yes'
