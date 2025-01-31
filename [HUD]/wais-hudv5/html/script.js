$('body, .settings-menu, .interactive-notification, .car-hud, .ammo').hide();
// body, 
/////////////////////////////////////////////////////////////////////////////////////////
// VARIABLES'S //
/////////////////////////////////////////////////////////////////////////////////////////

let cooldown = false;
let editorMode = false;

let playerInCar = false;
let beltstates = false;
let beltState = false;
let hideAmmos = false;
let micSet = false;
let belt_ignore = false;

let notifId = 0;
let interactiveId = 0;
let ininteractive = false;

let hideLastGear = false;
let hideHightGear = false;

let sounds = {
    belt_plug: null,
    belt_unplug: null,
    belt_alarm: null,
};

let alarm = false;

let hud_type      = localStorage.getItem('hudtype')      ? localStorage.getItem('hudtype')      : localStorage.setItem('hudtype', "squared")   ? localStorage.getItem('hudtype')      : localStorage.getItem('hudtype');
let map_type      = localStorage.getItem('maptype')      ? localStorage.getItem('maptype')      : localStorage.setItem('maptype', "squared")   ? localStorage.getItem('maptype')      : localStorage.getItem('maptype');
let speed_type    = localStorage.getItem('speedtype')    ? localStorage.getItem('speedtype')    : localStorage.setItem('speedtype', "kmh")     ? localStorage.getItem('speedtype')    : localStorage.getItem('speedtype');
let show_data     = localStorage.getItem('clock_date')   ? localStorage.getItem('clock_date')   : localStorage.setItem('clock_date', "show")   ? localStorage.getItem('clock_date')   : localStorage.getItem('clock_date');
let show_job      = localStorage.getItem('show_job')     ? localStorage.getItem('show_job')     : localStorage.setItem('show_job', "show")     ? localStorage.getItem('show_job')     : localStorage.getItem('show_job');
let show_moneys   = localStorage.getItem('show_moneys')  ? localStorage.getItem('show_moneys')  : localStorage.setItem('show_moneys', "show")  ? localStorage.getItem('show_moneys')  : localStorage.getItem('show_moneys');
let show_hotkeys  = localStorage.getItem('show_hotkeys') ? localStorage.getItem('show_hotkeys') : localStorage.setItem('show_hotkeys', "show") ? localStorage.getItem('show_hotkeys') : localStorage.getItem('show_hotkeys');

let health_color  = localStorage.getItem('health_color')  ? localStorage.getItem('health_color')  : localStorage.setItem('health_color', undefined)  ? localStorage.getItem('health_color')  : localStorage.getItem('health_color');
let armour_color  = localStorage.getItem('armour_color')  ? localStorage.getItem('armour_color')  : localStorage.setItem('armour_color', undefined)  ? localStorage.getItem('armour_color')  : localStorage.getItem('armour_color');
let hunger_color  = localStorage.getItem('hunger_color')  ? localStorage.getItem('hunger_color')  : localStorage.setItem('hunger_color', undefined)  ? localStorage.getItem('hunger_color')  : localStorage.getItem('hunger_color');
let thirst_color  = localStorage.getItem('thirst_color')  ? localStorage.getItem('thirst_color')  : localStorage.setItem('thirst_color', undefined)  ? localStorage.getItem('thirst_color')  : localStorage.getItem('thirst_color');
let stamina_color = localStorage.getItem('stamina_color') ? localStorage.getItem('stamina_color') : localStorage.setItem('stamina_color', undefined) ? localStorage.getItem('stamina_color') : localStorage.getItem('stamina_color');
let stress_color  = localStorage.getItem('stress_color') ? localStorage.getItem('stress_color') : localStorage.setItem('stress_color', undefined) ? localStorage.getItem('stress_color') : localStorage.getItem('stress_color');

let health_position  = localStorage.getItem('health_position')  ? localStorage.getItem('health_position')   : localStorage.setItem('health_position', undefined)  ? localStorage.getItem('health_position')  : localStorage.getItem('health_position');
let armour_position  = localStorage.getItem('armour_position')  ? localStorage.getItem('armour_position')   : localStorage.setItem('armour_position', undefined)  ? localStorage.getItem('armour_position')  : localStorage.getItem('armour_position');
let hunger_position  = localStorage.getItem('hunger_position')  ? localStorage.getItem('hunger_position')   : localStorage.setItem('hunger_position', undefined)  ? localStorage.getItem('hunger_position')  : localStorage.getItem('hunger_position');
let thirst_position  = localStorage.getItem('thirst_position')  ? localStorage.getItem('thirst_position')   : localStorage.setItem('thirst_position', undefined)  ? localStorage.getItem('thirst_position')  : localStorage.getItem('thirst_position');
let stamina_position = localStorage.getItem('stamina_position') ? localStorage.getItem('stamina_position')  : localStorage.setItem('stamina_position', undefined) ? localStorage.getItem('stamina_position') : localStorage.getItem('stamina_position');
let stress_position  = localStorage.getItem('stress_position') ? localStorage.getItem('stress_position')  : localStorage.setItem('stress_position', undefined) ? localStorage.getItem('stress_position') : localStorage.getItem('stress_position');


let rootColors = {
    health: '#FFD540',
    armour: '#7E3FCD',
    hunger: '#42B2CA',
    thirst: '#57D143',
    stamina: '#C7C7C7',
    stress: '#F16450',

    health_bg:  'rgba(202, 172, 66, 0.09)',
    armour_bg:  'rgba(126, 63, 205, 0.15)',
    hunger_bg:  'rgba(66, 178, 202, 0.09)',
    thirst_bg:  'rgba(85, 202, 66, 0.09)',
    stamina_bg: 'rgba(255, 255, 255, 0.09)',
    stress_bg: 'rgba(241, 99, 80, 0.15)',
}

