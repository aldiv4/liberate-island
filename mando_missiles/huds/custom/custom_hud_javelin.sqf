/* Customised MMA HUD for the FGM-148 Javelin, by deFUNKt - December 2009 */

private ["_optics", "_target", "_lockflag", "_testflag", "_old_mode", "_fovstate", "_blinking", "_power_up", "_to_sleep", "_aperture", "_has_addon", "_control_show", "_pp_effects", "_world_pos", "_screen_xy"];

DisableSerialization;

mando_hud_coords = [[-2, -2], [-2, -2], [-2, -2], [-2, -2], [-2, -2], [-2, -2]];
mando_hud_colors = [[0.8, 0.4, 0.4], [1.0, 1.0, 1.0], [1.0, 1.0, 1.0], [1.0, 1.0, 1.0], [1.0, 1.0, 1.0], [1.0, 1.0, 1.0]];

_optics = false;
_target = objnull;
_lockflag = 0;
_testflag = 0;
_old_mode = 0;
_fovstate = 0;
_blinking = 0;
_power_up = 40;
_to_sleep = 0.25;
_aperture = 0.08;
_has_addon = GetNumber (ConfigFile >> "CfgPatches" >> "mando_portables" >> "RequiredVersion");

switch (Round DayTime) do {
case 5: {_aperture = 00.40;};
case 6: {_aperture = 02.00;};
case 7: {_aperture = 10.00;};
case 8: {_aperture = 50.00;};
case 9: {_aperture = 50.00;};
case 10: {_aperture = 50.00;};
case 11: {_aperture = 50.00;};
case 12: {_aperture = 50.00;};
case 13: {_aperture = 50.00;};
case 14: {_aperture = 50.00;};
case 15: {_aperture = 50.00;};
case 16: {_aperture = 50.00;};
case 17: {_aperture = 10.00;};
case 18: {_aperture = 02.00;};
case 19: {_aperture = 00.40;};};

_control_show = {

	private ["_idno", "_show", "_ctrl", "_xpos", "_xdim", "_ypos", "_ydim"];

	_idno = _this select 0;
	_show = _this select 1;
	_ctrl = (UINameSpace GetVariable "mandotarget_disp") DisplayCtrl _idno;

	if (_show == 0) exitwith {_ctrl CtrlSetText "";};
	if (_show >= 1) exitwith {_ctrl CtrlSetText Format ["mando_missiles\huds\custom\images\javelin\lamp%1%2.paa", _idno - 53, _show - 1];};
	
	_xpos = SafeZoneX; _xdim = 0.10248902 * SafeZoneW;
	_ypos = SafeZoneY; _ydim = 0.13671875 * SafeZoneH;
	
	switch (_idno) do {
	case 53: /* DAY */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.18521230);
		_ypos = SafeZoneY + (SafeZoneH * 0.01171875);
	};
	case 54: /* WFOV or WHOT */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.36090776);
		_ypos = SafeZoneY + (SafeZoneH * 0.01171875);
	};
	case 55: /* NFOV or BHOT */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.53660322);
		_ypos = SafeZoneY + (SafeZoneH * 0.01171875);
	};
	case 56: /* SEEK */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.71229868);
		_ypos = SafeZoneY + (SafeZoneH * 0.01171875);
	};
	case 57: /* TOP */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.88799414);
		_ypos = SafeZoneY + (SafeZoneH * 0.22167969);
	};
	case 58: /* DIR */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.88799414);
		_ypos = SafeZoneY + (SafeZoneH * 0.43164063);
	};
	case 59: /* FLTR or GRND */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.88799414);
		_ypos = SafeZoneY + (SafeZoneH * 0.64160156);
	};
	case 60: /* WAIT */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.71229868);
		_ypos = SafeZoneY + (SafeZoneH * 0.85156250);
	};
	case 61: /* MSL */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.53660322);
		_ypos = SafeZoneY + (SafeZoneH * 0.85156250);
	};
	case 62: /* HANG */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.36090776);
		_ypos = SafeZoneY + (SafeZoneH * 0.85156250);
	};
	case 63: /* BCU */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.18521230);
		_ypos = SafeZoneY + (SafeZoneH * 0.85156250);
	};
	case 64: /* CLU+ */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.00951684);
		_ypos = SafeZoneY + (SafeZoneH * 0.64160156);
	};
	case 65: /* CLU */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.00951684);
		_ypos = SafeZoneY + (SafeZoneH * 0.43164063);
	};
	case 66: /* NIGHT */ {
		_xpos = SafeZoneX + (SafeZoneW * 0.00951684);
		_ypos = SafeZoneY + (SafeZoneH * 0.22167969);
	};};

	_ctrl CtrlSetPosition [_xpos, _ypos, _xdim, _ydim];
	_ctrl CtrlCommit 0;
	_ctrl CtrlSetTextColor [1.0, 1.0, 1.0, 1.0];
    _ctrl CtrlSetText Format ["mando_missiles\huds\custom\images\javelin\lamp%1%2.paa", _idno - 53, (Abs _show) - 1];

};

