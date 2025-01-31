
var current = ''


$(function() {
    window.addEventListener('message', function(event) {
     var data = event.data;
     var vehInfo = data.vehdata;
     if (data.type == "enableui") {  
      document.body.style.display = data.enable ? "block" : "none";
     
        $("#fTractionCurveMax").val(vehInfo.fTractionCurveMax);
        $("#fTractionCurveMin").val(vehInfo.fTractionCurveMin);
        $("#fTractionLossMult").val(vehInfo.fTractionLossMult);
        $("#fTractionCurveLateral").val(vehInfo.fTractionCurveLateral);
        $("#fTractionSpringDeltaMax").val(vehInfo.fTractionSpringDeltaMax);
        $("#fTractionBiasFront").val(vehInfo.fTractionBiasFront);
        $("#fLowSpeedTractionLossMult").val(vehInfo.fLowSpeedTractionLossMult);
        $("#fInitialDriveForce").val(vehInfo.fInitialDriveForce);
        $("#fDriveInertia").val(vehInfo.fDriveInertia);
        $("#fClutchChangeRateScaleUpShift").val(vehInfo.fClutchChangeRateScaleUpShift);
        $("#fClutchChangeRateScaleDownShift").val(vehInfo.fClutchChangeRateScaleDownShift);
        $("#fInitialDragCoeff").val(vehInfo.fInitialDragCoeff);
        $("#fInitialDriveMaxFlatVel").val(vehInfo.fInitialDriveMaxFlatVel);
        $("#fDriveBiasFront").val(vehInfo.fDriveBiasFront);
        $("#fBrakeForce").val(vehInfo.fBrakeForce);
        $("#fHandBrakeForce").val(vehInfo.fHandBrakeForce);
        $("#fBrakeBiasFront").val(vehInfo.fBrakeBiasFront);
        $("#fSuspensionForce").val(vehInfo.fSuspensionForce);
        $("#fSuspensionCompDamp").val(vehInfo.fSuspensionCompDamp);
        $("#fAntiRollBarForce").val(vehInfo.fAntiRollBarForce);
        $("#fAntiRollBarBiasFront").val(vehInfo.fAntiRollBarBiasFront);
        $("#fSuspensionUpperLimit").val(vehInfo.fSuspensionUpperLimit);
        $("#fSuspensionLowerLimit").val(vehInfo.fSuspensionLowerLimit);
        $("#fSteeringLock").val(vehInfo.fSteeringLock);
        $("#fRollCentreHeightRear").val(vehInfo.fRollCentreHeightRear);
        $("#fRollCentreHeightFront").val(vehInfo.fRollCentreHeightFront);
        $("#fSuspensionReboundDamp").val(vehInfo.fSuspensionReboundDamp);
        $("#fSuspensionRaise").val(vehInfo.fSuspensionRaise);
        $("#fSuspensionBiasFront").val(vehInfo.fSuspensionBiasFront); 
    }

    if (data.type == "presetsenable") {      
        $(".loaded-presets").html(event.data.presets);
    }

        if (data.type == "dyno") {      
         $("#dyno").css("display", "block")
         $('.hp-data').empty()
         $('.tq-data').empty()
         $('.hp-data').append(data.hp)
         $('.tq-data').append(data.tq)
        } 
        
        if (data.type == "dynooff") {
         $("#dyno").css("display", "none")
         $('.hp-data').empty()
         $('.tq-data').empty()
        }
    
    
    $(document).on("click", ".preset-header", function( ) {
        $(".preset-header").css("background-color", "rgba(0, 0, 0, 0.616)");
        $(this).css("background-color", "grey");
        var presetParent = $(this).parent();
        current =  parseInt(presetParent.attr("id"));    
    });    

  });
  
  document.onkeyup = function(data) {
   if (data.which == 27 ) {
    $.post('http://wizating_laptop/escape');
   }
  };
   
  window.oncontextmenu = (e) => {
    e.preventDefault()
    $.post('http://wizating_laptop/escape');
  }

 });
 
function removePreset() {
    $.post("http://wizating_laptop/deletepreset", JSON.stringify({id: current}));
}

function activateDefault() {
  $.post("http://wizating_laptop/resetpreset", JSON.stringify({id: current}));
}

function activatePreset() {
    $.post("http://wizating_laptop/selectpreset", JSON.stringify({id: current}));
}

