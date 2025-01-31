
var stancerFocusKey = 16
var presetClosed = true
var themeClosed = true


var camber = document.getElementById("camber");
var camberValue = document.getElementById("cambervalue");

var offset = document.getElementById("offset");
var offsetValue = document.getElementById("offsetvalue");

var wheel = document.getElementById("wheelWidth");
var wheelValue = document.getElementById("wheelWidthvalue");

var wheelSize = document.getElementById("wheelSize");
var wheelSizeValue = document.getElementById("wheelSizevalue");

var rideHeight = document.getElementById("rideHeight");
var rideHeightValue = document.getElementById("rideHeightvalue");

var nuifocus = 0
var current = 0
var currentwheelid = 0
var lastupdated = ""
var camberamount = 0
var offsetamount = 0
var wheelWidthamount = 0
var rideHeightamount = 0
var wheelSizeamount = 0
var stancerMode = 1
var customWheels = -1
var main = ""

$(function() {
    window.addEventListener('message', function(event) {
     var data = event.data;
     start()
     pictureChange()
     if (data.type == "enableui") {
       document.body.style.display = data.enable ? "block" : "none";
       $(".mainbg").css("display", "block")
       $(".mainbutton").css("display", "none")
       camberValue.innerHTML = camber.value;
       offsetValue.innerHTML = offset.value;
       wheelValue.innerHTML = wheel.value;
       wheelSizeValue.innerHTML = wheelSize.value;
       rideHeightValue.innerHTML = rideHeight.value;
       currentwheelid = data.wheel
       dragElement(document.getElementById("mainbg"));
     }

     if (data.type == "updateui") { 
      setTimeout(function() {
        nuifocus = data.focus;
      }, 250);
     }

     if (data.type == "presetsenable") {      
      $(".loaded-presets").html(data.presets);
      if (data.themes != undefined) {
       setTheme(data.themes); 
      } else {
        noTheme();
      }
     }

     if (data.type == "enablebutton") {  
      document.body.style.display = data.enable ? "block" : "none";
      $(".mainbutton").css("display", "block");
      $(".mainbg").css("display", "none");
      $(".mainbuttonText").html(data.openkey);
     }
    
     if (data.type == "stancerSettings") {
      if (data.customWheels == -1) {
        $(".wheelWidthDiv").css("display", "none");
        $(".wheelSizeDiv").css("display", "none");
        $(".mainbg").css("height", "26rem");
        $(".loaded-presets").css("height", "88.5%");
        $(".sliders").css("top", "38%");
        $(".modeswitch").css("bottom", "57%");
        $(".theme").css("bottom", "90%"); 
        $(".presets").css("bottom", "90%");
      } else {
        $(".sliders").css("top", "30%");
        $(".modeswitch").css("bottom", "67.5%");
        $(".theme").css("bottom", "91.8%"); 
        $(".presets").css("bottom", "91.8%");
        $(".loaded-presets").css("height", "90.7%");
        $(".wheelWidthDiv").css("display", "block");
        $(".wheelSizeDiv").css("display", "block");
        $(".mainbg").css("height", "36rem");
       }
       $("#camber").val(data.camber);
       $("#offset").val(data.offset);
       $("#wheelWidth").val(data.wheelwidth);
       $("#wheelSize").val(data.wheelsize);
       $("#rideHeight").val(data.rideheight);
    }
    
    if (data.type == "updatewheel") {
      updateStancerUI(data);
    }
  });
});

