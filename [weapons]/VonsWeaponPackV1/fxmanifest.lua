

fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author '$Von Development'
description 'VonsWeaponPackV1'
version '1.1'

files{
	'metas/**/*.meta'
}

escrow_ignore {
'metas/**/*.meta',  -- Ignores all data files.
'cl_weaponNames.lua',  -- Ignores names.

}

data_file 'WEAPONCOMPONENTSINFO_FILE' 'metas/**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' 'metas/**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'metas/**/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' 'metas/**/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' 'metas/**/weapons.meta'

client_script 'cl_weaponNames.lua'

dependency '/assetpacks'
dependency '/assetpacks'