--██╗      █████╗ ███╗   ██╗ ██████╗ ██╗   ██╗ █████╗  ██████╗ ███████╗
--██║     ██╔══██╗████╗  ██║██╔════╝ ██║   ██║██╔══██╗██╔════╝ ██╔════╝
--██║     ███████║██╔██╗ ██║██║  ███╗██║   ██║███████║██║  ███╗█████╗  
--██║     ██╔══██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██║   ██║██╔══╝  
--███████╗██║  ██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║╚██████╔╝███████╗
--╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝

local Translations = {
    --[[ General ]]--
    error = {
        someone_sitting_here = 'There is someone sitting here!',
        missing_ingredients = 'You don\'t have all the ingredients',
        cancelled = 'You changed your mind',
        no_money = 'You don\'t have enough money',
    },
    warning = {
    },
    info = {
        player_id = 'ID of Player',
        alreadyplaying = 'Music is already playing',
    },
    success = {
    },
    --[[ Commands ]]--
    commands = {
    },
    --[[ Menu ]]--
    menu = {
        bartending = 'Bartending',
        bartendingicon = 'fas fa-cocktail',
        ingredients = 'Ingredients',
        ingredientsicon = 'fas fa-martini-glass-citrus',
        freezer = 'Freezer',
        freezericon = 'fas fa-cubes',
        djbooth = 'DJ Booth',
        djboothicon = 'fas fa-record-vinyl',
        songselection = 'Song Selection',
        youtubeurl = 'Youtube URL',
        musicvolume = 'Music Volume',
        submit = 'Submit',
        play = 'Play Song',
        playicon = 'fas fa-music',
        pause = 'Pause Music',
        pauseicon = 'fas fa-pause',
        resume = 'Resume Music',
        resumeicon = 'fas fa-play',
        volume = 'Change Volume',
        volumeicon = 'fas fa-volume-up',
        stop = 'Turn off music',
        stopicon = 'fas fa-stop',
        exit = 'Return',
        exiticon = 'fas fa-circle-arrow-left',
        wardrobe = 'Wardrobe',
        wardrobeicon = 'fas fa-shirt',
        buyuniform = 'Buy Uniform',
        buyuniformtext = 'Open our builtin store',
        buyuniformicon = 'fas fa-tags',
        changeuniform = 'Change Uniform',
        changeuniformtext = 'Open your wardrobe',
        changeuniformicon = 'fas fa-shirt',
        personallocker = 'Personal Locker',
        personallockertext = 'Your personal locker',
        personallockericon = 'fas fa-lock',
    },
    --[[ Input ]]--

    --[[ Progressbar ]]--
    progressbar = {
        poledancing = 'Pole dancing...',
        makingdrink = 'Making drink...',
    },
    
    --[[ Functions ]]--
    functions = {
        clothing = 'Press ~INPUT_CONTEXT~ to open shop menu',
    },

    --[[ Targets ]]--
    target = {
        sit = 'Sit',
        siticon = 'fas fa-chair',
        bartending = 'Bartending',
        bartendingicon = 'fas fa-cocktail',
        bossmenu = 'Boss Menu',
        bossmenuicon = 'fas fa-chart-simple',
        toggleduty = 'Change Duty Status',
        toggledutyicon = 'fas fa-clipboard',
        wardrobe = 'Wardrobe',
        wardrobeicon = 'fas fa-shirt',
        pole = 'Use Pole',
        poleicon = 'fas fa-grip-lines-vertical',
        storage = 'Storage',
        storageicon = 'fas fa-box',
        ingredients = 'Ingredients',
        ingredientsicon = 'fas fa-temperature-low',
        freezer = 'Freezer',
        freezericon = 'fas fa-cubes',
        djbooth = 'DJ Booth',
        djboothicon = 'fas fa-record-vinyl',
        cashregister = 'Cash Register',
        cashregistericon = 'fas fa-cash-register',
        table = 'Table',
        tableicon = 'fas fa-tablet',
        tray = 'Tray',
        trayicon = 'fas fa-tablet',
    },
    --[[ Other ]]--
    other = {
        storage = ' | Storage',
        personalstash = 'Personal Stash',
        requirements = 'Requirements:',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})