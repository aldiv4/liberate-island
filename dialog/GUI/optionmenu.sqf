//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////
private ["_location", "_mainmission", "_color", "_ctrl"];

disableSerialization;
_ctrl = (findDisplay 10000) displayCtrl 10004;

MenuAction= -1;

playsound "paper";

while {alive player && dialog} do {
	//ctrlSetText [10001, "Mission: You have to liberate the island by clearing the 15 levels. Only medics can revive players. Good luck!"];

	ctrlSetText [10003, format["Mission level: %1/15", wclevel]];
	if (!isnil "wccivilkilled") then {
		ctrlSetText [10004, format["Global enemy killed: %1", wccivilkilled]];
	} else {
		ctrlSetText [10004, format["Global enemy killed: 0", wccivilkilled]];
	};

	ctrlSetText [10005, format["IA Skill: %1", (wcskill * 100)]+"%"];
	ctrlSetText [10007, format["Soldier name: %1", name player]];
	ctrlSetText [10008, format["Group leader: %1", name (leader player)]];
	ctrlSetText [10010, format["Soldier Rank: %1", rank player]];
	ctrlSetText [10011, format["Ammos used: %1", wcammoused]];


	if (MenuAction == 1) then {
		MenuAction = -1;
		closeDialog 0;
		titleCut["","BLACK IN",1];
		_pos = position player;
		_vehi = "Lada1" createVehicle [0,0,0];
		player moveInCargo _vehi;
		deleteVehicle _vehi;
		player setPos _pos;
	};

	sleep 1;
};