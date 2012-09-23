	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	 private ["_radio", "_mydir", "_position", "_player", "_side"];

	_position = _this select 0;
	_side = _this select 1;

	if(_side == wcside) then {
		wcradioW = "CDF_WarfareBUAVterminal" createVehicle _position;
		wcradioW setposatl _position;
		wcradioW setVectorUp [0,0,1];
		wcgarbage = [wcradioW, wcside] spawn WC_fnc_checkradioalive;
		publicvariable "wcradioW";
		wcradioW setVehicleInit "this addAction ['Hack radio', 'warcontext\WC_fnc_hackradio.sqf', [], -1, false, true, ''];";
		processInitCommands;
		wcmessageW = "West radio is deployed";
		publicvariable "wcmessageW";
	} else {
		wcradioE = "INS_WarfareBUAVterminal" createVehicle _position;
		wcradioE setposatl _position;
		wcradioE setVectorUp [0,0,1];
		wcgarbage = [wcradioE, wcenemyside] spawn WC_fnc_checkradioalive;
		publicvariable "wcradioE";
		wcradioE setVehicleInit "this addAction ['Hack radio', 'warcontext\WC_fnc_hackradio.sqf', [],-1, false, true, ''];";
		processInitCommands;
		wcmessageE = "East radio is deployed";
		publicvariable "wcmessageE";
	};