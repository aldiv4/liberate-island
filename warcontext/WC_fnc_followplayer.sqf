	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------
	private ["_arrayofplayer", "_radio", "_markersize", "_position", "_marker", "_marker2"];

	WC_fnc_refreshplayerlist = {
		private ["_arrayofplayer"];
		if (wcplayerside == wcside) then {
			_arrayofplayer = [[west1, "west1"],[west2,"west2"],[west3,"west3"],[west4,"west4"],[west5,"west5"],[west6,"west6"],[west7,"west7"],[west8,"west8"],[west9,"west9"],[west10,"west10"],[west11,"west11"],[west12,"west12"],[west13,"west13"],[west14,"west14"],[west15,"west15"],[west16,"west16"],[west17,"west17"],[west18,"west18"],[west19,"west19"],[west20,"west20"],[west21,"west21"],[west22,"west22"],[west23,"west23"],[west24,"west24"],[west25,"west25"],[west26,"west26"],[west27,"west27"],[west28,"west28"],[west29,"west29"],[west30,"west30"]];
		} else {
			_arrayofplayer= [[east31,"east31"],[east32,"east32"],[east33,"east33"],[east34,"east34"],[east35,"east35"],[east36,"east36"],[east37,"east37"],[east38,"east38"],[east39,"east39"],[east40,"east40"],[east41,"east41"],[east42,"east42"],[east43,"east43"],[east44,"east44"],[east45,"east45"],[east46,"east46"],[east47,"east47"],[east48,"east48"],[east49,"east49"],[east50,"east50"],[east51,"east51"],[east52,"east52"],[east53,"east53"],[east54,"east54"],[east55,"east55"],[east56,"east56"],[east57,"east57"],[east58,"east58"],[east59,"east59"],[east60,"east60"]];
		};
		_arrayofplayer;
	};

	// CREATE MARKERS FOR ALL SIDE PLAYERS
	_arrayofplayer = [] call WC_fnc_refreshplayerlist;
	{	
			_marker = [(_x select 1), 1, [0,0,0], 'ColorGreen', 'ICON', 'FDIAGONAL', 'dot', 0, '', true] call WC_fnc_createmarkerlocal;
			_marker setMarkerTypelocal "EMPTY";
			_marker setMarkerShapelocal "ICON";
	}foreach _arrayofplayer;

	// CREATE RADIO MARKERS
	if (wcplayerside == wcside) then {
		_markersize = 0;
		_position = [0,0,0];
		_marker = ["RADIOFIELDW", _markersize, _position, 'ColorBLUE', 'ELLIPSE', 'FDIAGONAL', '', 0, '', true] call WC_fnc_createmarkerlocal;
		_marker2 = ['radioW', 0.5, _position, 'ColorYellow', 'ICON', 'FDIAGONAL', 'Flag', 0, 'radio'] call WC_fnc_createmarkerlocal;
	} else {
		_markersize = 0;
		_position = [0,0,0];
		_marker = ["RADIOFIELDE", _markersize, _position, 'ColorBlue', 'ELLIPSE', 'FDIAGONAL', '', 0, '', true] call WC_fnc_createmarkerlocal;
		_marker2 = ['radioE', 0.5, _position, 'ColorYellow', 'ICON', 'FDIAGONAL', 'Flag', 0, 'radio'] call WC_fnc_createmarkerlocal;
	};

	while {!wcgameend} do {
		if (wcplayerside == wcside) then {
			_radio = wcradioW;
		} else {
			_radio = wcradioE;
		};
		{
			if (alive _radio) then {
				_markersize = [(getposasl _radio) select 2] call WC_fnc_checkcoverage;
				_marker setmarkerposlocal (getpos _radio);
				_marker2 setmarkerposlocal (getpos _radio);
				_marker setmarkersizelocal [_markersize, _markersize];
				
				if (isplayer (_x select 0) and (_x select 0) distance _radio < _markersize) then {
					(_x select 1) setmarkerposlocal (getpos (_x select 0));
					(_x select 1) setMarkerTypelocal "dot";
					(_x select 1) setMarkerTextlocal (name (_x select 0));
					(_x select 1) setMarkersizelocal [ 0.4, 0.4];
					(_x select 1) setMarkerColorlocal "ColorGreen";
				} else {
					(_x select 1) setmarkerposlocal [0,0,0];
					(_x select 1) setMarkerTypelocal "EMPTY";
					(_x select 1) setMarkerTextlocal "";
					(_x select 1) setMarkersizelocal [ 0.4, 0.4];
				};
			} else {
				_marker setmarkerposlocal [0,0,0];
				_marker setmarkersizelocal [0,0];
				_marker2 setmarkerposlocal [0,0,0];
				(_x select 1) setmarkerposlocal [0,0,0];
				(_x select 1) setMarkerTypelocal "EMPTY";
				(_x select 1) setMarkersizelocal [ 0.4, 0.4];
			};
			if ((_x select 0) getvariable "NORRN_unconscious") then {
				(_x select 1) setmarkerposlocal (getpos (_x select 0));
				(_x select 1) setMarkerTypelocal "Flag1";
				(_x select 1) setMarkerColorlocal "ColorBlue";
				(_x select 1) setMarkersizelocal [ 0.4, 0.4];
				(_x select 1) setMarkerTextlocal ((name (_x select 0)) + " is down");
			};
			sleep 0.05;
		}foreach _arrayofplayer;
		_arrayofplayer = [] call WC_fnc_refreshplayerlist;
		sleep 1;
	};