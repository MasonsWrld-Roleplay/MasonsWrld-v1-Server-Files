Config = {
    typingGame = {
        difficulty = {
            ['easy'] = 6,
            ['normal'] = 12,
            ['hard'] = 18,
        },
        duration = 20,
        initialSequences = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        }
    },
    timedLockpick = {
        speed = 600,
    },
    timedAction = {
        unlockCount = 3,
    },
    quickEvent = {
        difficulty = {
            ['easy'] = 1,
            ['normal'] = 3,
            ['hard'] = 5,
        },
        duration = 1,
        sequences = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
        },
    },
    combinationLock = {
        difficulty = {
            ['easy'] = 1,
            ['normal'] = 3,
            ['hard'] = 5,
        },
        range = { 1, 360 },
    },
    buttonMashing = {
        decayRate = 5,
        incrementRate = 10,
    },
    angledLockpick = {
        difficulty = {
            ['easy'] = 1,
            ['normal'] = 3,
            ['hard'] = 5,
        },
        range = { 1, 360 },
    },
    fingerPrint = {
        time = 200,
        live = 3,
    },
    hotwire = {
        time = 3,
    },
    hackerMinigame = {
        upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
        lowerCase = "abcdefghijklmnopqrstuvwxyz",
        numbers = "0123456789",
        lenght = 3,
        live = 3,
    },
    safeCrack = {
        difficulty = {
            ['easy'] = 1,
            ['normal'] = 3,
            ['hard'] = 5,
        },
    }
}

Strings = {
    ['safecrack'] = '~INPUT_FRONTEND_LEFT~ ~INPUT_FRONTEND_RIGHT~ Rotate\n~INPUT_FRONTEND_RDOWN~ Check',
    ["hackerminigame"] = '>. Crack this password: %s (%s attempts left)'
}
