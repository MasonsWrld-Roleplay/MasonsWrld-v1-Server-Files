Config.AuthorTitle   = 'Ak47 Cardealer'
Config.AvatarUrl     = 'https://cdn.discordapp.com/attachments/1249858949826613349/1251032503364620288/3442-car-13.png?ex=666d1a4f&is=666bc8cf&hm=8fd6d3c0b4486c6c205bd1e7c1bf939c905e5b24b53ae56976cec37dd05702c4&'
Config.Webhooks = {
    purchase = {
        Webhook     = 'https://discord.com/api/webhooks/1274215808398004224/5Tk5hn1kSYpoLOPz5QRWQ5FNBZ_811Omt8XJBTV8uorHeBaBsa8YV7i8lLYTLKrQcaW3', --Discord webhook link
        Title       = "A new vehicle has been purchased",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
            cash        = "**Cash: **",
            bank        = "**Bank: **",
            vip         = "**VIP: **",

        },
        VehicleData = {
            field       = "Vehicle Data:",
            plate       = "**Plate: **",
            name        = "**Name: **",
            model       = "**Model: **",
            category    = "**Category: **",
            price       = "**Price: **",
            dealer      = "**Dealer: **",
        },
    },
    finance = {
        Webhook     = 'https://discord.com/api/webhooks/1251035675185119293/CZ7N01geX0EmGFD2KgAGZgSw12DphUotyR5ZgTuM6iuJ1OM1ZogMYuCL2Jru2sykPrIJ', --Discord webhook link
        Title       = "A new vehicle has been financed",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
            cash        = "**Cash: **",
            bank        = "**Bank: **",
            vip         = "**VIP: **",

        },
        VehicleData = {
            field       = "Vehicle Data:",
            plate       = "**Plate: **",
            name        = "**Name: **",
            model       = "**Model: **",
            category    = "**Category: **",
            dealer      = "**Dealer: **",
            downpayment = "**Down Payment: **",
            intrate     = "**Interest Rate: **",
            weekpay     = "**Weekly Pay: **",
            installments = "**Installments: **",
        },
    },
}