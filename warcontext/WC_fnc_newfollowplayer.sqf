	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - radio marker
	// -----------------------------------------------
	private ["_arrayofplayer", "_radio", "_markersize", "_position", "_markerradio", "_marker", "_marker2", "_arrayofmarker", "_side", "_trg", "_list"];

	_trg = createTrigger["EmptyDetector", position player]; 
	_trg setTriggerArea[ 2000 , 2000,0,false];
	_trg setTriggerActivation["Any","PRESENT", true];
	_trg setTriggerStatements["this", "", ""];

	_arrayofmarker = [];

	while {true} do {
		_trg setpos (position player);
		{deletemarkerlocal _x;}foreach _arrayofmarker;
		_arrayofmarker = [];
		_list = list _trg;
		if (count _list > 0) then {
			{	
				if (isplayer _x) then {	
						if ((typeOf vehicle _x == "ACE_usarmy_medic") || (typeOf vehicle _x == "ACE_USMC_Soldier_Medic_D")) then {
							_marker = [(name _x), 0.4, position _x, 'ColorGreen', 'ICON', 'FDIAGONAL', 'defend', 0, (name _x), true] call WC_fnc_createmarkerlocal;

						} else {
							_marker = [(name _x), 0.4, position _x, 'ColorBlue', 'ICON', 'FDIAGONAL', 'dot', 0, (name _x), true] call WC_fnc_createmarkerlocal;
						};
						_arrayofmarker = _arrayofmarker + [_marker];
				};
			}foreach _list;
		};
		sleep 0.5;
	};