function start() {
  main = document.documentElement.style;

  camber.onchange = function () {
    camberValue.innerHTML = this.value;
    camberamount = this.value;
    lastupdated = "camber";
  }

  offset.onchange = function () {
    offsetValue.innerHTML = this.value;
    offsetamount = this.value;
    lastupdated = "offset";
  }

  wheel.onchange = function () {
    wheelValue.innerHTML = this.value;
    wheelWidthamount = this.value;
    lastupdated = "width";
  }

  wheelSize.onchange = function () {
    wheelSizeValue.innerHTML = this.value;
    wheelSizeamount = this.value;
    lastupdated = "size";
  }

  rideHeight.onchange = function () {
    rideHeightValue.innerHTML = this.value;
    rideHeightamount = this.value;
    lastupdated = "height";
  }
}
function dragElement(elmnt) {
  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
  if (document.getElementById(elmnt.id + "move")) {
    document.getElementById(elmnt.id + "move").onmousedown = dragMouseDown;
  } else {
    elmnt.onmousedown = dragMouseDown;
  }

  function dragMouseDown(e) {
    e = e || window.event;
    e.preventDefault();
    pos3 = e.clientX;
    pos4 = e.clientY;
    document.onmouseup = closeDragElement;
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();
    pos1 = pos3 - e.clientX;
    pos2 = pos4 - e.clientY;
    pos3 = e.clientX;
    pos4 = e.clientY;
    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
    main.setProperty('--StancerYpos', elmnt.style.top);
    main.setProperty('--StancerXpos', elmnt.style.left);
  }

  function closeDragElement() {
    document.onmouseup = null;
    document.onmousemove = null;
  }
}

function updateStancerUI(data) {
  currentwheelid = data.wheel;
  $("#camber").val(data.camber);
  $("#offset").val(data.offset);
  $("#wheelWidth").val(data.wheelwidth);
  $("#wheelSize").val(data.wheelsize);
  $("#rideHeight").val(data.rideheight);
  camberValue.innerHTML = camber.value;
  offsetValue.innerHTML = offset.value;
  wheelValue.innerHTML = wheel.value;
  wheelSizeValue.innerHTML = wheelSize.value;
  rideHeightValue.innerHTML = rideHeight.value;

}


$(document).keyup(function (e) {
 
  if (e.keyCode >= 37 && e.keyCode <= 40) {
    setTimeout(function () {
      stancerHandler(lastupdated);
    }, 10);
  } else if (e.keyCode == 27) {
    e.preventDefault();
    $.post('http://wizating_stancer/close');
  } else if (e.keyCode == stancerFocusKey) {
    if (nuifocus == 1) {
      nuifocus = 0;
      updateui(nuifocus);
    }
  }

})

$(document).mouseup(function (e) {

  if (e.which == 1) {
    setTimeout(function () {
      stancerHandler(lastupdated);
    }, 10);

  }
})

function stancerHandler(lastupdate) {
  if (lastupdate == "camber") {
    updateCamber();
  } else if (lastupdate == "offset") {
    updateOffset();
  } else if (lastupdate == "width") {
    updateWheelWidth();
  } else if (lastupdate == "size") {
    updateWheelSize();
  } else if (lastupdate == "height") {
    updateRideHeight();
  }
}

window.oncontextmenu = (e) => {
  e.preventDefault();
  $.post('http://wizating_stancer/close');
}

$(document).on("input", "#bgimg", function( ) {
  var data = $("#bgimg").val();
  main.setProperty('--Stancer-Background',"url("+data+")");
  
});  

$(document).on("input", "#themeslider-colour", function( ) {
  var data = $("#themeslider-colour").val();
  main.setProperty('--Slider-Background', data);
});  

$(document).on("input", "#border-colour", function( ) {
  var data = $("#border-colour").val();
  main.setProperty('--MainBorder', data); 
});  

$(document).on("input", "#maintext-colour", function( ) {
  var data = $("#maintext-colour").val();
  main.setProperty('--MainText', data);
});  
$(document).on("input", "#subtext-colour", function( ) {
  var data = $("#subtext-colour").val();
  main.setProperty('--SubText', data); 
}); 

$(document).on("input", "#bgcolour-colour", function( ) {
  var data = $("#bgcolour-colour").val();
  main.setProperty('--BgColour', data);
});  

$(document).on("input", "#buttontext-colour", function( ) {
  var data = $("#buttontext-colour").val();
  main.setProperty('--ButtonText', data); 
});

$(document).on("input", "#mainbg-colour", function( ) {
  var data = $("#mainbg-colour").val();
 main.setProperty('--MainBG', data);
});  

$(document).on("input", "#subbg-colour", function( ) {
  var data = $("#subbg-colour").val();
 main.setProperty('--SubBG', data);
});  


