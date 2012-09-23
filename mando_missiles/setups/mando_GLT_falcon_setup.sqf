// The following scripts are for players only, no need to run on dedi servers


[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };


   // GLT_Falcon_GBU cameras setup (onboard LGBs)

   // The MCC script is executed upon activation of the corresponding TV, and setting up all the TV parameters
   // including missile parameters, this is the control script for this TV system and mission editors can 
   // create their owns at will. "mando_missiles\tv\tv_types\" folder has several preconfigured types.
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";

   // TV camera position relative to launcher + angles
   // angles is composed by initial horizontal angle (relative to TV vehicle) and max angle diff with origin
   // [0, 181] = 100% free camera initially heading to vehicle direction
   _cam_pos_angles = [-0.6,2.7,-2,0,181];

   // Weapon index, if >= 0, it is a virtual missile, non existing in the TV vehicle
   // if < 0, then it is (the arma weapon idx + 1) in negative. -6 to use ArmA AV8 idx 5 (LGB bomb)
   _weapon_idx = -8;

   // Launch position is the relative position to the TV vehicle 
   // or a displacement offset to be applied to real weapons fired from the TV vehicle
   // with mando_tv_keepgeo = true for the first case and false for the second (set in the control script)
   // [0,0,-2] makes each LGB bomb dropped to be displayed 2m below the plane at spawn time 
   // This prevents collissions between AV8B and the LGB in air.
   _launch_pos = [0,0,-2];


   _background_mfd = []; // Default values for MDF paa and button placements
   [["GLT_Falcon_MR","GLT_Falcon_Black","GLT_Falcon_euro","GLT_Falcon_lg","GLT_Falcon_mk82","GLT_Falcon_Black_mk82","GLT_Falcon_euro_mk82","GLT_Falcon_lg_mk82","GLT_Falcon_AGM","GLT_Falcon_Black_AGM","GLT_Falcon_euro_AGM","GLT_Falcon_lg_AGM","GLT_Falcon_GBU","GLT_Falcon_Black_GBU","GLT_Falcon_euro_GBU","GLT_Falcon_lg_GBU","GLT_Falcon_CAP","GLT_Falcon_Black_cap","GLT_Falcon_euro_cap","GLT_Falcon_lg_cap"], 0, 0, ["Vehicles", "REMOTE"], "MMA LGB Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("GLT_BombLauncher_LGB" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


   // GLT_Falcon_GBU cameras setup (onboard Harpoons)
   _weapon_idx = -7;
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_84_GLT_Falcon.sqs";
   [["GLT_Falcon_MR","GLT_Falcon_Black","GLT_Falcon_euro","GLT_Falcon_lg","GLT_Falcon_mk82","GLT_Falcon_Black_mk82","GLT_Falcon_euro_mk82","GLT_Falcon_lg_mk82","GLT_Falcon_AGM","GLT_Falcon_Black_AGM","GLT_Falcon_euro_AGM","GLT_Falcon_lg_AGM","GLT_Falcon_GBU","GLT_Falcon_Black_GBU","GLT_Falcon_euro_GBU","GLT_Falcon_lg_GBU","GLT_Falcon_CAP","GLT_Falcon_Black_cap","GLT_Falcon_euro_cap","GLT_Falcon_lg_cap"], 0, 0, ["Vehicles", "REMOTE"], "MMA Harpoon Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("GLT_AGM84Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


// HUD Systems setup



// F16 - CAP Versions
   [["GLT_Falcon_MR","GLT_Falcon_Black","GLT_Falcon_euro","GLT_Falcon_lg","GLT_Falcon_mk82","GLT_Falcon_Black_mk82","GLT_Falcon_euro_mk82","GLT_Falcon_lg_mk82","GLT_Falcon_AGM","GLT_Falcon_Black_AGM","GLT_Falcon_euro_AGM","GLT_Falcon_lg_AGM","GLT_Falcon_GBU","GLT_Falcon_Black_GBU","GLT_Falcon_euro_GBU","GLT_Falcon_lg_GBU","GLT_Falcon_CAP","GLT_Falcon_Black_cap","GLT_Falcon_euro_cap","GLT_Falcon_lg_cap"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_GLT_Falcon_CAP.sqf", 0, 0, [[-6,"GLT_SidewinderXLauncher"],[-8,"GLT_AIM120Launcher"],[-7,"GLT_AIM7Launcher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
