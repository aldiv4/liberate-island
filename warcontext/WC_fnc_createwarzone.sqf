	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	 private ["_position", "_marker", "_wrecks", "_vehicle", "_typevehicle", "_dir", "_fortifications"];

	_marker = _this select 0;

	_wrecks = [
		"BMP2Wreck",
		"BRDMWreck",
		"HMMWVWreck",
		"LADAWreck",
		"Mi8Wreck",
		"SKODAWreck",
		"T72Wreck",
		"T72WreckTurret",
		"UAZWreck",
		"UH1Wreck",
		"UralWreck",
		"datsun01Wreck",
		"datsun02Wreck",
		"hiluxWreck",
		"Body",
		"Grave"
	];

	_fortifications = [
		"Hedgehog",
		"Fort_RazorWire",
		"Land_fort_rampart",
		"Land_fort_bagfence_long",
		"Land_fort_bagfence_corner",
		"Land_podlejzacka"
	];

	for "_x" from 0 to 20 step 1 do {
		_position = [_marker] call WC_fnc_createpositioninmarker;
		_dir = random 360;
		_typevehicle = _wrecks call BIS_fnc_selectRandom;
		_vehicle = _typevehicle createVehicle _position;
		_vehicle setdir _dir;
		wctownsalvation = wctownsalvation + [_vehicle];
		sleep 0.01;
	};

	for "_x" from 0 to 150 step 1 do {
		_position = [_marker] call WC_fnc_createpositioninmarker;
		_dir = random 360;
		_typevehicle = _fortifications call BIS_fnc_selectRandom;
		_vehicle = _typevehicle createVehicle _position;
		_vehicle setdir _dir;
		wctownsalvation = wctownsalvation + [_vehicle];
		sleep 0.01;
	};