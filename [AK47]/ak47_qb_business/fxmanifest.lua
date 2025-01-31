

client_script '@ak47/client/native.lua'
server_script '@ak47/server/native.lua'
fx_version 'adamant'
game 'gta5'
author "MenanAk47 (MenanAk47#3129)"
version "2.5"

ui_page "nui/ui.html"

client_scripts {
	"@ox_lib/init.lua",
	"config.lua",
	"shops/*.lua",

	"client/utils.lua",
	"client/main.lua",
	"client/job.lua",
	"client/usable.lua",

	"locales/locale.lua",
	"locales/en.lua",
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"shops/*.lua",

	"server/utils.lua",
	"server/main.lua",
	"server/job.lua",
	"server/usable.lua",
	"server/cmd.lua",

	"locales/locale.lua",
	"locales/en.lua",
}

files {
	"nui/**/*",
}

escrow_ignore {
    "config.lua",
    "shops/*.lua",
    "locales/*.lua",
    "server/utils.lua",
    "server/usable.lua",
    "server/cmd.lua",
    "client/utils.lua",
    "client/usable.lua",
    'INSTALL ME FIRST/**/*',
}

lua54 'yes'

dependencies {
	'qb-core',
	'qb-management',
	'ox_lib',
}
dependency '/assetpacks'