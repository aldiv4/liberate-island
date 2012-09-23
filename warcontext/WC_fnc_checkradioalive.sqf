	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext - check radio
	// -----------------------------------------------
	if (!isServer) exitWith{};
	private ["_radio", "_side"];

	_radio = _this select 0;
	_side  = _this select 1;

	waituntil {!alive _radio;};

	if(_side == wcside) then {
		wcradioW = objnull;
		publicvariable "wcradioW";
		wcradiohackedE = objnull;
		publicvariable "wcradiohackedE";
	} else {
		wcradioE = objnull;
		publicvariable "wcradioE";
		wcradiohackedW = objnull;
		publicvariable "wcradiohackedW";
	};
	true;