	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	 private ["_flag", "_position"];

	_position = _this select 0;

	_flag = createVehicle ["FlagCarrierRU", [_position select 0, _position select 1], [], 30, "NONE"];
	
	_flag setVehicleInit "this addAction ['Change Flag', 'warcontext\WC_fnc_changeflag.sqf', [], -1, false, true, ''];";

	processInitCommands;

	_flag;