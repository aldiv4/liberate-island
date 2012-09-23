	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	 private ["_flag", "_position", "_player"];

	_flag	= _this select 0;
	_player = _this select 1;

	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 10;
	if !(alive player) exitwith {};

	if (wcplayerside == wcside) then {
		_flag setVehicleInit "this setFlagTexture '\ca\data\Flag_usa_co.paa';";
		processInitCommands;
		wctownisfree = true;
		publicvariable 'wctownisfree';
		wcgarbage = [nil,nil,rHINT,'USA Flag is on the town'] call RE;
	} else {
		_flag setVehicleInit "this setFlagTexture '\ca\data\Flag_rus_co.paa';";
		processInitCommands;
		wctownisfree = false;
		publicvariable 'wctownisfree';
		wcgarbage = [nil,nil,rHINT,'RUS Flag is on the town'] call RE;
	};
	