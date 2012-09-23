// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };
 
   [["ACE_Su27_CASP","ACE_Su27_CAS","ACE_Su27_CAP"], 0, "", [1,1], [1,1], 15, 15, 20,[4,3,-2.5], mando_missile_path+"huds\mando_hud_ace_Su27.sqf", 0, 0, [[-1,"N/A"]],0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   // Pilots cameras
   _cam_pos_angles = [-0.6,2.7,-2,0,181];
   _weapon_idx = -6;
   _launch_pos = [0,0,-2];
   _background_mfd = [];
   
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_Su34.sqs";
   [["ACE_Su27_CASP","ACE_Su27_CAS","ACE_Su27_CAP"], 0, 0, ["Vehicles"], "MMA Ch29 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(driver _plane == player) && ("Ch29Launcher_Su34" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
 
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_ch29.sqs";
   [["ACE_Su27_CASP","ACE_Su27_CAS","ACE_Su27_CAP"], 0, 0, ["Vehicles"], "MMA Ch29 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(driver _plane == player) && ("Ch29Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
};