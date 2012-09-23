PXS_keyEvent =
{
	private ["_event","_keyCode","_shift","_control","_alt"];
	
	_event = (_this select 0);
	_keyCode 	= 	_event select 1;
	_shift 		= 	_event select 2;
	_control 	= 	_event select 3;
	_alt 		= 	_event select 4;
	
	switch (_KeyCode) do {
		case 17:{	//W
		PXS_SATELLITE_UP=PXS_SATELLITE_UP+0.01;
		PXS_LAT = PXS_LAT - 0.01;
		PXS_LON = PXS_LON - 0.01;
		PXS_SATELLITE_TARGET setPos [(getPos PXS_SATELLITE_TARGET select 0)-PXS_SATELLITE_UP, (getPos PXS_SATELLITE_TARGET select 1)+PXS_SATELLITE_UP, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camPrepareTarget [(getPos PXS_SATELLITE_TARGET select 0)-1, (getPos PXS_SATELLITE_TARGET select 1)+1, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camSetPos [getPos PXS_SATELLITE_TARGET select 0, getPos PXS_SATELLITE_TARGET select 1, (getPos PXS_SATELLITE_TARGET select 2)+PXS_SATELLITE_ZOOM];
		PXS_SATELLITE_CAM camPrepareFOV PXS_SATELLITE_FOV;
		PXS_SATELLITE_CAM camCommitPrepared 0;
		};

		case 31:{	//S
		PXS_SATELLITE_DOWN=PXS_SATELLITE_DOWN+0.01;
		PXS_LAT = PXS_LAT + 0.01;
		PXS_LON = PXS_LON + 0.01;
		PXS_SATELLITE_TARGET setPos [(getPos PXS_SATELLITE_TARGET select 0)+PXS_SATELLITE_DOWN, (getPos PXS_SATELLITE_TARGET select 1)-PXS_SATELLITE_DOWN, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camPrepareTarget [(getPos PXS_SATELLITE_TARGET select 0)-1, (getPos PXS_SATELLITE_TARGET select 1)+1, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camSetPos [getPos PXS_SATELLITE_TARGET select 0, getPos PXS_SATELLITE_TARGET select 1, (getPos PXS_SATELLITE_TARGET select 2)+PXS_SATELLITE_ZOOM];
		PXS_SATELLITE_CAM camPrepareFOV PXS_SATELLITE_FOV;
		PXS_SATELLITE_CAM camCommitPrepared 0;
		};	

		case 30:{	//A
		PXS_SATELLITE_LEFT=PXS_SATELLITE_LEFT+0.01;
		PXS_LAT = PXS_LAT - 0.01;
		PXS_LON = PXS_LON - 0.01;
		PXS_SATELLITE_TARGET setPos [(getPos PXS_SATELLITE_TARGET select 0)-PXS_SATELLITE_LEFT, (getPos PXS_SATELLITE_TARGET select 1)-PXS_SATELLITE_LEFT, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camPrepareTarget [(getPos PXS_SATELLITE_TARGET select 0)-1, (getPos PXS_SATELLITE_TARGET select 1)+1, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camSetPos [getPos PXS_SATELLITE_TARGET select 0, getPos PXS_SATELLITE_TARGET select 1, (getPos PXS_SATELLITE_TARGET select 2)+PXS_SATELLITE_ZOOM];
		PXS_SATELLITE_CAM camPrepareFOV PXS_SATELLITE_FOV;
		PXS_SATELLITE_CAM camCommitPrepared 0;
		};

		case 32:{	//D
		PXS_SATELLITE_RIGHT=PXS_SATELLITE_RIGHT+0.01;
		PXS_LAT = PXS_LAT + 0.01;
		PXS_LON = PXS_LON + 0.01;
		PXS_SATELLITE_TARGET setPos [(getPos PXS_SATELLITE_TARGET select 0)+PXS_SATELLITE_RIGHT, (getPos PXS_SATELLITE_TARGET select 1)+PXS_SATELLITE_RIGHT, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camPrepareTarget [(getPos PXS_SATELLITE_TARGET select 0)-1, (getPos PXS_SATELLITE_TARGET select 1)+1, getPos PXS_SATELLITE_TARGET select 2];
		PXS_SATELLITE_CAM camSetPos [getPos PXS_SATELLITE_TARGET select 0, getPos PXS_SATELLITE_TARGET select 1, (getPos PXS_SATELLITE_TARGET select 2)+PXS_SATELLITE_ZOOM];
		PXS_SATELLITE_CAM camPrepareFOV PXS_SATELLITE_FOV;
		PXS_SATELLITE_CAM camCommitPrepared 0;
		};			

		case 78:{	//Num +
		[] exec "PXS_SATCOM\zoom_in.sqs";
		};		
		case 74:{	//Num -
		[] exec "PXS_SATCOM\zoom_out.sqs";
		};		

		case 16:{	//Q
		disableSerialization;
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;
		setAperture -1;
		ctrlSetText [1005, "TVS STATUS...OFF"];
		(findDisplay 46) displayRemoveEventHandler ["KeyDown", PXS_keyEventH];
		PXS_SATELLITE_CAM cameraEffect ["terminate","back"];
		camDestroy PXS_SATELLITE_CAM;
		closedialog 1000;

		deleteVehicle PXS_SATELLITE_TARGET;
			
		onMapSingleClick "";
			
		setViewDistance PXS_DISTANCE;

		PXS_SATELLITE_ZOOM=1000;
		PXS_SATELLITE_FOV = 0.2;
		PXS_SATELLITE_APR = 19.7;
		PXS_SATELLITE_UP=0;
		PXS_SATELLITE_DOWN=0;
		PXS_SATELLITE_RIGHT=0;
		PXS_SATELLITE_LEFT=0;
		PXS_SATELLITE_ZNV = 0;
		PXS_LAT = 0;
		PXS_LON = 0;
		PXS_DISTANCE = 0;
		};		

		case 20:{	//T
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;
		
		ppInversion = ppEffectCreate ['colorInversion', 2555];
		ppInversion ppEffectEnable true;
		ppInversion ppEffectAdjust [1,1,1];
		ppInversion ppEffectCommit 0;
		
		ppGrain = ppEffectCreate ["filmGrain", 2005];
		ppGrain ppEffectEnable true;
		ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
		ppGrain ppEffectCommit 0;
		
		ppColor = ppEffectCreate ["ColorCorrections", 1999];
		ppColor ppEffectEnable true;
		ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [1, 1, 1, 1.0]];
		ppColor ppEffectCommit 0;

		ctrlSetText [1005, "TVS STATUS...ON"];
		};			

		case 49:{	//N
		ppEffectDestroy ppColor;
		ppEffectDestroy ppInversion;
		ppEffectDestroy ppGrain;
						
		ppGrain = ppEffectCreate ["filmGrain", 2005];
		ppGrain ppEffectEnable true;
		ppGrain ppEffectAdjust [0.02, 1, 1, 0, 1];
		ppGrain ppEffectCommit 0;
		
		ctrlSetText [1005, "TVS STATUS...OFF"];
				   };	
					case 18:{	//E j+
		[] exec "PXS_SATCOM\brgns_up.sqs";
		};

		case 19:{	//R j-
		[] exec "PXS_SATCOM\brgns_down.sqs";
		};			
	};
};