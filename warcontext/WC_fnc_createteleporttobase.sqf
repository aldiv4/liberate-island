	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description:
	// Attach a marker to an object
	// -----------------------------------------------

	private ["_player", "_object", "_position", "_markername", "_base"];
	
	_player = _this select 1;

	_player sideChat "Teleporting to base. Wait a while (..)";

	if (side _player == wcside) then {
		_base = WBASE_MOBILE;
	} else {
		_base = EBASE_MOBILE;
	};

	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 10;
	if !(alive player) exitwith {};

	_position = getposasl _base;
	_player setposasl _position;
