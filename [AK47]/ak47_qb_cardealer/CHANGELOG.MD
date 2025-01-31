## v1.6
    -Admin notification added
## v1.7
    -admin permission check fixed
    -Buy from catalog fixed
    -Test drive from catalog fixed
## v1.8
    -alternative way to set admin
## v1.9
    -special coin support
## v2.0
    -minimap blip fixed
## v2.1
    -minor bug fixed
## v2.2
    -Add different blip for different dealership
## v2.3
    -Plate inside properties fixed
## v2.4
    -Swap display vehicle sync fixed
## v2.5
    -Boss can manage VIP fixed
## v2.6
    -test drive vehicle key fixed
## v2.7
    -display swap error fixed
    -wrong model purchase from display fixed
    -wrong vehicle swap fixed
## v2.8
    -wrong display model due to lazy load fixed
## v2.9
    -display zone size increased
## v2.9.1
    -management export error fixed
    Replace:
        => modules/main/server/main.lua
        => utils/server.lua
## v2.9.2
    -old qb-management support added
    Replace:
        => utils/server.lua
## v2.9.3
    -delete dealer permission chek fixed
    Replace:
        => modules/creation/server/creation.lua
## v3.0
    -finance added
    Replace:
        => webhooks.lua
        => locales/en.lua
        => modules/_init/server/init.lua
        => modules/display/client/display.lua
        => modules/display/server/display.lua
        => modules/main/server/main.lua
    Add:
        => modules/finance
    Import:
        => update from v2.9 ot 3.0.sql
## v3.1
    -gksphone support added
    Replace:
        => modules/finance/server/customizable.lua
## v3.2
    -ak47_qb_vehiclekeys support added
    Replace:  
        => modules/main/client/customizable.lua
## v3.3
    -better rotations on /adddisplay
    Replace:  
        => modules/creation/client/creation.lua
## v3.4
    -releasing model after vehicle spawn to fix crash issue on catalog
## v3.5
    -admin checker adjustment
    Replace:
        => config.lua
        => modules/init/server/init.lua
        => modules/creation/server/creation.lua