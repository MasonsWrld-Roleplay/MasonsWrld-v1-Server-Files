

fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
game 'gta5'
lua54 'yes'

description 'Nass lib'
author 'Nass#1411'
version '1.3.0'

shared_scripts { 'config.lua', 'utils/shared.lua', }

client_scripts {    
  '@ox_lib/init.lua', 
  'utils/client/*.lua',
  'framework/**/client.lua',
  'inventories/**/client.lua',
  'target/*.lua',
}

server_scripts {
  'utils/server/*.lua',
  'framework/**/server.lua',
  'inventories/**/server.lua',
}

escrow_ignore {
  'config.lua',
  'framework/**',
  'target/**',
  'utils/**',
  'inventories/**',
}

files {'import.lua' }

dependencies {
	'ox_lib',
}
dependency '/assetpacks'