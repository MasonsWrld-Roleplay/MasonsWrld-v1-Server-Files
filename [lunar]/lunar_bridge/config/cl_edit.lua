function ShowNotification(message, notifyType)
    lib.notify({
        description = message,
        type = notifyType,
        position = 'top-right'
    })
end

function ShowUI(text, icon)
    if icon == 0 then
        lib.showTextUI(text)
    else
        lib.showTextUI(text, {
            icon = icon
        })
    end
end

function HideUI()
    lib.hideTextUI()
end

function ShowProgressBar(text, duration, canCancel, anim, prop)
    return lib.progressBar({
        duration = duration,
        label = text,
        useWhileDead = false,
        canCancel = canCancel,
        disable = {
            car = true,
            move = true,
            combat = true
        },
        anim = anim,
        prop = prop
    })
end

function IsProgressActive()
    return lib.progressActive()
end

function CancelProgress()
    lib.cancelProgress()
end

---@param title string
---@param content string
function ShowObjective(title, content)
    SendNUIMessage({
        action = 'show_objective',
        title = title,
        content = content
    })
end

function HideObjective()
    SendNUIMessage({
        action = 'hide_objective'
    })
end

---@param data { label: string, icon: string, percentage: number, color: string }[]
function ShowBars(data)
    SendNUIMessage({
        action = 'show_bars',
        bars = data
    })
end

function HideBars()
    SendNUIMessage({
        action = 'hide_bars'
    })
end

exports('showObjective', ShowObjective)
exports('hideObjective', HideObjective)