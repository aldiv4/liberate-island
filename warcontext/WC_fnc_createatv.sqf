	// -----------------------------------------------
	// Author: =[A*C]= code34 nicolas_boiteux@yahoo.fr
	// warcontext 
	// create an US ammobox on local client side
	// -----------------------------------------------
	 private [
		"_position",
		"_list",
		"_object"
	];

	_position = _this select 0;

	_list = nearestObjects [_position, ["ACE_ATV_Honda"], 10];
	if(count _list > 0) then {
		_object = _list select 0;
		wcatvindex = wcatvindex  + 1;
		[_object, format['wcatv%1', wcatvindex], 0.5, 'ColorGreen', 'ICON', 'FDIAGONAL', 2, 'Flag', 0 , 'ATV'] spawn WC_fnc_attachmarkerlocal;
	};

	true;