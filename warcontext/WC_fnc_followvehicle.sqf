	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// -----------------------------------------------
	private ["_arrayofvehicle", "_x", "_markername", "_position"];

	WC_fnc_refreshvehiclelist = {
		private ["_arrayofvehicle"];
		if (wcplayerside == wcside) then {
			wcarrayofvehicleW = [
					["US1", US1,"UH60"],
					["US2", US2,"UH60"],
					["US3", US3,"MEDEVAC"],
					["US4", US4,"GMV Mk19"],
					["US5", US5,"GMV M2"],
					["US6", US6,"AVENGER"],
					["US7", US7,"HMMWV TOW"],
					["US8", US8,"MTVR AMMO"],
					["US9", US9,"MTVR FUEL"],
					["HQ1", HQ1,"LAV"],
					["HQ2", HQ2,"LAV"],
					["US10", US10,"MTVR REP"],
					["US11", US11,"MTVR"],
					["US12", US12,"MTVR"],
					["US13", US13,"MTVR"],
					["US14", US14,"ATV"],
					["US15", US15,"ATV"],
					["US16", US16,"ATV"],
					["US17", US17,"ATV"],
					["US18", US18,"STRYKER Mk19"],
					["US19", US19,"STRYKER M2"],
					["US20", US20,"CRRC"],
					["US21", US21,"CRRC"],
					["US22", US22,"CRRC"],
					["US23", US23,"RHIB"],
					["US24", US24,"RHIB"],
					["US25", US25,"M119"],
					["US26", US26,"M119"],
					["US27", US27,"M119"],
					["US28", US28,"=A*C= UH60"],
					["US29", US29,"CRRC"],
					["US30", US30,"CRRC"],
					["US31", US31,"CRRC"],
					["US32", US32,"RHIB"],
					["US33", US33,"RHIB"],
					["US34", US34,"CRRC"],
					["US35", US35,"CRRC"],
					["US36", US36,"CRRC"],
					["US37", US37,"RHIB"],
					["US38", US38,"RHIB"],
					["US42", US42,"RHIB"],
					["US43", US43,"RHIB"],
					["US44", US44,"CRRC"],
					["US45", US45,"CRRC"],
					["US46", US46,"CRRC"]
					];
			_arrayofvehicle = wcarrayofvehicleW;
		} else {
			wcarrayofvehicleE = [
				["RU1", RU1],
				["RU2", RU2],
				["RU3", RU3],
				["RU4", RU4],
				["RU5", RU5],
				["RU6", RU6],
				["RU7", RU7],
				["RU8", RU8],
				["RU9", RU9],
				["RU10", RU10],
				["RU11", RU11],
				["RU12", RU12],
				["RU13", RU13],
				["RU14", RU14]
				];
			_arrayofvehicle = wcarrayofvehicleE;
		};
		_arrayofvehicle;
	};

	_arrayofvehicle = [] call WC_fnc_refreshvehiclelist;
	{
		_markername = _x select 0;
		wcgarbage = [_markername, 0.5, [0,0,0], 'ColorGreen', 'ICON', 'FDIAGONAL', 'b_air', 0, '', true] call WC_fnc_createmarkerlocal;
	}foreach _arrayofvehicle;

	while {!wcgameend} do {
		{
			if (alive (_x select 1)) then {
				_markername = _x select 0;
				_position = getpos (_x select 1);
				_markername setmarkerposlocal _position;
				_markername setmarkertextlocal (_x select 2);
			};
		}foreach _arrayofvehicle;
		_arrayofvehicle = [] call WC_fnc_refreshvehiclelist;
		sleep 2;
	};