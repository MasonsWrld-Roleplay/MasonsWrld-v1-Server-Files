

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'vames™️'
description 'vms_barber'
version '1.1.6'

shared_scripts {
	'config.lua',
	'config.translation.lua',
}

client_scripts {
	'client/*.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua', -- this is only required for qb-core
	'server/*.lua',
}

ui_page 'html/ui.html'

files {
	'html/*.*',
	'translation.js'
}

escrow_ignore {
	'GABZ-INTERIORS.lua',
	'config.lua',
	'config.translation.lua',
	'server/version_check.lua',
}
dependency '/assetpacks'