fx_version { 'cerulean' } games { 'gta5' } lua54 { 'yes' }

name { 'LGMods_MapData' }
author { 'LGMods - https://discord.gg/lgmods' }
this_is_a_map 'yes'

replace_level_meta 'gta5'

files {
    'audio/lgmods_doors_game.dat151.rel',
	'doortuning.ymt',
	'gta5.meta'
}

data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'
data_file 'AUDIO_GAMEDATA' 'audio/lgmods_doors_game.dat'
dependency '/assetpacks'