

fx_version 'adamant'

game 'gta5'

description 'RTX CARRY'

version '20.0'

server_scripts {
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'language/main.lua',
	'client/other.lua',
	'client/main.lua'
}

files {
	'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/BebasNeueBold.ttf',
	'html/img/*.png'
}

ui_page 'html/ui.html'

exports {
	'IsPlayerCarried', -- exports["rtx_carry"]:IsPlayerCarried()  Through this export you can check if the player is carried
	'IsPlayerCarrySomeone', -- exports["rtx_carry"]:IsPlayerCarrySomeone()  Through this export you can check if the player carry someone
}

lua54 'yes'

escrow_ignore {
  'config.lua',
  'language/main.lua'
}
dependency '/assetpacks'