// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };


   // BIS Su34 cameras setup (onboard Ch29s)



   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_Su34.sqs";
   _cam_pos_angles = [-0.6,2.7,-2,0,181];
   _weapon_idx = -6;
   _launch_pos = [0,0,-2];
   _background_mfd = [];

   // Pilots camera
   [["Su34"], 0, 0, ["Vehicles"], "MMA Ch29 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(driver _plane == player) && !(isPlayer gunner _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   // Gunner camera	
   [["Su34"], 0, 0, ["Vehicles"], "MMA Ch29 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, 1, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


// Su34 HUD setup for pilot
   [["Su34"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_Su34.sqf", 0, 0.07, [[-7,"R73Launcher"],[-6,"Ch29Launcher_Su34"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

// Su34 HUD setup for gunner
//   [["Su34"], 1, "", [], [], 15, 15, 0, [4,3,-2.5], "", 0, 0.07, [], 1]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

// Su34 HUD for gunners
   [["Su34"], 1, "sight", [4], [4], 15, 15, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_Su34_gun.sqf", 0, 0, [[-9,"R73Launcher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