let prefix;
let symbol;
let clockType;
let mapOnlyCar;
let stressSystem;

let health_full_setted, armour_full_setted, hunger_full_setted, thirst_full_setted, stamina_full_setted, inweather_setted, stress_full_setted = false;
/////////////////////////////////////////////////////////////////////////////////////////
// LISTENER AND SECOND BUILD FUNCTION'S //
/////////////////////////////////////////////////////////////////////////////////////////

window.addEventListener('message', function (event) {
    let e = event.data;
    switch (e.type) {
        case "DEFAULT_VERIABLES":
            prefix = e.prefix;
            symbol = e.symbol;
            mapOnlyCar = e.mapOnlyCar;
            clockType = e.clockType;
            stressSystem = e.stress;

            if (stressSystem) {
                $('.color-input[data-hud="stress"]').fadeIn(250);
                $('.status-containter[data-hud="stress"]').fadeIn(250);
            }else {
                $('.color-input[data-hud="stress"]').fadeOut(250);
                $('.status-containter[data-hud="stress"]').fadeOut(250);
                $('.status-containter[data-hud="stamina"]').fadeIn(250);
            }

            outCar();
            break;
        case "PLAYER_LOADED":
            $('body').fadeIn(250);
            $('#playerId').html(e.playerId);
            break; 
        case "UPDATE_PLAYER_COUNT":
            $('#online').html(e.total);
            $('#maxonline').html(`/${e.max}`);
            break;
        case "UPDATE_JOB":
            $('span[data-job="label"]').html(e.label);
            $('span[data-job="name"]').html(e.name);
            break;
        case "UPDATE_MONEY":
            updatePlayerMoney(e.object, e.cashItem);
            break;
        case "UPDATE_MONEY_CASH":
            $('#moneyCash').html(`${symbol} ${formatNumber(e.money, prefix)}`);
            break;
        case "PAUSEMENU_STATE":
            if (e.state) {
                $('body').fadeOut(250);
            }else {
                $('body').fadeIn(250);
            }
            break;
        case "UPDATE_STATUS":
            updateStatus(e.heal, e.armour, e.hunger, e.thirst, e.stamina, e.weather, e.stress);
            break;
        case "UPDATE_LOCATION":
            $('span[data-location="first"]').html(e.streetTitle);
            $('span[data-location="second"]').html(e.streetName);
            break;
        case "PLAYER_INCAR":
            playerInCar = true;
            $('.car-hud').fadeIn(250);
            if (mapOnlyCar) {
                inCar();
                $('#location, #mic-range').fadeIn(250);
            }
            break;
        case "PLAYER_OUTCAR":
            belt_ignore = false;
            playerInCar = false;
            $('.car-hud').fadeOut(250);
            if (mapOnlyCar) {
                outCar();
            }
            break;
        case "UPDATE_VEHICLE_STATUS":
            updateVehicleStatus(e.gear, parseInt(e.speed), e.belt, e.door, e.light, e.engine, e.hbreake, e.limiter, e.damage, e.rpm, e.maxGear, parseInt(e.fuel), e.progress);
            break;
        case "PLAY_SOUND":
            sounds[e.sound].play();
            break;
        case "OPEN_SETTINGS":
            $('.settings-menu').fadeIn(250);
            break;
        case "CLOSE_SETTINGS":
            cooldown = false;
            $('.settings-menu').fadeOut(250);
            break;
        case "UPDATE_WEAPON":
            if (e.weapon == -1569615261) {
                if (!hideAmmos) {
                    hideAmmos = true;
                    $('.ammo').fadeOut(250);
                }
            }else {
                if (hideAmmos) {
                    hideAmmos = false;
                    $('.ammo').fadeIn(250);
                }
            }

            $('.weapon-image').attr('src', `img/weapons/${e.weapon}.png`);
            $('#ammo').html(`${e.ammo} <span id="inclip">/${e.ammoclip}</span>`);
            break;
        case "UPDATE_KEYBINDS":
            buildKeyBinds(e.keybinds);
            break;
        case "ADD_NOTIFICATION":
            addNotification(e.types, e.title, e.message, e.timeout);
            break;
        case "ADD_INTERACTIVE_NOTIFICATION":
            addInteractiveNotification(e.title, e.message, e.timeout);
            break;
        case "UPDATE_MIC":
            if (e.state) {
                if (!micSet) {
                    micSet = true;
                    $('#player-mic-muted').hide();
                    if (!e.radio) {
                        $('#player-mic-activeted').show();
                    }else {
                        $('#player-radio').show();
                    }
                }
            }else {
                if (micSet) {
                    micSet = false;
                    $('#player-mic-muted').show();
                    $('#player-radio').hide();
                    $('#player-mic-activeted').hide();
                }
            }
            break;
        case "UPDATE_MIC_DISTANCE":
            $('span[data-mic="label"').html(e.distance.name);
            $('span[data-mic="meters"').html(`${e.distance.meter} meters`);
            break;
        case "RELOAD_PAGE":
            location.reload();
            break;
        case "BELT_IGNORE":
            belt_ignore = e.state;
            break;
        case "HIDE_ELEMENTS":
            if (e.state) {
                $(`${e.elements}`).fadeOut(250);
            }else {
                $(`${e.elements}`).fadeIn(250);
            }
            break;
        default: break;
    }
});

