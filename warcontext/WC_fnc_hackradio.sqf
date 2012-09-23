	// -----------------------------------------------
	// Author: team =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - Description:
	// Hack radio tower
	// -----------------------------------------------

	_radio = _this select 0;
	_player = _this select 1;

	if !(typeOf _player == "RU_Soldier_Light" or typeOf _player == "USMC_SoldierS" or wcgamemodgod) exitwith {hint "You are not radio";};

	if(side _player == wcside and typeof _radio == "INS_WarfareBUAVterminal" ) then {
		player playMove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 10;
		if !(alive player) exitwith {};
		hint "You have hacked enemy radio";

		wcradiohackedW = _radio;
		publicvariable "wcradiohackedW";
		wcmessageW = "Enemy radio has been hacked!";
		publicvariable "wcmessageW";
		wcmessageE = "Your Radio has been hacked by enemy!";
		publicvariable "wcmessageE";
		wcenemyradiohacked = true;
	} else {
		if(side _player == wcenemyside and typeof _radio == "CDF_WarfareBUAVterminal" ) then {
			player playMove "AinvPknlMstpSlayWrflDnon_medic";
			sleep 10;
			if !(alive player) exitwith {};
			hint "You have hacked enemy radio";
			wcradiohackedE = _radio;
			publicvariable "wcradiohackedE";
			wcmessageE = "Enemy radio has been hacked!";
			publicvariable "wcmessageE";
			wcmessageW = "Your Radio has been hacked by enemy!";
			publicvariable "wcmessageW";
			wcenemyradiohacked = true;
		} else {
			hint 'You can not hack your own radio';
		};
	};