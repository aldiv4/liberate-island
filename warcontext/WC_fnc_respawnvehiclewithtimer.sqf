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
		"_counter"
	];
	
	_vehicle = _this select 0;
	_delay = _this select 1;
	_marker = _this select 2;
	_startpos = getposasl _vehicle;
	_startdir = getdir _vehicle;
	_type = typeof _vehicle;
	_vehiclename = vehicleVarName _vehicle;
	_counter = 0;

	_westside = ["US1", "US2", "US3", "US4", "US5", "US6", "US7", "US8", "US9", "HQ1", "HQ2", "US11", "US12", "US13", "US14", "US15", "US16", "US17", "US18", "US19", "US20", "US21", "US22", "US23", "US24", "US25", "US26", "US27", "US28", "US29", "US30", "US31", "US32", "US33", "US34", "US35", "US36", "US37", "US38", "US39", "US40", "US41", "US42", "US43", "US44", "US45", "US46", "US47"];

	wcgarbage = [_vehicle] spawn WC_fnc_checkairweapons;
	_vehicle addeventhandler ['killed', { wcgarbage = [_this select 0, _this select 1] spawn WC_fnc_checkspotterW; }];
	_vehicle addeventhandler ['hit', { wcgarbage = [_this select 0, _this select 1] spawn WC_fnc_checkspotterW; }];
	
	processInitCommands;

	while {true} do {
		if (({alive _x} count (crew _vehicle)) == 0) then {
			_disabled = (if (damage _vehicle > 0.9) then {true} else {false});
			if (_disabled || !(alive _vehicle) || _counter > 120) then {
				sleep (_delay + random 15);
				clearVehicleInit _vehicle;
				deletevehicle _vehicle;
				sleep 0.5;
				_vehicle = _type createvehicle _startpos;
				_vehicle setPosASL _startpos;
				_vehicle setdir _startdir;
				_vehicle setVehicleVarName _vehiclename;
				call Compile Format ["%1=_vehicle; PublicVariable '%1';", _vehiclename];
				processInitCommands;
				if(_vehiclename in _westside) then {
					wcgarbage = [1, wcenemyside] spawn WC_fnc_score;
				} else {
					wcgarbage = [1, wcside] spawn WC_fnc_score;
				};
				wcgarbage = [_vehicle] spawn WC_fnc_checkairweapons;
				_vehicle addeventhandler ['killed', { wcgarbage = [_this select 0, _this select 1] spawn WC_fnc_checkspotterW; }];
				_vehicle addeventhandler ['hit', { wcgarbage = [_this select 0, _this select 1] spawn WC_fnc_checkspotterW; }];
				_counter = 0;
			};
			sleep 1;
		};
		sleep 1;
	};