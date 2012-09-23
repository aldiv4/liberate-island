// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   _background_mfd = [];

   // Cameras for gunners of AH1Z class choppers

   // AH64 cameras setup (8 onboard hellfires)
    _mcctypeaascript = "mando_missiles\tv\tv_types\mando_tv_hellfire.sqs";
   [["AH64D","AH64D_Sidewinders"], 0, 0, ["Vehicles", "REMOTE"], "MMA AGM-114K", _mcctypeaascript, [-3,2,-2], [0.05,6.5,-.25,0,181], {(driver _plane == player) && ("HellfireLauncher" in weapons _plane) && !(isPlayer gunner _plane)}, 0, -6, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


   // AH64 cameras setup (8 onboard hellfires)
   _mcctypeaascript = "mando_missiles\tv\tv_types\mando_tv_hellfire.sqs";
   [["AH64D","AH64D_Sidewinders"], 0, 0, ["Vehicles", "REMOTE"], "MMA AGM-114K", _mcctypeaascript, [-3,2,-2], [0.1,6.5,0,0,181], {(gunner _plane == player) && ("HellfireLauncher" in weapons _plane)}, 0, -6, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   // HUDs for pilots and gunners
   [["AH64D","AH64D_Sidewinders"], 0, "sight", [4], [4], 15, 15, 15, [4,3,-2.5], mando_missile_path+"huds\mando_hud_ah64.sqf", 0, 0, [[-9,"HellfireLauncher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   // HUDs for pilots and gunners
   [["AH64D","AH64D_Sidewinders"], 1, "sight", [4], [4], 15, 15, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_ah64_gun.sqf", 0, 0, [[-9,"HellfireLauncher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
