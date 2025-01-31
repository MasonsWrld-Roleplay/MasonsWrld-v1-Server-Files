

fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
game 'gta5'
lua54 'yes'

description 'Nass Paintball'
author 'Nass#1411'
version '2.0.3'

files { 
  'weapon/dlccustomweaponsounds/custom_weapon_sounds.awc',
	'weapon/data/paintball_game.dat151.rel',
	'weapon/data/paintball_sounds.dat54.rel',
  'weapon/meta/*',
  "html/**",
}

data_file 'DLC_ITYP_REQUEST' 'stream/nass_props.ytyp'
data_file 'AUDIO_WAVEPACK' 'weapon/dlccustomweaponsounds'
data_file 'AUDIO_SOUNDDATA' 'weapon/data/paintball_sounds.dat'
data_file 'AUDIO_GAMEDATA' 'weapon/data/paintball_game.dat'
data_file 'WEAPON_METADATA_FILE' 'weapon/meta/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'weapon/meta/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' 'weapon/meta/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' 'weapon/meta/weapons.meta'

shared_scripts { '@nass_lib/import.lua', 'locale.lua', 'config.lua' }
server_scripts { 'server/*.lua' }
client_scripts { 'client/*.lua' }

ui_page 'html/index.html'

dependencies {
	'nass_lib',
}

escrow_ignore {
  'html/**',
  'weapon/**',
  'client/unlocked.lua',
  'config.lua',
  'locale.lua',
  'stream/nass_paintball_gun.ydr',
  'server/unlocked.lua',
}

dependency '/assetpacks'