document.onkeyup = function(data){
    if (data.key == "Escape"){
        if (!cooldown && !editorMode) {
        }else if (editorMode) {
            editorMode = false;
            $('.editing-mode').attr('data-state', 'deactive');
            setTimeout(() => {
                $('.some-information, .notification-list, .interactive-notification, .keybind-list, .street-mic').fadeIn(250);
                if (playerInCar) {
                    $('.car-hud').fadeIn(250);
                }
                $('.editing-mode').animate({ "top": "-15vh", "opacity": "0"}, { duration: 500 });
                setTimeout(() => {
                    $('.settings-menu').fadeIn(250);
                    $('body').css({
                        "background": "none",
                    })
                }, 500);
            }, 250);
        }
    }else if (data.key == "y" && ininteractive) {
        $(`.interactive-button[data-button="${data.key}"]`).attr('data-pressed', 'true');
        setTimeout(() => {           
            $(`.interactive-notification[data-interactiveId="${interactiveId}"]`).animate({
                'opacity': '0',
                'top': '-50vh',
            }, 250, function(){
                $(`.interactive-notification[data-interactiveId="${interactiveId}"]`).remove();
                ininteractive = false
            });     
        }, 125);
    }else if (data.key == "n" && ininteractive) {
        $(`.interactive-button[data-button="${data.key}"]`).attr('data-pressed', 'true');
        setTimeout(() => {           
            $(`.interactive-notification[data-interactiveId="${interactiveId}"]`).animate({
                'opacity': '0',
                'top': '-50vh',
            }, 250, function(){
                $(`.interactive-notification[data-interactiveId="${interactiveId}"]`).remove();
                ininteractive = false
            });     
        }, 125);
    }
}

$('input').change(function (e) { 
    $(`radialGradient[data-hud="${$(this).attr('id')}"]`).children('stop').eq(0).attr('stop-color', $(this).val());
    $(`radialGradient[data-hud="${$(this).attr('id')}"]`).children('stop').eq(1).attr('stop-color', $(this).val());
    $(`.status-containter[data-hud="${$(this).attr('id')}"]`).children('.status-bar').css({
        'background': `${hexToRgba($(this).val(), 0.25)}`
    });

    localStorage.setItem(`${$(this).attr('id') + "_color"}`, $(this).val());
});

$('.status-containter').draggable({
    stop : function( event, ui ) {
        localStorage.setItem(`${event.target.dataset.hud}_position`, $(`.status-containter[data-hud="${event.target.dataset.hud}"]`).attr('style'))
    }
});

/////////////////////////////////////////////////////////////////////////////////////////
// UI CONTROL'S //
/////////////////////////////////////////////////////////////////////////////////////////

$(document).on('click', '.selection', function(){
    if (!cooldown) {
        let option = $(this).data('option');
        let position = $(this).data('position');
        changeValue(option, position);
    }
});

$(document).on('click', '.close', function(){

});

$(document).on('click', '.resetbutton', function(){
    if (!cooldown) {
        cooldown = true;
        resetSettings();    
    }
});

$(document).on('click', '.item-button', function(){
    if (!cooldown) {
        editorMode = true;
        $('.settings-menu').fadeOut(250)
        setTimeout(() => {
            $('.some-information, .notification-list, .interactive-notification, .keybind-list, .car-hud, .street-mic').fadeOut(250);
            $('body').css({"background": "rgba(0,0,0,0.5)",});
            $('.editing-mode').animate({ "top": "5vh", "opacity": "1"}, { duration: 500 });
            setTimeout(() => {
                $('.editing-mode').attr('data-state', 'active');
            }, 500);
        }, 250);
    }
});

$(document).ready(function () {
    loaded();
});

/////////////////////////////////////////////////////////////////////////////////////////
// MAIN BUILD UI FUNCTION'S //
/////////////////////////////////////////////////////////////////////////////////////////

function loaded() {
    buildVisual(false)
    buildSettings();
    writeDate();
    writeClock();

    sounds.belt_alarm = new Audio('sounds/alarm.mp3');
    sounds.belt_alarm.volume = 0.25;
    sounds.belt_plug = new Audio('sounds/plug.ogg');
    sounds.belt_plug.volume = 0.25;
    sounds.belt_unplug = new Audio('sounds/out.ogg');
    sounds.belt_unplug.volume = 0.25;
}

function writeClock() {
    if (!clockType) {
        setTimeout(() => {
            writeClock(); 
        }, 2000);
    }
    if (clockType == "PM") {
        let date = new Date();
        let hours = date.getHours();
        let minutes = date.getMinutes();
        let seconds = date.getSeconds();
        let ampm = hours >= 12 ? 'PM' : 'AM';
        hours = hours % 12;
        hours = hours ? hours : 12;
        minutes = minutes < 10 ? '0'+minutes : minutes;
        seconds = seconds < 10 ? '0'+seconds : seconds;
        let strTime = hours + ':' + minutes + ' ' + ampm;
        $('#clock').html(`${strTime}`);
        setTimeout(() => {
            writeClock();
        }, 1 * 60 * 1000);
    }else if (clockType == "24") {
        let date = new Date();
        let hours = date.getHours();
        let minutes = date.getMinutes();
        let seconds = date.getSeconds();
        hours = hours < 10 ? '0'+hours : hours;
        minutes = minutes < 10 ? '0'+minutes : minutes;
        seconds = seconds < 10 ? '0'+seconds : seconds;
        let strTime = hours + ':' + minutes;
        $('#clock').html(`${strTime}`);
        setTimeout(() => {
            writeClock();
        }, 1 * 60 * 1000);
    }
}

function writeDate() {
    let date = new Date();
    let day = date.getDate();
    let month = date.getMonth() + 1;
    let year = date.getFullYear();
    let strDate = day + '.' + month + '.' + year;
    $('#date').html(`${strDate}`);
    setTimeout(() => {
        writeDate();
    }, 1 * 60 * 1000);
}

