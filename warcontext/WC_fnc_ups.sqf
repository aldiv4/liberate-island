	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Liberate Island
	// -----------------------------------------------
	if (!isServer) exitWith{};

	_marker = _this select 0;
	_group = _this select 1;

	WC_DETECTION = [_group] spawn {
		_group = _this select 0;
		while { true } do {
			_arrayofobject = (leader _group) nearTargets 1000;
			if (count _arrayofobject > 0) then {
				_enemy = (_arrayofobject select 0) select 4;
				{
				(leader _x) reveal _enemy;
				(leader _x) doTarget _enemy;
				(leader _x) dofire _enemy;
				}foreach wcgroups;
			};
			sleep 1;
		};
	};


	while { count (units _group) > 0} do {
		_position = [_marker, "onground", "onflat"] call WC_fnc_createpositioninmarker;
		(leader _group) domove _position;
		sleep 60;
	};

	terminate WC_DETECTION;
