	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description: Do weather 
	// context: server side
	// -----------------------------------------------

	private ["_rain", "_fog", "_overcast", "_datestamp"];

	if (!wcrandomweather) exitwith {};

	while {!wcgameend} do {
		_rain = random 1;
		_fog  = random 0.8;
		_overcast = random 1;
		wcweather = [_rain, _fog, _overcast];
		publicvariable "wcweather";
		if(wcfasttime) then {
			skiptime 0.10;
		};
		wcdate = date;
		publicvariable "wcdate";
		sleep random 300;
	};