Config = {}

Config.useCashAsItem = true
Config.controls = {
    x = {
        fwd = {control = 32, name = "INPUT_MOVE_UP_ONLY"},
        back = {control = 33, name = "INPUT_MOVE_DOWN_ONLY"},
    },
    y = {
        left = {control = 34, name = "INPUT_MOVE_LEFT_ONLY"},
        right = {control = 35, name = "INPUT_MOVE_RIGHT_ONLY"},
    },
    z = {
        up = {control = 52, name = "INPUT_CONTEXT_SECONDARY"},
        down = {control = 51, name = "INPUT_CONTEXT"},
    },
    speed = {
        faster = {control = 21, name = "INPUT_SPRINT"},
        slower = {control = 19, name = "INPUT_CHARACTER_WHEEL"},
    },
    input = {
        undo = {control = 25, name = "INPUT_AIM"},
        select = {control = 24, name = "INPUT_ATTACK"},
        cancel = {control = 194, name = "INPUT_FRONTEND_RRIGHT"},
        rotUp = {control = 17, name = "INPUT_SELECT_PREV_WEAPON"},
        rotDown = {control = 16, name = "INPUT_SELECT_NEXT_WEAPON"},
    },
}