	// -----------------------------------------------
	// Author:_arrayobjects =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------
	if !(local player) exitWith{};

	private [
		"_vehicle",
		"_object",
		"_arrayobjects",
		"_action", 
		"_position",
		"_mydir",
		"_fuel"
		];

	_vehicle = _this select 0;
	_action = _this select 3;

	if (_action == "load") then {
		_arrayobjects = nearestObjects [_vehicle, ["Misc_cargo_cont_net1"], 10];
		if (count _arrayobjects > 0) then {
			_fuel = fuel _vehicle;
			_vehicle vehicleChat "Loading Kit...";
			_vehicle setfuel 0;
			sleep 5;
			_vehicle setfuel _fuel;
		};
		if (count _arrayobjects > 2) then {
			_object = _arrayobjects select 2;
			_object attachTo [_vehicle, [0,-2,0.5]];
		} else {
			if (count _arrayobjects > 1) then {
				_object = _arrayobjects select 1;
				_object attachTo [_vehicle, [0,-0.5,0.5]];
			} else {
				if (count _arrayobjects > 0) then {
					_object = _arrayobjects select 0;
					_object attachTo [_vehicle, [0,1,0.5]];
				};
			};
		};
	} else {
		_arrayobjects = nearestObjects [_vehicle, ["Misc_cargo_cont_net1"], 3];
		if (count _arrayobjects > 0) then {
			_fuel = fuel _vehicle;
			_vehicle vehicleChat "Unloading Kit...";
			_vehicle setfuel 0;
			sleep 5;
			_vehicle setfuel _fuel;
			_object = _arrayobjects select 0;
			detach _object;
			_mydir = getdir _vehicle;
			_position =  [(getposatl _vehicle select 0) + (sin _mydir * 10), (getposatl _vehicle select 1) + (cos _mydir * 10), (getposatl _vehicle) select 2];
			_object setposatl _position;
		};
	};
	true;