function save() {
    $.post('http://wizating_laptop/save', JSON.stringify({ 
     fTractionCurveMax: $("#fTractionCurveMax").val(), 
     fTractionCurveMin: $("#fTractionCurveMin").val(), 
     fTractionLossMult: $("#fTractionLossMult").val(),
     fTractionCurveLateral: $("#fTractionCurveLateral").val(),
     fTractionSpringDeltaMax: $("#fTractionSpringDeltaMax").val(),
     fTractionBiasFront: $("#fTractionBiasFront").val(),
     fLowSpeedTractionLossMult: $("#fLowSpeedTractionLossMult").val(),
     fInitialDriveForce: $("#fInitialDriveForce").val(),
     fDriveInertia: $("#fDriveInertia").val(),
     fClutchChangeRateScaleUpShift: $("#fClutchChangeRateScaleUpShift").val(),
     fClutchChangeRateScaleDownShift: $("#fClutchChangeRateScaleDownShift").val(),
     fInitialDragCoeff: $("#fInitialDragCoeff").val(),
     fInitialDriveMaxFlatVel: $('#fInitialDriveMaxFlatVel').val(),
     fDriveBiasFront: $('#fDriveBiasFront').val(),
     fBrakeForce: $("#fBrakeForce").val(),
     fHandBrakeForce: $("#fHandBrakeForce").val(),
     fBrakeBiasFront: $("#fBrakeBiasFront").val(),
     fSuspensionForce: $("#fSuspensionForce").val(),
     fSuspensionCompDamp: $("#fSuspensionCompDamp").val(),
     fAntiRollBarForce: $("#fAntiRollBarForce").val(),
     fSuspensionUpperLimit: $("#fSuspensionUpperLimit").val(),
     fSuspensionLowerLimit: $("#fSuspensionLowerLimit").val(),
     fAntiRollBarBiasFront: $("#fAntiRollBarBiasFront").val(),
     fSteeringLock: $("#fSteeringLock").val(),
     fRollCentreHeightFront: $("#fRollCentreHeightFront").val(),
     fRollCentreHeightRear: $("#fRollCentreHeightRear").val(),
     fSuspensionReboundDamp: $("#fSuspensionReboundDamp").val(),
     fSuspensionRaise: $("#fSuspensionRaise").val(),
     fSuspensionBiasFront: $("#fSuspensionBiasFront").val(), 
    }));
  
}


function sharePreset() {
    if (current > 0) {
     $.post('http://wizating_laptop/sharepreset', JSON.stringify({ targetid : $("#playerid").val(), presetid: current}));
    } else {
        $.post('http://wizating_laptop/declinenopreset', JSON.stringify({})); 
    }
}

function savePreset() {
    $.post('http://wizating_laptop/savepreset', JSON.stringify({ 
        fTractionCurveMax: $("#fTractionCurveMax").val(), 
        fTractionCurveMin: $("#fTractionCurveMin").val(), 
        fTractionLossMult: $("#fTractionLossMult").val(),
        fTractionCurveLateral: $("#fTractionCurveLateral").val(),
        fTractionSpringDeltaMax: $("#fTractionSpringDeltaMax").val(),
        fTractionBiasFront: $("#fTractionBiasFront").val(),
        fLowSpeedTractionLossMult: $("#fLowSpeedTractionLossMult").val(),
        fInitialDriveForce: $("#fInitialDriveForce").val(),
        fDriveInertia: $("#fDriveInertia").val(),
        fClutchChangeRateScaleUpShift: $("#fClutchChangeRateScaleUpShift").val(),
        fClutchChangeRateScaleDownShift: $("#fClutchChangeRateScaleDownShift").val(),
        fInitialDragCoeff: $("#fInitialDragCoeff").val(),
        fInitialDriveMaxFlatVel: $('#fInitialDriveMaxFlatVel').val(),
        fDriveBiasFront: $('#fDriveBiasFront').val(),
        fBrakeForce: $("#fBrakeForce").val(),
        fHandBrakeForce: $("#fHandBrakeForce").val(),
        fBrakeBiasFront: $("#fBrakeBiasFront").val(),
        fSuspensionForce: $("#fSuspensionForce").val(),
        fSuspensionCompDamp: $("#fSuspensionCompDamp").val(),
        fAntiRollBarForce: $("#fAntiRollBarForce").val(),
        fSuspensionUpperLimit: $("#fSuspensionUpperLimit").val(),
        fSuspensionLowerLimit: $("#fSuspensionLowerLimit").val(),
        fAntiRollBarBiasFront: $("#fAntiRollBarBiasFront").val(),
        fSteeringLock: $("#fSteeringLock").val(),
        fRollCentreHeightFront: $("#fRollCentreHeightFront").val(),
        fRollCentreHeightRear: $("#fRollCentreHeightRear").val(),
        fSuspensionReboundDamp: $("#fSuspensionReboundDamp").val(),
        fSuspensionRaise: $("#fSuspensionRaise").val(),
        fSuspensionBiasFront: $("#fSuspensionBiasFront").val(), 
        name : $("#presetname").val()
    }));

}


function power() {
    $("#brakes").css("display", "none")
    $("#suspension").css("display", "none")
    $("#presets").css("display", "none")
    $("#traction").css("display", "none")
    $("#power").css("display", "block")
}

function traction() {
    $("#power").css("display", "none")
    $("#brakes").css("display", "none")
    $("#suspension").css("display", "none")
    $("#presets").css("display", "none")
    $("#traction").css("display", "block")
}

function brakes() {
    
    $("#suspension").css("display", "none")
    $("#presets").css("display", "none")
    $("#traction").css("display", "none")
    $("#power").css("display", "none")
    $("#brakes").css("display", "block")
}

function suspension() {
    
    $("#presets").css("display", "none")
    $("#traction").css("display", "none")
    $("#power").css("display", "none")
    $("#brakes").css("display", "none")
    $("#suspension").css("display", "block")
}

function presets() {
    $.post("http://wizating_laptop/loadpresets");
    $("#traction").css("display", "none")
    $("#power").css("display", "none")
    $("#brakes").css("display", "none")
    $("#suspension").css("display", "none")
    $("#presets").css("display", "block")
}

