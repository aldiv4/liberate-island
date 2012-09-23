	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------
	private ["_arrayofplayer", "_radio", "_markersize", "_position", "_marker", "_marker2", "_markername"];

	WC_fnc_refreshplayerlist = {
		private ["_arrayofplayer"];
		if (wcplayerside == wcside) then {
			_arrayofplayer= [[east31,"east31"],[east32,"east32"],[east33,"east33"],[east34,"east34"],[east35,"east35"],[east36,"east36"],[east37,"east37"],[east38,"east38"],[east39,"east39"],[east40,"east40"],[east41,"east41"],[east42,"east42"],[east43,"east43"],[east44,"east44"],[east45,"east45"],[east46,"east46"],[east47,"east47"],[east48,"east48"],[east49,"east49"],[east50,"east50"],[east51,"east51"],[east52,"east52"],[east53,"east53"],[east54,"east54"],[east55,"east55"],[east56,"east56"],[east57,"east57"],[east58,"east58"],[east59,"east59"],[east60,"east60"]];
		} else {
			_arrayofplayer = [[west1, "west1"],[west2,"west2"],[west3,"west3"],[west4,"west4"],[west5,"west5"],[west6,"west6"],[west7,"west7"],[west8,"west8"],[west9,"west9"],[west10,"west10"],[west11,"west11"],[west12,"west12"],[west13,"west13"],[west14,"west14"],[west15,"west15"],[west16,"west16"],[west17,"west17"],[west18,"west18"],[west19,"west19"],[west20,"west20"],[west21,"west21"],[west22,"west22"],[west23,"west23"],[west24,"west24"],[west25,"west25"],[west26,"west26"],[west27,"west27"],[west28,"west28"],[west29,"west29"],[west30,"west30"]];
		};
		_arrayofplayer;
	};

	// CREATE MARKERS FOR ALL SIDE PLAYERS
	_arrayofplayer = [] call WC_fnc_refreshplayerlist;
	{	
			_markername = (_x select 1) + "hacked";
			_marker = [_markername, 1, [0,0,0], 'ColorRed', 'ICON', 'FDIAGONAL', 'dot', 0, '', true] call WC_fnc_createmarkerlocal;
			_marker setMarkerTypelocal "EMPTY";
			_marker setMarkerShapelocal "ICON";
	}foreach _arrayofplayer;

	// CREATE RADIO MARKERS
	if (wcplayerside == wcside) then {
		_markersize = 0;
		_position = [0,0,0];
		_marker = ["RADIOHACKEDFIELDW", _markersize, _position, 'ColorRed', 'ELLIPSE', 'FDIAGONAL', '', 0, '', true] call WC_fnc_createmarkerlocal;
		_marker2 = ['radioHACKEDW', 0.5, _position, 'ColorRed', 'ICON', 'FDIAGONAL', 'Flag', 0, 'Enemy radio'] call WC_fnc_createmarkerlocal;
	} else {
		_markersize = 0;
		_position = [0,0,0];
		_marker = ["RADIOHACKEDFIELDE", _markersize, _position, 'ColorRed', 'ELLIPSE', 'FDIAGONAL', '', 0, '', true] call WC_fnc_createmarkerlocal;
		_marker2 = ['radioHACKEDE', 0.5, _position, 'ColorRed', 'ICON', 'FDIAGONAL', 'Flag', 0, 'Enemy radio'] call WC_fnc_createmarkerlocal;
	};

	
	while {!wcgameend} do {
		if (wcplayerside == wcside) then {
			_radio = wcradiohackedW;
		} else {
			_radio = wcradiohackedE;
		};
		{
			if (alive _radio) then {
				_markersize = [(getposasl _radio) select 2] call WC_fnc_checkcoverage;
				_marker setmarkerposlocal (getpos _radio);
				_marker2 setmarkerposlocal (getpos _radio);
				_marker setmarkersizelocal [_markersize, _markersize];
				_markername = (_x select 1) + "hacked";
				
				if (isplayer (_x select 0) and (_x select 0) distance _radio < _markersize) then {
					_markername setmarkerposlocal (getpos (_x select 0));
					_markername setMarkerTypelocal "dot";
					_markername setMarkerTextlocal (name (_x select 0));
					_markername setMarkersizelocal [ 0.4, 0.4];
					_markername setMarkerColorlocal "ColorRed";
				} else {
					_markername setmarkerposlocal [0,0,0];
					_markername setMarkerTypelocal "EMPTY";
					_markername setMarkerTextlocal "";
					_markername setMarkersizelocal [ 0.4, 0.4];
				};
			} else {
				_marker setmarkerposlocal [0,0,0];
				_marker setmarkersizelocal [0,0];
				_marker2 setmarkerposlocal [0,0,0];
				_markername setmarkerposlocal [0,0,0];
				_markername setMarkerTypelocal "EMPTY";
				_markername setMarkersizelocal [ 0.4, 0.4];
			};
			if ((_x select 0) getvariable "NORRN_unconscious") then {
				_markername setmarkerposlocal (getpos (_x select 0));
				_markername setMarkerTypelocal "Flag1";
				_markername setMarkerColorlocal "ColorRed";
				_markername setMarkersizelocal [ 0.4, 0.4];
				_markername setMarkerTextlocal ((name (_x select 0)) + " is down");
			};
			sleep 0.05;
		}foreach _arrayofplayer;
		_arrayofplayer = [] call WC_fnc_refreshplayerlist;
		sleep 1;
	};