// Hud modes setup
   mando_hud_init_code = {
		[safeZoneX + safezoneW - 0.2, 0.80, 0.20, false] ExecVM "mando_missiles\huds\custom\custom_radar.sqf";
		[] ExecVM "mando_missiles\huds\custom\custom_hud_apache.sqf";
	};

   mando_hud_modes = [];

   mando_hud_modes = mando_hud_modes + [[
   13,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   5,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LandVehicle"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "AGM-114K",  // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   4,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   24,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   0,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LandVehicle"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "AGM-114L",  // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   4,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   13,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   5,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["REMOTE"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "AGM-114K - Remote",  // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   4,		// Number of simultaneously detected HUD targets (max is 6)
   200, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   -1,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_ ?
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["LOCATIONS"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0,	// Aim circle diameter
   "Navigation", // HUD Text
   0.015,       // IR accuracy for headon shots or radar accuracy with ECM
   6,		// Number of simultaneously detected HUD targets (max is 6)
   800, 	// Sensor width / 2 in meters
   3000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_num_modes = count mando_hud_modes; // Number of available modes

// Missile parameters setup
   call compile (preprocessFileLineNumbers (mando_missile_path+"huds\mando_hud_miss_params.sqf"));