_pp_effects = {

	private ["_init"];
	
	_init = _this select 1;
	
	switch (_this select 0) do {
	case 0: {
		SetAperture -1;
		PPEffectDestroy mando_ppccor;
		PPEffectDestroy mando_ppcinv;
		PPEffectDestroy mando_ppdyblur;
		PPEffectDestroy mando_ppfgrain;
		[53, 0] Call _control_show;
		[54, 0] Call _control_show;
		[55, 0] Call _control_show;
	};
	case 1: {
		SetAperture -1;
		PPEffectDestroy mando_ppccor;
		mando_ppccor = PPEffectCreate ["ColorCorrections", 1];
		mando_ppccor PPEffectEnable true;
		mando_ppccor PPEffectAdjust [1.05, 0.95, 0.00, [0.80, 0.90, 1.00, -0.10], [0.75, 1.50, 0.75, 0.75], [0.75, 1.50, 0.75, 1.00]];
		mando_ppccor PPEffectCommit 0;
		PPEffectDestroy mando_ppcinv;
		PPEffectDestroy mando_ppdyblur;
		PPEffectDestroy mando_ppfgrain;
		[53, 2 * _init] Call _control_show;
		[54, 1 * _init] Call _control_show;
		[55, 1 * _init] Call _control_show;
	};
	case 2: {
		SetAperture _aperture; // NB: In scope when Call'ed.
		PPEffectDestroy mando_ppccor;
		mando_ppccor = PPEffectCreate ["ColorCorrections", 1];
		mando_ppccor PPEffectEnable true;
		mando_ppccor PPEffectAdjust [1, 1, -0.002, [1, 1, 1, 0.1], [1, 1, 1, 0], [1, 1, 1, 0]];
		mando_ppccor PPEffectCommit 0;
		PPEffectDestroy mando_ppcinv;
		mando_ppcinv = PPEffectCreate ["ColorInversion", 2];
		mando_ppcinv PPEffectEnable true;
		mando_ppcinv PPEffectAdjust [0.2, 0.2, 0.2];
		mando_ppcinv PPEffectCommit 0;
		PPEffectDestroy mando_ppdyblur;
		mando_ppdyblur = PPEffectCreate ["DynamicBlur", 0];
		mando_ppdyblur PPEffectEnable true;  
		mando_ppdyblur PPEffectAdjust [0.4];
		mando_ppdyblur PPEffectCommit 0;
		PPEffectDestroy mando_ppfgrain;
		mando_ppfgrain = PPEffectCreate ["FilmGrain", 2005];
		mando_ppfgrain PPEffectEnable true;
		mando_ppfgrain PPEffectAdjust [0.02, 1.0, 1.0, 0.0, 1.0];
		mando_ppfgrain PPEffectCommit 0;
		[53, 1 * _init] Call _control_show;
		[54, 2 * _init] Call _control_show;
		[55, 1 * _init] Call _control_show;
	};
	case 3: {
		SetAperture _aperture; // NB: In scope when Call'ed.
		PPEffectDestroy mando_ppccor;
		mando_ppccor = PPEffectCreate ["ColorCorrections", 1999];
		mando_ppccor PPEffectEnable true;
		mando_ppccor PPEffectAdjust [1.0, 1.0, 0.0, [1.0, 1.0, 1.0, 0.0], [1.0, 1.0, 1.0, 0.0], [1.0, 1.0, 1.0, 1.0]];
		mando_ppccor PPEffectCommit 0;
		PPEffectDestroy mando_ppcinv;
		mando_ppcinv = PPEffectCreate ["ColorInversion", 2555];
		mando_ppcinv PPEffectEnable true;
		mando_ppcinv PPEffectAdjust [1.0, 1.0, 1.0];
		mando_ppcinv PPEffectCommit 0;
		PPEffectDestroy mando_ppdyblur;
		mando_ppdyblur = PPEffectCreate ["DynamicBlur", 505];
		mando_ppdyblur PPEffectEnable true;  
		mando_ppdyblur PPEffectAdjust [0.5];
		mando_ppdyblur PPEffectCommit 0;
		PPEffectDestroy mando_ppfgrain;
		mando_ppfgrain = PPEffectCreate ["FilmGrain", 2005];
		mando_ppfgrain PPEffectEnable true;
		mando_ppfgrain PPEffectAdjust [0.02, 1.0, 1.0, 0.0, 1.0];
		mando_ppfgrain PPEffectCommit 0;
		[53, 1 * _init] Call _control_show;
		[54, 1 * _init] Call _control_show;
		[55, 2 * _init] Call _control_show;
	};};

};