function updateStatus(health, armour, hunger, thirst, stamina, inweather, stress) {

    if (health >= 0) {
        $('svg[data-hud="health"]').attr({
            "viewBox": `0 0 100 ${health}`,
        })
    }else {
        $('svg[data-hud="health"]').attr({
            "viewBox": `0 0 100 0`,
        })
    }

    if (armour >= 0) {
        $('svg[data-hud="armour"]').attr({
            "viewBox": `0 0 100 ${armour}`,
        })
    }else {
        $('svg[data-hud="armour"]').attr({
            "viewBox": `0 0 100 0`,
        })
    }

    if (hunger >= 0) {
        $('svg[data-hud="hunger"]').attr({
            "viewBox": `0 0 100 ${hunger}`,
        })
    }else {
        $('svg[data-hud="hunger"]').attr({
            "viewBox": `0 0 100 0`,
        })
    }


    if (thirst >= 0) {
        $('svg[data-hud="thirst"]').attr({
            "viewBox": `0 0 100 ${thirst}`,
        })
    }else {
        $('svg[data-hud="thirst"]').attr({
            "viewBox": `0 0 100 0`,
        })
    }


    if (stamina >= 0) {
        $('svg[data-hud="stamina"]').attr({
            "viewBox": `0 0 100 ${stamina}`,
        })
    }else {
        $('svg[data-hud="stamina"]').attr({
            "viewBox": `0 0 100 0`,
        })
    }

    if (stress >= 0) {
        $('svg[data-hud="stress"]').attr({
            "viewBox": `0 0 100 ${stress}`,
        })
    }else {
        $('svg[data-hud="stress"]').attr({
            "viewBox": `0 0 100 0`,
        })
    }

    $('#health-value').html(`${health}%`);
    $('#armour-value').html(`${armour}%`);
    $('#hunger-value').html(`${hunger}%`);
    $('#thirst-value').html(`${thirst}%`);
    $('#stamina-value').html(`${stamina}%`);
    $('#stress-value').html(`${stress}%`);

    if (inweather) {
        if (!inweather_setted) {
            inweather_setted = true;
            if (stressSystem) {
                $('.status-containter[data-hud="stress"]').fadeOut(250);
                $('.status-containter[data-hud="stamina"]').fadeIn(250);
            }
            $('#stamina-image').attr('src', 'img/lungs.png');
        }
    }else{
        if (!inweather) {
            if (inweather_setted) {
                inweather_setted = false;   
                $('#stamina-image').attr('src', 'img/stamina.png');
            }
        }

        if (stamina < 100) {
            if (stressSystem) {
                $('.status-containter[data-hud="stress"]').fadeOut(250);
                $('.status-containter[data-hud="stamina"]').fadeIn(250);
            }
        }else if (stamina >= 100) {
            if (stressSystem) {
                $('.status-containter[data-hud="stress"]').fadeIn(250);
                $('.status-containter[data-hud="stamina"]').fadeOut(250);
            }
        }
    }
    
    if (health >= 100) {
        if (!health_full_setted) {
            $('#path3[data-hud="health"]').attr('data-visible', 'true');
            health_full_setted = true;
        }
    }else {
        if (health_full_setted) {
            $('#path3[data-hud="health"]').attr('data-visible', 'false');
            health_full_setted = false;
        }
    }

    if (armour >= 100) {
        if (!armour_full_setted) {
            $('#path3[data-hud="armour"]').attr('data-visible', 'true');
            armour_full_setted = true;
        }
    }else {
        if (armour_full_setted) {
            $('#path3[data-hud="armour"]').attr('data-visible', 'false');
            armour_full_setted = false;
        }
    }

    if (hunger >= 100) {
        if (!hunger_full_setted) {
            $('#path3[data-hud="hunger"]').attr('data-visible', 'true');
            hunger_full_setted = true;
        }
    }else {
        if (hunger_full_setted) {
            $('#path3[data-hud="hunger"]').attr('data-visible', 'false');
            hunger_full_setted = false;
        }
    }

    if (thirst >= 100) {
        if (!thirst_full_setted) {
            $('#path3[data-hud="thirst"]').attr('data-visible', 'true');
            thirst_full_setted = true;
        }
    }else {
        if (thirst_full_setted) {
            $('#path3[data-hud="thirst"]').attr('data-visible', 'false');
            thirst_full_setted = false;
        }
    }

    if (stamina >= 100) {
        if (!stamina_full_setted) {
            $('#path3[data-hud="stamina"]').attr('data-visible', 'true');
            stamina_full_setted = true;
        }
    }else {
        if (stamina_full_setted) {
            $('#path3[data-hud="stamina"]').attr('data-visible', 'false');
            stamina_full_setted = false;
        }
    }

    if (stress >= 100) {
        if (!stress_full_setted) {
            $('#path3[data-hud="stress"]').attr('data-visible', 'true');
            stress_full_setted = true;
        }
    }else {
        if (stress_full_setted) {
            $('#path3[data-hud="stress"]').attr('data-visible', 'false');
            stress_full_setted = false;
        }
    }
}

