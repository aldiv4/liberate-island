	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Liberate Island
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private [
		"_civil",
		"_location", 
		"_distance", 
		"_distancemin", 
		"_lastposition", 
		"_marker", 
		"_markername",
		"_arrayofobject",
		"_object"
	];

	_civil = _this select 0;

	_arrayofobject = [];

	while {alive _civil} do {
		_arrayofobject = nearestObjects [_civil, ["LandVehicle", "Air"], 100];
		if (count _arrayofobject > 0 && _civil distance WHOSPITAL > 100) then {
				if ((getposatl (_arrayofobject select 0) select 2) < 1) then {
					_civil assignAsCargo (_arrayofobject select 0);
					[_civil] orderGetIn true;
				};
		} else {
			if (_civil distance WHOSPITAL < 100) then {
				_civil domove position WHOSPITAL;
			} else {
				_civil domove position _civil;
				unassignVehicle _civil;
			};
		};
		if (_civil distance (getmarkerpos WBASE) < 200 && ((getposatl _civil) select 2) < 1) then {
			_civil action ["eject", vehicle _civil];
			_civil domove position WHOSPITAL;
		};
		if (_civil distance WHOSPITAL < 8) then {
			deletevehicle _civil;
			wcscoreT = wcscoreT + 1;
			publicvariable 'wcscoreT';


			switch (typeof _civil) do {
				case "Doctor": {
					wcglobalscore = wcglobalscore + 20;
				};
				case "Policeman": {
					wcglobalscore = wcglobalscore + 20;
				};
				case "Priest": {
					wcglobalscore = wcglobalscore + 20;
				};
				case "RU_Policeman": {
					wcglobalscore = wcglobalscore + 20;
				};
				case "RU_Priest": {
					wcglobalscore = wcglobalscore + 20;
				};
				case "RU_Doctor": {
					wcglobalscore = wcglobalscore + 20;
				};
				default {
					wcglobalscore = wcglobalscore + 10;
				};
			};	
			publicvariable 'wcglobalscore';
		};
		sleep random 4;
	};

	true;