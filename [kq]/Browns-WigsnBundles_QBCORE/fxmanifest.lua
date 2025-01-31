

fx_version 'bodacious'
game 'gta5'
lua54 'yes'

author 'Brown Development'
description 'Browns Wigs N Bundles [QBCore]'


data_file 'DLC_ITYP_REQUEST' 'stream/murm_decor_pack.ytyp'

files {
    'stream/*.ydr',
    'stream/*.ytd',
    'stream/*.ytyp'
}

client_scripts {
    'client/blipsHandler_cl.lua',
    'client/cmdHandler_cl.lua',
    'client/dealerHandler_cl.lua',
    'client/missionHandler_cl.lua',
    'client/oxShopsHandler_cl.lua',
    'client/pbHandler_cl.lua',
    'client/propHandler_cl.lua',
    'configurable/notify.lua',
    'client/qbmHandler_cl.lua',
    'client/qbShopHandler_cl.lua',
    'client/targetHandler_cl.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/cmdHandler_sv.lua',
    'server/craftHandler_sv.lua',
    'server/dealerHandler_sv.lua',
    'server/missionHandler_sv.lua',
    'server/oxShopsHandler_sv.lua',
    'server/propHandler_sv.lua'
}

escrow_ignore {
    'configurable/config.lua',
    'configurable/notify.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'configurable/config.lua',
    'shared/globalHandler_sh.lua'
}

dependencies {
    'qb-core',
    'oxmysql',
    'qb-target',
    'qb-interior',
    'qb-menu'
}
dependency '/assetpacks'