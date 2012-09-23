private [];

//set view distance
PXS_DISTANCE = viewDistance;
setViewDistance 3000;

//view dialog interference
createDialog "PXS_RscSatellite";

[] execVM "PXS_SATCOM\light.sqf";
[] execVM "PXS_SATCOM\key_main.sqf";

//start view satellite
PXS_SATELLITE_CAM = "camera" camcreate [0,0,0];
PXS_SATELLITE_CAM cameraEffect ["internal","back"];
PXS_SATELLITE_CAM camPrepareTarget [(getPos PXS_SATELLITE_TARGET select 0)-1, (getPos PXS_SATELLITE_TARGET select 1)+1, getPos PXS_SATELLITE_TARGET select 2];
PXS_SATELLITE_CAM camSetPos [getPos PXS_SATELLITE_TARGET select 0, getPos PXS_SATELLITE_TARGET select 1, (getPos PXS_SATELLITE_TARGET select 2)+PXS_SATELLITE_ZOOM];
PXS_SATELLITE_CAM camPrepareFOV PXS_SATELLITE_FOV;
PXS_SATELLITE_CAM camCommitPrepared 0;

PXS_LAT = (round (10*(getPos PXS_SATELLITE_TARGET select 0)))/10;
PXS_LON = (round (10*(getPos PXS_SATELLITE_TARGET select 1)))/10;

showCinemaBorder false;

ppEffectDestroy ppColor;
ppEffectDestroy ppInversion;
ppEffectDestroy ppGrain;

ppGrain = ppEffectCreate ["filmGrain", 2005];
ppGrain ppEffectEnable true;
ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
ppGrain ppEffectCommit 0;

exit;	