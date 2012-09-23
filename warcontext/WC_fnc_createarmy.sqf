
	private ["_unitsofgroup", "_leader", "_arrayofplayer", "_radio", "_markersize", "_position", "_markerradio", "_marker", "_marker2", "_arrayofmarker", "_side", "_trg", "_list"];

	_position = _this select 0;

	_unitsofgroup = [
		"RU_Commander",
		"RU_Soldier_AR",
		"RU_Soldier_AR",
		"RU_Soldier_AT",
		"RU_Soldier_AT",
		"RU_Soldier_GL",
		"RU_Soldier_HAT",
		"RU_Soldier_MG",
		"RU_Soldier_Marksman",
		"RU_Soldier_AA",
		"RU_Soldier_AA",
		"RU_Soldier_LAT"
		];

	_trg = createTrigger["EmptyDetector", position player]; 
	_trg setTriggerArea[ 2000 , 2000,0,false];
	_trg setTriggerActivation["BLUEFOR","PRESENT", true];
	_trg setTriggerStatements["this", "", ""];

	_group = createGroup wcenemyside;

	for "_x" from 1 to 32 step 1 do {
		_soldiertype = _unitsofgroup call BIS_fnc_selectRandom;
		_soldier = _group createUnit [_soldiertype , _position, [], 0, 'FORM'];
		_soldier setVariable ['togarbage', true, true];
		_soldier addeventhandler ['killed', {
			_this spawn WC_fnc_garbagecollector;
			 wccivilkilled =  wccivilkilled + 1;
		}];
	};

	while { count (units _group) > 1} do {
		_leader = leader _group;
		_trg setpos (position _leader);
		_list = list _trg;
		if (count _list > 0) then {
			_leader domove (position (_list select 0));
			_leader commandFire (_list select 0);
		};
		sleep 30;
	};