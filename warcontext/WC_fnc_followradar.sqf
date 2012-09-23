	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------

	private ["_trgradar", "_marker", "_markersize", "_markername","_position", "_marker2"];

	_trgradar = createTrigger["EmptyDetector", [0,0,0]];
	_trgradar setTriggerArea[0,0,0,false];
	_trgradar setTriggerActivation["ANY", "PRESENT", TRUE];
	_trgradar setTriggerStatements["this", "", ""];

	// INIT MARKERS
	if (wcplayerside == wcside) then {
		_markersize = 0;
		_position = [0,0,0];
		_marker = ["RADARFIELDW", _markersize, _position, 'ColorBLUE', 'ELLIPSE', 'FDIAGONAL', '', 0, '', true] call WC_fnc_createmarkerlocal;
		_marker2 = ['radarW', 0.5, _position, 'ColorYellow', 'ICON', 'FDIAGONAL', 'Flag', 0, 'radar'] call WC_fnc_createmarkerlocal;
	} else {
		_markersize = 0;
		_position = [0,0,0];
		_marker = ["RADARFIELDE", _markersize, _position, 'ColorBLUE', 'ELLIPSE', 'FDIAGONAL', '', 0, '', true] call WC_fnc_createmarkerlocal;
		_marker2 = ['radarE', 0.5, _position, 'ColorYellow', 'ICON', 'FDIAGONAL', 'Flag', 0, 'radar'] call WC_fnc_createmarkerlocal;
	};

	while {!wcgameend} do {
		if (wcplayerside == wcside) then {
			if(alive wcradarW) then {
				_markersize = [(getposasl wcradarW) select 2] call WC_fnc_checkcoverage;
				_marker setmarkerposlocal (getpos wcradarW);
				_marker setmarkersizelocal [_markersize, _markersize];
				_marker2 setmarkerposlocal (getpos wcradarW);

				_trgradar setpos (position wcradarW);
				_trgradar setTriggerArea[_markersize,_markersize,0,false];

				if(count (list _trgradar) > 0) then {
					{
						if (_x iskindof "AIR" and format["%1", name _x] != "Error: No unit") then {
							_position = position _x;
							_markername = format["%1", name _x];
							wcgarbage = [_markername, 0.5, _position, 'ColorRed', 'ICON', 'FDIAGONAL', 'dot', 0, 'air'] spawn WC_fnc_createmarkerlocalanddelete;
						};
					}foreach (list _trgradar);
				};
			} else {
				_marker setmarkerposlocal [0,0,0];
				_marker setMarkerTypelocal "EMPTY";
				_marker2 setmarkerposlocal [0,0,0];
				_trgradar setpos [0,0,0];
				_trgradar setTriggerArea[0,0,0,false];
			};
		} else {
			if(alive wcradarE) then {
				_markersize = [(getposasl wcradarE) select 2] call WC_fnc_checkcoverage;
				_marker setmarkerposlocal (getpos wcradarE);
				_marker setmarkersizelocal [_markersize, _markersize];
				_marker2 setmarkerposlocal (getpos wcradarE);

				_trgradar setpos (position wcradarE);
				_trgradar setTriggerArea[_markersize,_markersize,0,false];

				if(count (list _trgradar) > 0) then {
					{
						if (_x iskindof "AIR" and format["%1", name _x] != "Error: No unit") then {
							_position = position _x;
							_markername = format["%1", name _x];
							wcgarbage = [_markername, 0.5, _position, 'ColorRed', 'ICON', 'FDIAGONAL', 'dot', 0, 'air'] spawn WC_fnc_createmarkerlocalanddelete;
						};
					}foreach (list _trgradar);
				};
			} else {
				_marker setmarkerposlocal [0,0,0];
				_marker setMarkerTypelocal "EMPTY";
				_marker2 setmarkerposlocal [0,0,0];
				_trgradar setpos [0,0,0];
				_trgradar setTriggerArea[0,0,0,false];
			};
		};
		sleep 2;
	};