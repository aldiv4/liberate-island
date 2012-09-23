	// -----------------------------------------------
	// Author:_arrayobjects =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------
	if !(local player) exitWith{};

	private [
		"_vehicle",
		"_object",
		"_arrayobjects",
		"_liftnotpermit",
		"_blacklist"
		];

	_vehicle = _this select 0;

	wcvehiclerelease = false;

	_liftnotpermit = ["ACE_MH6", "ACE_AH6", "ACE_HC130_N", "ACE_Stryker_ICV_MK19_SLAT", "ACE_M2A2_W", "ACE_M113A3", "MH60S","2S6M_Tunguska", "BMP2_Ambul_CDF", "BMP2_Ambul_INS", "BMP2_CDF", "BMP2_Gue", "BMP2_HQ_CDF", "BMP2_HQ_INS", "BMP2_INS", "BMP3", "M1A1", "M1A2_TUSK_MG", "MLRS", "T34", "T72_CDF", "T72_Gue", "T72_INS", "T72_RU", "T90", "ZSU_CDF", "ZSU_INS", "MV22", "MtvrRefuel", "MtvrReammo", "MtvrRepair", "KamazRefuel", "KamazReammo", "KamazRepair", "KamazOpen"];

	if((getpos _vehicle) select 2 > 3 and (getpos _vehicle) select 2 < 20) then {
		_object = objNull;
		_arrayobjects = nearestObjects [_vehicle, ["LandVehicle", "Misc_cargo_cont_net1"],40];
		if (count _arrayobjects > 0) then {
			_object = _arrayobjects select 0;
			if (typeof _object in _liftnotpermit) exitwith {hint format["%1 can not be lift", typeof _object]}; 
			_vehicle vehicleChat format["Lift: %1", typeof (_arrayobjects select 0)];
			_object attachTo [_vehicle, [0,0,-10]];
			_vehicle removeAction (_this select 2);
			_vehicle addaction ["unlift","warcontext\WC_fnc_heliunlift.sqf",[],6,false];

		};
		waituntil {wcvehiclerelease or !alive _vehicle};
		_vehicle vehicleChat format["Unlift: %1", typeof _object];
		wcvehiclerelease = false;
		detach _object;
		if (typeof _object == "Misc_cargo_cont_net1") then {
			_object setpos [(position _object select 0), (position _object select 1), 0];
		};
		wcmenulift = _vehicle addaction ["Lift","warcontext\WC_fnc_helilift.sqf",[],6,false];	
	};
	true;