$(document).on("input", "#buttonbackground-colour", function( ) {
  var data = $("#buttonbackground-colour").val();
 main.setProperty('--ButtonBG', data);
});  

$(document).on("input", "#tabtext-colour", function( ) {
  var data = $("#tabtext-colour").val();
  main.setProperty('--TabText', data);

});

$(document).on("input", "#themesliderpin-colour", function( ) {
  var data = $("#themesliderpin-colour").val();
  main.setProperty('--Slider', data);
});

$(document).on("input", "#buttonborder-colour", function( ) {
  var data = $("#buttonborder-colour").val();
  main.setProperty('--Border', data);

;
});

$(document).on("input", "#underline-colour", function( ) {
  var data = $("#underline-colour").val();
  main.setProperty('--UnderLine', data);
});

$(document).on("input", "#hovermain-colour", function( ) {
  var data = $("#hovermain-colour").val();

  main.setProperty('--SliderHover', data);
  main.setProperty('--SliderHoverMain', data);
 
});

$(document).on("input", "#hover-colour", function( ) {
  var data = $("#hover-colour").val();
  main.setProperty('--Hover', data);
});

$(document).on("input", "#hovertext-colour", function( ) {
  var data = $("#hovertext-colour").val();
  main.setProperty('--HoverText', data);
});

$(document).on("mouseup", ".preset-header", function( ) {
  var presetParent = $(this);
  current =  parseInt(presetParent.attr("id")); 
  var r = getComputedStyle(document.documentElement);
  var BackgroundColour = r.getPropertyValue("--ButtonBG");
  var BorderColour = r.getPropertyValue("--Border");
  var ButtonText = r.getPropertyValue("--ButtonText");
  $(".preset-header").css("background-color", BackgroundColour);
  $(".preset-header").css("border", BorderColour+" 0.1rem solid");
  $(".preset-header").css("color", ButtonText);
  
  $(this).css("border", "var(--Hover) 0.1rem solid");
  $(this).css("background-color", "var(--Hover)");
  $(this).css("color", "var(--HoverText)");
});  


 
function save() {
  $.post('http://wizating_stancer/save', JSON.stringify({camber : camberamount , offset : offsetamount , wheelwidth : wheelWidthamount , wheelsize : wheelSizeamount , rideheight : rideHeightamount}));
}

function updateui(nuifocus) {
  $.post('http://wizating_stancer/updateui', JSON.stringify({nuifocus}));
}

function savePreset() {
  $.post('http://wizating_stancer/savepreset', JSON.stringify({
    name : $("#presetname").val(),
    camber : camberamount , 
    offset : offsetamount , 
    wheelwidth : wheelWidthamount , 
    wheelsize : wheelSizeamount , 
    rideheight : rideHeightamount
  }));
}

function saveTheme() {
  var r = getComputedStyle(document.documentElement);
  $.post('http://wizating_stancer/savetheme', JSON.stringify({
    Ypos : r.getPropertyValue("--StancerYpos"),
    Xpos : r.getPropertyValue("--StancerXpos"),
    image : $('#bgimg').val(),
    BackgroundColour : r.getPropertyValue("--BgColour"),
    MainBorder : r.getPropertyValue("--MainBorder"),
    Border : r.getPropertyValue("--Border"),
    MainText : r.getPropertyValue("--MainText"),
    ButtonText : r.getPropertyValue("--ButtonText"),
    TabText : r.getPropertyValue("--TabText"),
    SubText : r.getPropertyValue("--SubText"),
    MainBG : r.getPropertyValue("--MainBG"),
    ButtonBG : r.getPropertyValue("--ButtonBG"),
    SubBG : r.getPropertyValue("--SubBG"),    
    UnderLine : r.getPropertyValue("--UnderLine"),  
    SliderBackground : r.getPropertyValue("--Slider-Background"),
    Slider : r.getPropertyValue("--Slider"),
    Hover : r.getPropertyValue("--Hover"),
    HoverText : r.getPropertyValue("--HoverText"),
    SliderHoverMain : r.getPropertyValue("--SliderHoverMain"),
    SliderHover : r.getPropertyValue("--SliderHover")
  }));
}

