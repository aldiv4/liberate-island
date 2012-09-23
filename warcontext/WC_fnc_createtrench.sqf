	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	 private ["_radio", "_mydir", "_position", "_player"];

	_player = _this select 1;

	_mydir = getdir _player;
	_position =  [(getposatl _player select 0) + (sin _mydir * 2), (getposatl _player select 1) + (cos _mydir * 2), (getposatl _player) select 2];

	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 10;
	if !(alive player) exitwith {};

	_trench = "Fort_envelopeBig" createVehicle _position;
	_trench setposatl _position;
	_trench setdir _mydir;
	_trench setvectorup _vectorup;
	true;
