private ["_actor"];

_actor = _this select 0;

//init variables
PXS_SATELLITE_ZOOM=1000;
PXS_SATELLITE_FOV = 0.2;
PXS_SATELLITE_APR = 19.7;
PXS_SATELLITE_UP=0;
PXS_SATELLITE_DOWN=0;
PXS_SATELLITE_RIGHT=0;
PXS_SATELLITE_LEFT=0;
PXS_SATELLITE_ZNV = 0;
PXS_LAT = 0;
PXS_LON = 0;
PXS_DISTANCE = 0;

//start functions
[] exec "PXS_SATCOM\time_view.sqs";
[] exec "PXS_SATCOM\coordinates_view.sqs";
call compile preprocessFileLineNumbers "PXS_SATCOM\key_function.sqf";

//create action
_actor addAction ["Satellite view","PXS_SATCOM\start_satellite.sqf"];

exit;