function setTheme(data) {
  main.setProperty('--StancerYpos', data.Ypos);
  main.setProperty('--StancerXpos', data.Xpos);
  main.setProperty('--Stancer-Background', 'url('+data.image+')');
  main.setProperty('--MainBorder', data.MainBorder);
  main.setProperty('--Border', data.Border);
  main.setProperty('--MainText', data.MainText);
  main.setProperty('--ButtonText', data.ButtonText);
  main.setProperty('--TabText', data.TabText);
  main.setProperty('--SubText', data.SubText);
  main.setProperty('--BgColour', data.BackgroundColour);
  main.setProperty('--MainBG', data.MainBG);
  main.setProperty('--ButtonBG', data.ButtonBG);
  main.setProperty('--SubBG', data.SubBG);
  main.setProperty('--UnderLine', data.UnderLine);
  main.setProperty('--Slider', data.Slider);
  main.setProperty('--Slider-Background', data.SliderBackground);
  main.setProperty('--Hover', data.Hover);
  main.setProperty('--HoverText', data.HoverText);
  main.setProperty('--SliderHoverMain', data.SliderHoverMain);
  main.setProperty('--SliderHover', data.SliderHover);
  $("#bgimg").val(data.image);
  $("#bgcolour-colour").val(data.BackgroundColour);
  $("#border-colour").val(data.MainBorder);
  $("#buttonborder-colour").val(data.Border);
  $("#maintext-colour").val(data.MainText);
  $("#buttontext-colour").val(data.ButtonText);
  $("#tabtext-colour").val(data.TabText);
  $("#subtext-colour").val(data.SubText);
  $("#mainbg-colour").val(data.MainBG);
  $("#buttonbackground-colour").val(data.ButtonBG);
  $("#subbg-colour").val(data.SubBG);
  $("#underline-colour").val(data.UnderLine);
  $("#themeslider-colour").val(data.SliderBackground);
  $("#themesliderpin-colour").val(data.Slider);
  $("#hover-colour").val(data.Hover);
  $("#hovertext-colour").val(data.HoverText);
  $("#hovermain-colour").val(data.SliderHoverMain); 
}