function updateVehicleStatus(gear, speed, belt, door, light, engine, hbreake, limiter, damage, rpm, maxGear, fuel, progress) {
    let nrpm = parseInt(rpm * 9)
    let lastGear = gear-1 == -1 && nrpm > 2;
    let nextGear =  gear == maxGear
    
    if (lastGear) {
        if (!hideLastGear) {
            hideLastGear = true
            $('#last-gear').fadeOut(250)
        }
    }else {
        if (hideLastGear) {
            hideLastGear = false
            $('#last-gear').fadeIn(250)
        }
    }

    if (!lastGear) {
        $('#last-gear').html(`${gear-1 == -1 ? "R" : gear-1 == 0 ? "N" : gear-1}`);
    }

    $('#now-gear').html(`${gear-1 == -1 && nrpm > 2 ? "R" : gear == 0 ? "N" : gear-1 == -1 ? "R" : gear}`);

    if (nextGear) {
        if (!hideHightGear) {
            hideHightGear = true
            $('#next-gear').fadeOut(250)
        }
    }else {
        if (hideHightGear) {
            hideHightGear = false
            $('#next-gear').fadeIn(250)
        }
    }

    if (!nextGear) {
        $('#next-gear').html(`${gear+1 == maxGear ? maxGear : gear+1}`);
    }

    if (progress <= 380) {
        $('.speed-prog').animate({
            "stroke-dasharray" : 401 + (progress)
        }, 10);
    }
    
    $('#speed').html(`${speed}`);

    $('.fuel-prog').animate({"stroke-dasharray" : 773 + (parseInt(fuel * 1.15))}, 1);
    
    if (fuel >= 51) {
        $('#fuel').attr('data-fuel', 'good');
    }else if (fuel >= 25) {
        $('#fuel').attr('data-fuel', 'low');
    }else if (fuel <= 20) {
        $('#fuel').attr('data-fuel', 'verylow');
    }

    $('#belt').attr('src', `./img/speedm-images/${belt ? 'belt-on' : 'belt'}.png`);
    $('#door').attr('src', `./img/speedm-images/${door ? 'door-on' : 'door'}.png`);
    $('#lights').attr('src', `./img/speedm-images/${light ? 'lights-on' : 'lights'}.png`);
    $('#engine').attr('src', `./img/speedm-images/${engine ? 'engine-on' : 'engine'}.png`);
    $('#brake').attr('src', `./img/speedm-images/${hbreake ? 'brake-on' : 'brake'}.png`);
    $('#spped-limiter').attr('src', `./img/speedm-images/${limiter ? 'meter-on' : 'meter'}.png`);
    $('#wrench').attr('src', `./img/speedm-images/${parseInt(damage / 10) <= 50 ? 'wrench-on' : 'wrench'}.png`);

    if (!belt_ignore) {
        if (!belt) {
            beltAlarm();
            if (!beltState) {
                beltState = true
                $('#belt').attr('data-state', 'false');
                beltstates = false
            }
        }else {
            if (beltState) {
                beltState = false
                $('#belt').attr('data-state', 'true');
                beltstates = true
            }
        }
    }
}

function updatePlayerMoney(accounts, cashItem) {
    $.each(accounts, function (k, v) { 
        if (v.name == "money") {
            if (!cashItem) {
                $('#moneyCash').html(`${symbol} ${formatNumber(v.money, prefix)}`);
            }
        }else if (v.name == "bank") {
            $('#moneyBank').html(`${symbol} ${formatNumber(v.money, prefix)}`);
        }
    });
}

function formatNumber(num, prefix) {
    return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, `${prefix}`);
}

function buildSettings() {
    $('.selection').attr('data-active', 'false');
    $(`.selection[data-option="hudtype"][data-value="${hud_type}"]`).attr('data-active', 'true');
    $(`.selection[data-option="maptype"][data-value="${map_type}"]`).attr('data-active', 'true');
    $(`.selection[data-option="speedtype"][data-value="${speed_type}"]`).attr('data-active', 'true');
    $(`.selection[data-option="clock_date"][data-value="${show_data}"]`).attr('data-active', 'true');
    $(`.selection[data-option="show_job"][data-value="${show_job}"]`).attr('data-active', 'true');
    $(`.selection[data-option="show_moneys"][data-value="${show_moneys}"]`).attr('data-active', 'true');
    $(`.selection[data-option="show_hotkeys"][data-value="${show_hotkeys}"]`).attr('data-active', 'true');
    $(`.selection[data-option="cinematic"][data-value="hide"]`).attr('data-active', 'true');  
}

