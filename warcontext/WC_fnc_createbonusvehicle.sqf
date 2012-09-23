	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Enhancement with Xeno script x_playerweapons.sqf
	// -----------------------------------------------
	
	private ["_typevehicle", "_vehicle", "_side", "_position", "_list", "_bonuslist", "_landingzone", "_missiles"];

	_landingzone = "bonusAirW";
	_bonuslist = ["A10", "AH1Z", "AV8B", "AV8B2", "F35B", "AAV", "LAV25", "M1A1", "M1A2_TUSK_MG"];

	_typevehicle = _bonuslist call BIS_fnc_selectRandom;

	_position = getmarkerpos _landingzone;
	_list = nearestObjects [_position, ["Air", "Tank", "Landvehicle"], 5];

	if(count _list == 0) then {
		_vehicle = _typevehicle createVehicle _position;
	};

	true;