function defaultTheme() {
  $.post('http://wizating_stancer/deleteThemeConfirmation', JSON.stringify({}));

  main.setProperty('--StancerYpos', "var(--DefaultStancerYpos)");
  main.setProperty('--StancerXpos', "var(--DefaultStancerXpos)");
  main.setProperty('--Stancer-Background', "var(--DefaultStancer-Background)");
  main.setProperty('--BgColour', "var(--DefaultBgColour)");
  main.setProperty('--MainBorder', "var(--DefaultMainBorder)"); 
  main.setProperty('--Border', "var(--DefaultBorder)");  
  main.setProperty('--MainText', "var(--DefaultMainText)"); 
  main.setProperty('--ButtonText', "var(--DefaultButtonText)"); 
  main.setProperty('--TabText', "var(--DefaultTabText)"); 
  main.setProperty('--SubText', "var(--DefaultSubText)");  
  main.setProperty('--MainBG', "var(--DefaultMainBG)"); 
  main.setProperty('--ButtonBG', "var(--DefaultButtonBG)"); 
  main.setProperty('--SubBG', "var(--DefaultSubBG)");
  main.setProperty('--UnderLine', "var(--DefaultUnderLine)"); 
  main.setProperty('--Slider-Background', "var(--DefaultSlider-Background)");
  main.setProperty('--Slider', "var(--DefaultSlider)");  
  main.setProperty('--Hover', "var(--DefaultHover)");
  main.setProperty('--HoverText', "var(--DefaultHoverText)");  
  main.setProperty('--SliderHoverMain', "var(--DefaultSliderHoverMain)");
  main.setProperty('--SliderHover', "var(--DefaultSliderHover)");
  var r = getComputedStyle(document.documentElement) 
  var defTable = {
    image : r.getPropertyValue("--DefaultStancer-IMGtext"),
    BackgroundColour : r.getPropertyValue("--DefaultBgColour"),
    MainBorder : r.getPropertyValue("--DefaultMainBorder"),
    Border : r.getPropertyValue("--DefaultBorder"),
    MainText : r.getPropertyValue("--DefaultMainText"),
    ButtonText : r.getPropertyValue("--DefaultButtonText"),
    TabText : r.getPropertyValue("--DefaultTabText"),
    SubText : r.getPropertyValue("--DefaultSubText"),
    MainBG : r.getPropertyValue("--DefaultMainBG"),
    ButtonBG : r.getPropertyValue("--DefaultButtonBG"),
    SubBG : r.getPropertyValue("--DefaultSubBG"),    
    UnderLine : r.getPropertyValue("--DefaultUnderLine"),  
    SliderBackground : r.getPropertyValue("--DefaultSlider-Background"),
    Slider : r.getPropertyValue("--DefaultSlider"),
    Hover : r.getPropertyValue("--DefaultHover"),
    HoverText : r.getPropertyValue("--DefaultHoverText"),
    SliderHoverMain : r.getPropertyValue("--DefaultSliderHoverMain"),
    SliderHover : r.getPropertyValue("--DefaultSliderHover")
  }

  $("#bgimg").val(defTable.image);
  $("#bgcolour-colour").val(defTable.BackgroundColour);
  $("#border-colour").val(defTable.MainBorder);
  $("#buttonborder-colour").val(defTable.Border);
  $("#maintext-colour").val(defTable.MainText);
  $("#buttontext-colour").val(defTable.ButtonText);
  $("#tabtext-colour").val(defTable.TabText);
  $("#subtext-colour").val(defTable.SubText);
  $("#mainbg-colour").val(defTable.MainBG);
  $("#buttonbackground-colour").val(defTable.ButtonBG);
  $("#subbg-colour").val(defTable.SubBG);
  $("#underline-colour").val(defTable.UnderLine);
  $("#themeslider-colour").val(defTable.SliderBackground);
  $("#themesliderpin-colour").val(defTable.Slider);
  $("#hover-colour").val(defTable.Hover);
  $("#hovertext-colour").val(defTable.HoverText);
  $("#hovermain-colour").val(defTable.SliderHoverMain); 
}

function noTheme() {
 var r = getComputedStyle(document.documentElement) 
  var defTable = {
    image : $('#bgimg').val(),
    BackgroundColour : r.getPropertyValue("--DefaultBgColour"),
    MainBorder : r.getPropertyValue("--DefaultMainBorder"),
    Border : r.getPropertyValue("--DefaultBorder"),
    MainText : r.getPropertyValue("--DefaultMainText"),
    ButtonText : r.getPropertyValue("--DefaultButtonText"),
    TabText : r.getPropertyValue("--DefaultTabText"),
    SubText : r.getPropertyValue("--DefaultSubText"),
    MainBG : r.getPropertyValue("--DefaultMainBG"),
    ButtonBG : r.getPropertyValue("--DefaultButtonBG"),
    SubBG : r.getPropertyValue("--DefaultSubBG"),    
    UnderLine : r.getPropertyValue("--DefaultUnderLine"),  
    SliderBackground : r.getPropertyValue("--DefaultSlider-Background"),
    Slider : r.getPropertyValue("--DefaultSlider"),
    Hover : r.getPropertyValue("--DefaultHover"),
    HoverText : r.getPropertyValue("--DefaultHoverText"),
    SliderHoverMain : r.getPropertyValue("--DefaultSliderHoverMain"),
    SliderHover : r.getPropertyValue("--DefaultSliderHover")
  }

  $("#bgimg").val(defTable.image);
  $("#bgcolour-colour").val(defTable.BackgroundColour);
  $("#border-colour").val(defTable.MainBorder);
  $("#buttonborder-colour").val(defTable.Border);
  $("#maintext-colour").val(defTable.MainText);
  $("#buttontext-colour").val(defTable.ButtonText);
  $("#tabtext-colour").val(defTable.TabText);
  $("#subtext-colour").val(defTable.SubText);
  $("#mainbg-colour").val(defTable.MainBG)
  $("#buttonbackground-colour").val(defTable.ButtonBG)
  $("#subbg-colour").val(defTable.SubBG)
  $("#underline-colour").val(defTable.UnderLine)
  $("#themeslider-colour").val(defTable.SliderBackground) 
  $("#themesliderpin-colour").val(defTable.Slider)
  $("#hover-colour").val(defTable.Hover)
  $("#hovertext-colour").val(defTable.HoverText)
  $("#hovermain-colour").val(defTable.SliderHoverMain) 
}

