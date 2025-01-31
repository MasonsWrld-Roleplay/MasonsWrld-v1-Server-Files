fx_version { 'cerulean' } games { 'gta5' } lua54 { 'yes' }

name { 'LGMods_SinnerStreet' }
author { 'LGMods - https://discord.gg/lgmods' }
scripter { 'OMSolutions - https://discord.gg/C39cjWEtNk' }
version ( 'v2.1.0' )
this_is_a_map 'yes'

ui_page "html/index.html"

client_script { 'client/*.lua' }

shared_scripts { 'Config.lua' }

server_scripts { 'Server.lua' }

--shared_script '@es_extended/imports.lua'


files {
    'stream/*.ytyp',
    "html/index.html",
    "html/sounds/*.ogg"
}

data_file 'DLC_ITYP_REQUEST' 'stream/lgmods_sinnerstreetprops.ytyp'

escrow_ignore { 'Config.lua', 'stream/*.ytd' };
dependency '/assetpacks'