function buildVisual(reset) {

    $('.status-containter[data-hud="health"]').attr('style',  `${health_position  != "undefined" ? health_position  : ""}`);
    $('.status-containter[data-hud="armour"]').attr('style',  `${armour_position  != "undefined" ? armour_position  : ""}`);
    $('.status-containter[data-hud="hunger"]').attr('style',  `${hunger_position  != "undefined" ? hunger_position  : ""}`);
    $('.status-containter[data-hud="thirst"]').attr('style',  `${thirst_position  != "undefined" ? thirst_position  : ""}`);
    $('.status-containter[data-hud="stamina"]').attr('style', `${stamina_position != "undefined" ? stamina_position : ""}`);
    $('.status-containter[data-hud="stress"]').attr('style',  `${stress_position  != "undefined" ? stress_position  : ""}`);

    $(`radialGradient[data-hud="health"]`).children('stop').eq(0).attr('stop-color',  health_color  != "undefined" ? health_color  : rootColors.health);
    $(`radialGradient[data-hud="health"]`).children('stop').eq(1).attr('stop-color',  health_color  != "undefined" ? health_color  : rootColors.health);
    $(`radialGradient[data-hud="armour"]`).children('stop').eq(0).attr('stop-color',  armour_color  != "undefined" ? armour_color  : rootColors.armour);
    $(`radialGradient[data-hud="armour"]`).children('stop').eq(1).attr('stop-color',  armour_color  != "undefined" ? armour_color  : rootColors.armour);
    $(`radialGradient[data-hud="hunger"]`).children('stop').eq(0).attr('stop-color',  hunger_color  != "undefined" ? hunger_color  : rootColors.hunger);
    $(`radialGradient[data-hud="hunger"]`).children('stop').eq(1).attr('stop-color',  hunger_color  != "undefined" ? hunger_color  : rootColors.hunger);
    $(`radialGradient[data-hud="thirst"]`).children('stop').eq(0).attr('stop-color',  thirst_color  != "undefined" ? thirst_color  : rootColors.thirst);
    $(`radialGradient[data-hud="thirst"]`).children('stop').eq(1).attr('stop-color',  thirst_color  != "undefined" ? thirst_color  : rootColors.thirst);
    $(`radialGradient[data-hud="stamina"]`).children('stop').eq(0).attr('stop-color', stamina_color != "undefined" ? stamina_color : rootColors.stamina);
    $(`radialGradient[data-hud="stamina"]`).children('stop').eq(1).attr('stop-color', stamina_color != "undefined" ? stamina_color : rootColors.stamina);
    $(`radialGradient[data-hud="stress"]`).children('stop').eq(0).attr('stop-color',  stress_color  != "undefined" ? stress_color  : rootColors.stress);
    $(`radialGradient[data-hud="stress"]`).children('stop').eq(1).attr('stop-color',  stress_color  != "undefined" ? stress_color  : rootColors.stress);

    if (!reset) {
        if (health_color != "undefined") {
            $(`.status-containter[data-hud="health"]`).children('.status-bar').css({
                'background': `${hexToRgba(health_color, 0.25)}`
            });
        }
        
        if (armour_color != "undefined") {
            $(`.status-containter[data-hud="armour"]`).children('.status-bar').css({
                'background': `${hexToRgba(armour_color, 0.25)}`
            });
        }
        
        if (hunger_color != "undefined") {
            $(`.status-containter[data-hud="hunger"]`).children('.status-bar').css({
                'background': `${hexToRgba(hunger_color, 0.25)}`
            });
        }

        if (thirst_color != "undefined") {
            $(`.status-containter[data-hud="thirst"]`).children('.status-bar').css({
                'background': `${hexToRgba(thirst_color, 0.25)}`
            });
        }

        if (stamina_color != "undefined") {
            $(`.status-containter[data-hud="stamina"]`).children('.status-bar').css({
                'background': `${hexToRgba(stamina_color, 0.25)}`
            });
        }

        if (stress_color != "undefined") {
            $(`.status-containter[data-hud="stress"]`).children('.status-bar').css({
                'background': `${hexToRgba(stress_color, 0.25)}`
            });
        }
    }else {
        $(`.selection[data-option="hudtype"][data-value="${hud_type}"]`).attr('data-active', 'true');
        $(`.selection[data-option="maptype"][data-value="${map_type}"]`).attr('data-active', 'true');
        $(`.selection[data-option="speedtype"][data-value="${speed_type}"]`).attr('data-active', 'true');
        $(`.selection[data-option="clock_date"][data-value="${show_data}"]`).attr('data-active', 'true');
        $(`.selection[data-option="show_job"][data-value="${show_job}"]`).attr('data-active', 'true');
        $(`.selection[data-option="show_moneys"][data-value="${show_moneys}"]`).attr('data-active', 'true');
        $(`.selection[data-option="show_hotkeys"][data-value="${show_hotkeys}"]`).attr('data-active', 'true');
        $(`.selection[data-option="cinematic"][data-value="hide"]`).attr('data-active', 'true');  
    }

    $('#kmh').html(speed_type == "kmh" ? "km/h" : "mp/h")

    if (hud_type == "squared") {
        $('.status-bar').removeClass('rounded');
    }else if (hud_type == "rounded") {
        $('.status-bar').addClass('rounded');
    }


    if (show_data == "show") {
        $('.calendar').fadeIn(250);
    }else if (show_data == "hide") {
        $('.calendar').fadeOut(250);
    }

    if (show_job == "show") {
        $(`.icon-div[data-info="job"]`).fadeIn(250);
    }else if (show_job == "hide") {
        $(`.icon-div[data-info="job"]`).fadeOut(250);
    }

    if (show_moneys == "show") {
        $(`.icon-div[data-info="money"]`).fadeIn(250);
    }else if (show_moneys == "hide") {
        $(`.icon-div[data-info="money"]`).fadeOut(250);
    }
 
    if (show_hotkeys == "show") {
        $(`.keybind-list`).fadeIn(250);
    }else if (show_hotkeys == "hide") {
        $(`.keybind-list`).fadeOut(250);
    }

    setTimeout(() => {
        if (!stressSystem) {
            $('.color-input[data-hud="stress"]').fadeOut(250);
            $('.status-containter[data-hud="stress"]').fadeOut(250);
        }
    }, 500);

    cooldown = false;
}

function changeValue(option, position) {
    if (position == "left") {
        $(`.selection[data-option="${option}"][data-position="right"]`).attr('data-active', 'false');
        $(`.selection[data-option="${option}"][data-position="left"]`).attr('data-active', 'true');
    }else if (position == "right") {
        $(`.selection[data-option="${option}"][data-position="left"]`).attr('data-active', 'false');
        $(`.selection[data-option="${option}"][data-position="right"]`).attr('data-active', 'true');
    }
    let value = $(`.selection[data-option="${option}"][data-active="true"]`).data('value');
    if (option == "cinematic") {
        if (value == "show") {
            $('.some-information, .status-containter, .icon-div, .keybind-list').fadeOut(250);
            if (playerInCar) {
                $('.car-hud').fadeOut(250);
            }
            $('.cinematic-top, .cinematic-bottom').fadeIn(250);
        }else {
            $('.some-information, .status-containter, .icon-div, .keybind-list').fadeIn(250);
            setTimeout(() => {                
                if (!stressSystem) {
                    $('.status-containter[data-hud="stress"]').fadeOut(250);
                }
            }, 250);
            if (playerInCar) {
                $('.car-hud').fadeIn(250)
                if (mapOnlyCar) {
                    $('#location, #mic-range').show();
                }
            }else {
                if (mapOnlyCar) {
                    $('#location, #mic-range').hide();
                }
            }
            $('.cinematic-top, .cinematic-bottom').fadeOut(250);
        }

        cooldown = false;
        return
    }
    changeVisual(option, value);
    localStorage.setItem(option, value);
}

