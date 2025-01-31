

fx_version "cerulean"
game "gta5"
lua54 "yes"

author "Vertex Scripts"
version "1.1.2"

ui_page "web/dist/index.html"

server_scripts {
	"config.server.lua",
	"src/server/webhook.lua",
	"src/server/functions.lua",
	"src/server/database.lua",
	"src/server/main.lua"
}

client_scripts {
	"src/client/utils.lua",
	"src/client/functions.lua",
	"src/client/nui.lua",
	"src/client/main.lua"
}

shared_scripts {
	"@ox_lib/init.lua",
	"@vx_lib/init.lua",
	"config.lua"
}

files {
	"locales/*",
	"web/dist/index.html",
	"web/dist/**/*"
}

escrow_ignore {
	"src/server/functions.lua",
	"src/client/functions.lua",
	"locales/*",
	"config.lua",
	"config.server.lua",
	"web/**/*",
	"types.lua"
}

dependency '/assetpacks'