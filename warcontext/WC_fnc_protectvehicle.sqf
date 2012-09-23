	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Client Side logic
	// -----------------------------------------------
	if (!isServer) exitWith{};

	private ["_vehicle", "_vehiclename", "_members"];

	_vehiclename = _this select 0;

	while { true } do {
		call compile format["_vehicle = %1;", _vehiclename];
		if !((name (driver _vehicle)) in wcfriendlist) then {
			(driver _vehicle) action ["getout",_vehicle];
		};
		sleep 4;
	};