function changeVisual(option, value) {
    switch (option) {
        case "hudtype":
            if (value == "squared") {
                $('.status-bar').removeClass('rounded');
            }else if (value == "rounded") {
                $('.status-bar').addClass('rounded');
            }
            break;
        case "maptype":
            break;
        case "speedtype":
            let meterType = value == 'kmh' ? "km/h" : "mp/h"
            $('#kmh').html(meterType)
            break;
        case "clock_date":
            if (value == "show") {
                $('.calendar').fadeIn(250);
            }else if (value == "hide") {
                $('.calendar').fadeOut(250);
            }
            break;
        case "show_job":
            if (value == "show") {
                $(`.icon-div[data-info="job"]`).fadeIn(250);
            }else if (value == "hide") {
                $(`.icon-div[data-info="job"]`).fadeOut(250);
            }
            break;
        case "show_moneys":
            if (value == "show") {
                $(`.icon-div[data-info="money"]`).fadeIn(250);
            }else if (value == "hide") {
                $(`.icon-div[data-info="money"]`).fadeOut(250);
            }
            break;
        case "show_hotkeys":    
            if (value == "show") {
                $(`.keybind-list`).fadeIn(250);
            }else if (value == "hide") {
                $(`.keybind-list`).fadeOut(250);
            }
            break;
        default:break;
    }
}

function resetSettings() {
    hud_type      = "squared"
    map_type      = "squared"
    speed_type    = "kmh"
    show_data     = "show"
    show_job      = "show"
    show_moneys   = "show"
    show_hotkeys  = "show"
    
    $(`.selection[data-option="hudtype"]`).attr('data-active', 'false');
    $(`.selection[data-option="maptype"]`).attr('data-active', 'false');
    $(`.selection[data-option="speedtype"]`).attr('data-active', 'false');
    $(`.selection[data-option="clock_date"]`).attr('data-active', 'false');
    $(`.selection[data-option="show_job"]`).attr('data-active', 'false');
    $(`.selection[data-option="show_moneys"]`).attr('data-active', 'false');
    $(`.selection[data-option="show_hotkeys"]`).attr('data-active', 'false');

    localStorage.setItem('hudtype', "squared")
    localStorage.setItem('maptype', "squared") 
    localStorage.setItem('speedtype', "kmh")   
    localStorage.setItem('clock_date', "show") 
    localStorage.setItem('show_job', "show")
    localStorage.setItem('show_moneys', "show")
    localStorage.setItem('show_hotkeys', "show")

    health_color  = undefined
    armour_color  = undefined
    hunger_color  = undefined
    thirst_color  = undefined
    stamina_color = undefined
    stress_color  = undefined

    localStorage.setItem('health_color', undefined) 
    localStorage.setItem('armour_color', undefined) 
    localStorage.setItem('hunger_color', undefined) 
    localStorage.setItem('thirst_color', undefined) 
    localStorage.setItem('stamina_color', undefined)
    localStorage.setItem('stress_color', undefined)


    health_position  = undefined
    armour_position  = undefined
    hunger_position  = undefined
    thirst_position  = undefined
    stamina_position = undefined
    stress_position  = undefined

    localStorage.setItem('health_position', undefined) 
    localStorage.setItem('armour_position', undefined) 
    localStorage.setItem('hunger_position', undefined) 
    localStorage.setItem('thirst_position', undefined) 
    localStorage.setItem('stamina_position', undefined)
    localStorage.setItem('stress_position', undefined)

    $(`radialGradient[data-hud="health"]`).children('stop').eq(0).attr('stop-color', rootColors.health);
    $(`radialGradient[data-hud="health"]`).children('stop').eq(1).attr('stop-color', rootColors.health);

    $(`radialGradient[data-hud="armour"]`).children('stop').eq(0).attr('stop-color', rootColors.armour);
    $(`radialGradient[data-hud="armour"]`).children('stop').eq(1).attr('stop-color', rootColors.armour);

    $(`radialGradient[data-hud="hunger"]`).children('stop').eq(0).attr('stop-color', rootColors.hunger);
    $(`radialGradient[data-hud="hunger"]`).children('stop').eq(1).attr('stop-color', rootColors.hunger);

    $(`radialGradient[data-hud="thirst"]`).children('stop').eq(0).attr('stop-color', rootColors.thirst);
    $(`radialGradient[data-hud="thirst"]`).children('stop').eq(1).attr('stop-color', rootColors.thirst);

    $(`radialGradient[data-hud="stamina"]`).children('stop').eq(0).attr('stop-color', rootColors.stamina);
    $(`radialGradient[data-hud="stamina"]`).children('stop').eq(1).attr('stop-color', rootColors.stamina);

    $(`radialGradient[data-hud="stress"]`).children('stop').eq(0).attr('stop-color', rootColors.stress);
    $(`radialGradient[data-hud="stress"]`).children('stop').eq(1).attr('stop-color', rootColors.stress);

    $(`.status-containter[data-hud="health"]`).children('.status-bar').css({
        'background': `${rootColors.health_bg}`
    });

    $(`.status-containter[data-hud="armour"]`).children('.status-bar').css({
        'background': `${rootColors.armour_bg}`
    });

    $(`.status-containter[data-hud="hunger"]`).children('.status-bar').css({
        'background': `${rootColors.hunger_bg}`
    });

    $(`.status-containter[data-hud="thirst"]`).children('.status-bar').css({
        'background': `${rootColors.thirst_bg}`
    });

    $(`.status-containter[data-hud="stamina"]`).children('.status-bar').css({
        'background': `${rootColors.stamina_bg}`
    });

    $(`.status-containter[data-hud="stress"]`).children('.status-bar').css({
        'background': `${rootColors.stress_bg}`
    });

    setTimeout(() => {
        buildVisual(true)
    }, 500);
}

