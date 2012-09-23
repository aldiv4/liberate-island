	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description:
	// respawn vehicle at their original position
	// Context: server side
	// Xeno respawn reworks
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private [
		"_vehicle", 
		"_delay", 
		"_marker", 
		"_startpos", 
		"_startdir", 
		"_type", 
		"_disabled", 
		"_vehiclename",
		"_westside",
		"_move"
	];
	
	_vehicle = _this select 0;
	_delay = _this select 1;
	_marker = _this select 2;
	_startpos = getpos _vehicle;
	_startdir = getdir _vehicle;
	_type = typeof _vehicle;
	_vehiclename = vehicleVarName _vehicle;
	_move = 0;

	processInitCommands;

	while {true} do {
		if (count (crew _vehicle) == 0) then {
			_move = _move + 1;
			_disabled = (if (damage _vehicle > 0.9) then {true} else {false});
			if (_disabled || !(alive _vehicle) || ((_move > 30) and (getpos _vehicle distance _startpos > 10))) then {
				clearVehicleInit _vehicle;
				deletevehicle _vehicle;
				sleep 0.5;
				_vehicle = _type createvehicle _startpos;
				_vehicle setPosASL _startpos;
				_vehicle setdir _startdir;
				_vehicle setVehicleVarName _vehiclename;
				call Compile Format ["%1=_vehicle; PublicVariable '%1';", _vehiclename];
				processInitCommands;
				_move = 0;
			};
		}else{
			_move = 0;
		};
		sleep _delay;
	};