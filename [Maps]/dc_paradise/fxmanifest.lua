fx_version "cerulean"
games { "gta5" }
this_is_a_map "yes"

author 'DC Customz'
description 'DC Customz Paradise'
version '1.0.0'

files {
	'stream/dcstrip_prop.ytyp',
	'stream/vanilla/props/int_club.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/dcstrip_prop.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/vanilla/props/int_club.ytyp'

escrow_ignore {
	'stream/vanilla/props/*.ydr',
	'stream/vanilla/*.ybn',
	'stream/vanilla/*.ytd',
}
dependency '/assetpacks'