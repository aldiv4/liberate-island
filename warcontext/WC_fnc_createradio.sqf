	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// Deployed an radio
	// -----------------------------------------------
	 private ["_radio", "_mydir", "_position", "_player", "_side"];

	_player = _this select 1;

	if(wcplayerside == wcside) then {
	 	if(!isnull wcradioW) then {
			if ((position _player) distance (position wcradioW) < 20) then {
				player playMove "AinvPknlMstpSlayWrflDnon_medic";
				sleep 10;
				if !(alive player) exitwith {};

				deletevehicle wcradioW;
				wcradioW = objnull;
				publicvariable "wcradioW";
			}else{
				hint 'RADIO already exists. Check map';
			};
		} else {
			_list = nearestObjects [_player,["Misc_cargo_cont_net1"],10];
			if(count _list > 0) then {
				_mydir = getdir _player;
				_position =  [(getposatl _player select 0) + (sin _mydir * 10), (getposatl _player select 1) + (cos _mydir * 10), (getposatl _player) select 2];
				_object = _list select 0;
				deletevehicle _object;
	
				player playMove "AinvPknlMstpSlayWrflDnon_medic";
				sleep 10;
				if !(alive player) exitwith {};

				wcbuildradioW = _position;
				publicvariable 'wcbuildradioW';

				//wcradioW = "CDF_WarfareBUAVterminal" createVehicle _position;
				//wcradioW setposatl _position;
				//wcradioW setVectorUp [0,0,1];
				//publicvariable "wcradioW";
				//wcgarbage = [wcradioW, wcside] spawn WC_fnc_newfollowplayer;
				//wcradioW setVehicleInit "this addAction ['Hack radio', 'warcontext\WC_fnc_hackradio.sqf', [], -1, false, true, ''];";
				//processInitCommands;
				//wcmessageW = "West radio is deployed";
				//publicvariable "wcmessageW";

			} else {
				hint "No construction Kit near";
			};
		};
	} else {
	 	if(!isnull wcradioE) then {
			if ((position _player) distance (position wcradioE) < 20) then {
				player playMove "AinvPknlMstpSlayWrflDnon_medic";
				sleep 10;
				if !(alive player) exitwith {};

				deletevehicle wcradioE;
				wcradioE = objnull;
				publicvariable "wcradioE";
			}else{
				hint 'RADIO already exists. Check map';
			};
		} else {
			_list = nearestObjects [_player,["Misc_cargo_cont_net1"],10];
			if(count _list > 0) then {
				_mydir = getdir _player;
				_position =  [(getposatl _player select 0) + (sin _mydir * 10), (getposatl _player select 1) + (cos _mydir * 10), (getposatl _player) select 2];
				_object = _list select 0;
				deletevehicle _object;
	
				player playMove "AinvPknlMstpSlayWrflDnon_medic";
				sleep 10;
				if !(alive player) exitwith {};

				wcbuildradioE = _position;
				publicvariable 'wcbuildradioE';

				//wcradioE = "INS_WarfareBUAVterminal" createVehicle _position;
				//wcradioE setposatl _position;
				//wcradioE setVectorUp [0,0,1];
				//publicvariable "wcradioE";
				//wcgarbage = [wcradioE, wcenemyside] spawn WC_fnc_newfollowplayer;
				//wcradioE setVehicleInit "this addAction ['Hack radio', 'warcontext\WC_fnc_hackradio.sqf', [],-1, false, true, ''];";
				//processInitCommands;
				//wcmessageE = "East radio is deployed";
				//publicvariable "wcmessageE";
			} else {
				hint "No construction Kit near";
			};
		};
	};