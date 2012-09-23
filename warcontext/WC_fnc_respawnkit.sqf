	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description:
	// Context: server side
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private [
		"_position",
		"_list",
		"_object",
		"_side"
	];
	
	_landingzone = [["kitfactory1", wcside], ["kitfactory2", wcside], ["kitfactory3", wcenemyside], ["kitfactory4", wcenemyside]];
	
	processInitCommands;

	while {!wcgameend} do {
		{
			_position = getmarkerpos (_x select 0);
			_side = _x select 1;
			_list = nearestObjects [_position, ["Misc_cargo_cont_net1"], 5];
			if(count _list == 0) then {
				_object = "Misc_cargo_cont_net1" createVehicle _position;
				if (_side == wcside) then {
					wcconstructionkitpositionW = getpos _object;
					publicvariable 'wcconstructionkitpositionW';
				} else {
					wcconstructionkitpositionE = getpos _object;
					publicvariable 'wcconstructionkitpositionE';
				};
			};
		}foreach _landingzone;
		sleep 120 + (random 240);
	};
	true;