function beltAlarm() {
    if (!beltstates && !alarm && playerInCar) {
        alarm = true;
        sounds["belt_alarm"].play();
        setTimeout(() => {
            alarm = false;
            beltAlarm();
        }, 7500);
    }
}

function buildKeyBinds(keys) {
    $('.keybind-list').html('');
    $.each(keys, function (k, v) { 
        let bind = `
        <div class="keybind">
            <span>${v.name}</span>
            <div class="keybind-button">
                <span>${v.key}</span>
            </div>
        </div>
        `;
        $('.keybind-list').append(bind);
    });
}

function addNotification(type, title, message, timeout) {
    notifId = notifId + 1;
    let notification = `
    <div class="notification ${type}" data-notifid="${notifId}">
        <img src="img/${type}.png">
        <div class="notification-content">
            <span id="title">${title}</span>
            <span id="text">${message}</span>
            <div class="notification-progress" data-notifid="${notifId}">
                <div class="notification-progress-inline" data-notifid="${notifId}"></div>
            </div>
        </div>
    </div>
    `;
    $('.notification-list').append(notification);
    notifAnim(notifId, timeout);
}

function notifAnim(id, time) {
    setTimeout(() => {
        $(`.notification[data-notifid="${id}"]`).animate({
            'margin-right': '-50vh',
        }, 250);
        setTimeout(() => {
            $(`.notification[data-notifid="${id}"]`).remove();
        }, 250);
    }, time);
    $(`.notification-progress-inline[data-notifid="${id}"]`).css(
        'animation-duration', `${time / 1000}s`
    )
    $(`.notification[data-notifid="${id}"]`).animate({
        'margin-right': '0',
    }, 250);
}

function addInteractiveNotification(title, message, time) {
    ininteractive = true;
    interactiveId = interactiveId + 1;
    let div = `
    <div class="interactive-notification" data-interactiveid="${interactiveId}">
        <div class="shadow"></div>
        <img src="img/interactive-icon.png">
        <span id="title">${title}</span>
        <span id="content">${message}</span>
        <div class="interactive-progress">
            <div class="interactive-prog-inline" data-interactiveid="${interactiveId}"></div>
        </div>
        <div class="interactive-buttons">
            <div class="interactive-button" data-button="y" data-pressed="false">
                <div class="interactive-modal accept">
                    <span>y</span>
                </div>
                <span>accept</span>
            </div>

            <div class="interactive-button" data-button="n" data-pressed="false">
                <div class="interactive-modal decline">
                    <span>n</span>
                </div>
                <span>decline</span>
            </div>
        </div>
    </div>
    `;
    $('body').append(div);
    interactiveAnim(interactiveId, time);
}

function interactiveAnim(id, time) {
    $(`.interactive-notification[data-interactiveid="${id}"]`).animate({
        'opacity': '1',
        'top': '4vh',
    }, 250, function() {
        $(`.interactive-prog-inline[data-interactiveid="${id}"]`).css(
            'animation-duration', `${time / 1000}s`
        )
    });
    setTimeout(() => {
        $(`.interactive-notification[data-interactiveId="${id}"]`).animate({
            'opacity': '0',
            'top': '-50vh',
        }, 250, function(){
            $(`.interactive-notification[data-interactiveId="${id}"]`).remove();
            ininteractive = false
        }); 
    }, time);
}

function inCar() {
    if (playerInCar) {
        $('#location, #mic-range').fadeIn(250);

        if (health_position == "undefined") {
            $('.status-containter[data-hud="health"]').css({
                'left': '33vh',
            })
        }

        if (armour_position == "undefined") {
            $('.status-containter[data-hud="armour"]').css({
                'left': '33vh',
            })
        }

        if (hunger_position == "undefined") {
            $('.status-containter[data-hud="hunger"]').css({
                'left': '33vh',
            })
        }

        if (thirst_position == "undefined") {
            $('.status-containter[data-hud="thirst"]').css({
                'left': '33vh',
            })
        }

        if (stamina_position == "undefined") {
            $('.status-containter[data-hud="stamina"]').css({
                'left': '33vh',
            })
        }

        if (stress_position == "undefined") {
            $('.status-containter[data-hud="stress"]').css({
                'left': '33vh',
            })
        }

        if (stressSystem) {
            if (stress_position == "undefined") {
                $('.status-containter[data-hud="stress"]').css({
                    'left': '33vh',
                })
            }
        }

    }
}

function outCar() {
    if (mapOnlyCar && !playerInCar) {
        $('#location, #mic-range').hide();

        if (health_position == "undefined") {
            $('.status-containter[data-hud="health"]').css({
                'left': '2.5vh',
            })
        }

        if (armour_position == "undefined") {
            $('.status-containter[data-hud="armour"]').css({
                'left': '2.5vh',
            })
        }

        if (hunger_position == "undefined") {
            $('.status-containter[data-hud="hunger"]').css({
                'left': '2.5vh',
            })
        }

        if (thirst_position == "undefined") {
            $('.status-containter[data-hud="thirst"]').css({
                'left': '2.5vh',
            })
        }

        if (stamina_position == "undefined") {
            $('.status-containter[data-hud="stamina"]').css({
                'left': '2.5vh',
            })
        }

        if (stressSystem) {
            if (stress_position == "undefined") {
                $('.status-containter[data-hud="stress"]').css({
                    'left': '2.5vh',
                })
            }
        }

    }
}

function hexToRgba(hex, opacity) {
    hex = hex.replace('#', '');
    var r = parseInt(hex.substring(0, 2), 16);
    var g = parseInt(hex.substring(2, 4), 16);
    var b = parseInt(hex.substring(4, 6), 16);
    return 'rgba(' + r + ', ' + g + ', ' + b + ', ' + opacity + ')';
  }