function updateCamber() {
  $.post('http://wizating_stancer/wizating:stancer:wheelcamber', JSON.stringify({ currentwheelid, camberamount, stancerMode }));
}

function updateOffset() {
  $.post('http://wizating_stancer/wizating:stancer:wheeloffset', JSON.stringify({ currentwheelid, offsetamount, stancerMode }));
}

function updateWheelWidth() {
  $.post('http://wizating_stancer/wizating:stancer:wheelwidth', JSON.stringify({ currentwheelid, wheelWidthamount }));
}

function updateWheelSize() {
  $.post('http://wizating_stancer/wizating:stancer:wheelsize', JSON.stringify({ currentwheelid, wheelSizeamount }));
}

function updateRideHeight() {
  $.post('http://wizating_stancer/wizating:stancer:rideheight', JSON.stringify({ currentwheelid, rideHeightamount }));
}


function activatePreset() {
  if (current > 0) {
   $.post("http://wizating_stancer/selectpreset", JSON.stringify({id: current}));
  }
}

function removePreset() {
  if (current > 0) {
   $.post("http://wizating_stancer/removepreset", JSON.stringify({id: current}));
  }
}

function activateDefault() {
  $.post("http://wizating_stancer/activatedefault", JSON.stringify({}));
}

function presets() {
  if (presetClosed) {
    if (themeClosed) {
      openPresets(true);
    }else {
      openThemes(false);
      openPresets(true);
    }
  } else {
    openPresets(false);
  }
}

function theme() {
  if (themeClosed) {
    if (presetClosed) {
     openThemes(true);
    } else {
      openPresets(false);
      openThemes(true);
    }  
  } else {
    openThemes(false);
  }
}

function changemode() {
  stancerMode = stancerMode + 1
  if (stancerMode >= 4) {
   stancerMode = 1;
  }
  pictureChange();
 }

function pictureChange() {
  if (stancerMode == 1) {
    if (currentwheelid == 0) {
      document.getElementById("modeimg").src="images/fl.png";
    } else  if (currentwheelid == 1) {
      document.getElementById("modeimg").src="images/fr.png";
    } else  if (currentwheelid == 2) {
      document.getElementById("modeimg").src="images/rl.png";
    } else  if (currentwheelid == 3) {
      document.getElementById("modeimg").src="images/rr.png";
    } 
  }else if (stancerMode == 2) { 
    if  ( currentwheelid == 0 || currentwheelid == 1)  {
      document.getElementById("modeimg").src="images/flfr.png";
    }else if  ( currentwheelid == 2 || currentwheelid == 3)  {
      document.getElementById("modeimg").src="images/rlrr.png";
    }
  } else if (stancerMode == 3) {
   document.getElementById("modeimg").src="images/all.png";
  }
}



function openPresets(data) {
  if (data) {
  presetClosed = false
  $(".sliders, .savebutton, .modeswitch, #mainbgmove").css("display", "none");
  $(".presetsMain").css("display", "block");
  $('.presets').empty();
  $(".presets").append("BACK");
 } else {
  presetClosed = true
  $(".sliders, .savebutton, .modeswitch").css("display", "block");
  $(".presetsMain").css("display", "none");
  $('.presets').empty();
  $(".presets").append("PRESETS");
 }
}

function openThemes(data) {
  if (data) {
    themeClosed = false;
    $(".sliders, .savebutton, .modeswitch").css("display", "none");
    $("#mainbgmove").css("display", "block");   
    $(".themesMain").css("display", "block");
    $('.theme').html("BACK");
  } else {
    themeClosed = true;
    $(".sliders, .savebutton, .modeswitch").css("display", "block");
    $("#mainbgmove").css("display", "none");
    $(".themesMain").css("display", "none");
    $('.theme').html("THEME");
  }
}