((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 101)   CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";

// ((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 107)   CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";

((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23929) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23930) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23931) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23932) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23933) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23934) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 23935) CtrlSetText "mando_missiles\huds\custom\images\javelin\empty.paa";

if (_has_addon > 0) then {
	((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetText "\mando\portables\javelin\reticle.paa";
} else {
	((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetText "mando_missiles\huds\custom\images\javelin\reticle.paa";
};
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetTextColor [1.0, 1.0, 1.0, 1.0];

for [{_i = 53}, {_i < 67}, {_i = _i + 1}] do {
	[_i, 2] Call _control_show;
        Sleep 0.1;
	[_i, 1] Call _control_show;
};

((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 76) CtrlSetTextColor [1.0, 1.0, 1.0, 0.5];
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 76) CtrlSetStructuredText ParseText Format ["Lock Target<br />= %1<br />Targeting Modes<br />= %2<br />Infra-Red Modes<br />= %3<br />Fire normally when locked.", mando_keylockname, mando_keymodename, mando_keyflarename];
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 76) CtrlSetPosition [SafeZoneX + 0.0125, SafeZoneY + SafeZoneH - 0.1875, 0.2250, 0.2000];
((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 76) CtrlCommit 0;

while {!mando_exit_hud} do {
	if (CameraView == "GUNNER") then {
		if (!_optics) then {
			_lockflag = 0;
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetPosition [SafeZoneX, SafeZoneY, SafeZoneW, SafeZoneH];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlCommit 0;
			if (_has_addon > 0) then {
				((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetText "\mando\portables\javelin\reticle.paa";
			} else {
				((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetText "mando_missiles\huds\custom\images\javelin\reticle.paa";
			};
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetTextColor [1.0, 1.0, 1.0, 1.0];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetTextColor [1.0, 1.0, 1.0, 0.0];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetBackgroundColor [1.0, 1.0, 1.0, 0.0];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetText "mando_missiles\huds\custom\images\javelin\line_x.paa";
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetTextColor [1.0, 1.0, 1.0, 0.0];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetBackgroundColor [1.0, 1.0, 1.0, 0.0];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetText "mando_missiles\huds\custom\images\javelin\line_y.paa";
			[_fovstate + 1, -1] Call _pp_effects;
			[56, -1] Call _control_show;
			[57, -1] Call _control_show; _old_mode = -1; // Force mode test.
			[58, -1] Call _control_show;
			[59, -1] Call _control_show;
			[60, -2] Call _control_show;
			[61, -1] Call _control_show;
			[62, -1] Call _control_show;
			[63, -1] Call _control_show;
			[64, -1] Call _control_show;
			[65, -1] Call _control_show;
			[66, -1] Call _control_show;
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 76) CtrlSetTextColor [1.0, 1.0, 1.0, 0.5];
			_optics = true;
		};
	} else {
		if (_optics) then {
			_optics = false;
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 76) CtrlSetTextColor [1.0, 1.0, 1.0, 0.0];
			[66, 0] Call _control_show;
			[65, 0] Call _control_show;
			[64, 0] Call _control_show;
			[63, 0] Call _control_show;
			[62, 0] Call _control_show;
			[61, 0] Call _control_show;
			[60, 0] Call _control_show;
			[59, 0] Call _control_show;
			[58, 0] Call _control_show;
			[57, 0] Call _control_show;
			[56, 0] Call _control_show;
			[0, 1] Call _pp_effects;
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetText "";
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetText "";
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 50) CtrlSetText "";
			_lockflag = 0;
		};
	};
	_to_sleep = 0.25;
	if (_optics) then {
		if (mando_key_pressed != 0) then {
			switch (mando_key_pressed) do {
			case mando_keyfire: {
				// NB: Has issues (must wait between presses).
			};
			case mando_keyecm: {
				// NB: Has issues (denied sound).
			};
			case mando_keyflare: {
				if (_power_up > 0) then {
					PlaySound "mando_denied";
				} else {
					_fovstate = (_fovstate + 1) % 3;
					[_fovstate + 1, 1] Call _pp_effects;
				};
			};};
			mando_key_pressed = 0;
		};
		if (mando_hud_mode != _old_mode) then {
			if (_old_mode == 0) then {[57, 1] Call _control_show;};
			if (_old_mode == 1) then {[58, 1] Call _control_show;};
			if (_old_mode == 2) then {[58, 1] Call _control_show; [59, 1] Call _control_show;};
			if (mando_hud_mode == 0) then {[57, 2] Call _control_show;};
			if (mando_hud_mode == 1) then {[58, 2] Call _control_show;};
			if (mando_hud_mode == 2) then {[58, 2] Call _control_show; [59, 2] Call _control_show;};
			_old_mode = mando_hud_mode;
		};
		if (_lockflag < 3) then { // Not already fired.
			if (!IsNull mando_lockingon) then {_testflag = 1;} else {_testflag = 0;};
			if (!IsNull (player GetVariable "mando_current_target")) then {_testflag = 2;};
			if ((player Ammo "Javelin") == 0) then {_testflag = 3;};
		} else { // Check for reload.
			if ((player Ammo "Javelin") != 0) then {_testflag = 0;};
		};
		if (_lockflag != _testflag) then {
			if (_lockflag == 2) then { // Lock has been lost.
				((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetTextColor [1.0, 1.0, 1.0, 0.0];
				((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetTextColor [1.0, 1.0, 1.0, 0.0];
				[56, 1] Call _control_show; // SEEK Off
				[60, 2] Call _control_show; // WAIT On
			};
			if (_testflag == 2) then { // Lock has been achieved.
				_target = player GetVariable "mando_current_target";
				[56, 2] Call _control_show; // SEEK On
				[60, 1] Call _control_show; // WAIT Off
			};
			if (_testflag == 3) then { // Missile fired.
				mando_hud_fired = false; // NB: Not used.
				[61, 2] Call _control_show; // MSL On
			};
			_lockflag = _testflag;
		};
		if (_lockflag == 1) then {
			_blinking = (_blinking + 1) % 2;
			[56, _blinking + 1] Call _control_show;
		};
		if (_lockflag == 2) then {
			_world_pos = GetPos _target;
			_world_pos set [2, (_world_pos select 2) + (((_target ModelToWorld [0, 0, 0]) select 2) - (_world_pos select 2)) / 2];
			_screen_xy = WorldToScreen _world_pos; 
			if (_has_addon > 0) then {
				((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetPosition [0.12, _screen_xy select 1, 0.76, 0.002];
			} else {
				((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetPosition [0.20, _screen_xy select 1, 0.60, 0.002];
			};
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlCommit 0;
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetPosition [_screen_xy select 0, 0.15, 0.002, 0.70];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlCommit 0;
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 51) CtrlSetTextColor  [1.0, 1.0, 1.0, 1.0];
			((UINameSpace GetVariable "mandotarget_disp") DisplayCtrl 52) CtrlSetTextColor  [1.0, 1.0, 1.0, 1.0];
			_to_sleep = 0.05;
		} else {
			if  (_power_up > 0) then {
				_power_up = (_power_up - 1);
				[66, (_power_up % 2) + 1] Call _control_show;
			};
		};
	};
	Sleep _to_sleep;
};

[0, 1] Call _pp_effects;
