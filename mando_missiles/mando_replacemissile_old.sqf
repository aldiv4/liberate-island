/*
mando_replacemissile.sqf v2.3
March 2008 Mandoble

DO NOT EXECUTE THIS SCRIPT MANUALLY

You may add here more missile types to be replaced by mando ones, as well as change the parameters of already replaced ArmA missile types.
*/

private ["_target", "_type", "_firer", "_missile", "_vel", "_dir", "_up", "_launcher", "_missilebody", "_speedini","_speedmax","_acceleration","_boomrange","_activerange","_modeinit","_cruisealt","_boomscript","_smokescript","_soundrsc","_sounddur","_endurance","_terrainavoidance","_updatefreq","_delayinit", "_controltime","_detectable","_debug","_launchscript","_hagility","_vagility","_accuracy","_intercept", "_scanarch","_scanarcv","_posfire","_vdir","_dir","_vangle","_replaced"];

_target = _this select 0;
_type = _this select 1;
_firer = _this select 2;


if (local _firer) then
{
   hintSilent format["M:%1", _this];
   _replaced = false;
   _missile = nearestObject [_firer, _type];
   Sleep 0.4;
   _posfire = _firer worldToModel (getPos _missile);
   _vdir = vectorDir _missile;
   _dir = (_vdir select 0) atan2 (_vdir select 1);

   switch (_type) do
   {
      case "M_Javelin_AT":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 0;
         _speedmax         = 250;
         _acceleration     = 100;
         _boomrange        = 3;
         _activerange      = 250;
         _modeinit         = 0;
         _cruisealt        = 100;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
         _smokescript      = "";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 8;
         _terrainavoidance = false;
         _updatefreq       = 1;
         _delayinit        = 0;
         _controltime      = 0;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 30;
         _vagility         = 55;
         _accuracy         = 1;
         _intercept        = false;
         _scanarch         = 35;
         _scanarcv         = 85;
 
         _vangle = asin(_vdir select 2);
         _replaced = true;
      };

      case "M_Stinger_AA":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 10;
         _speedmax         = 300;
         _acceleration     = 200;
         _boomrange        = 5;
         _activerange      = 3000;
         _modeinit         = 2;
         _cruisealt        = 50;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1l.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 6;
         _terrainavoidance = false;
         _updatefreq       = 999;
         _delayinit        = 0;
         _controltime      = 0;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 35;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = false;
         _scanarch         = 25;
         _scanarcv         = 25;

         _vangle = asin(_vdir select 2);
         _replaced = true;
      };

      case "M_Strela_AA":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 10;
         _speedmax         = 300;
         _acceleration     = 200;
         _boomrange        = 5;
         _activerange      = 3000;
         _modeinit         = 2;
         _cruisealt        = 50;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1l.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 6;
         _terrainavoidance = false;
         _updatefreq       = 999;
         _delayinit        = 0;
         _controltime      = 0;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 35;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = false;
         _scanarch         = 25;
         _scanarcv         = 25;

         _vangle = asin(_vdir select 2);
         _replaced = true;
      };

      case "M_Sidewinder_AA":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 250;
         _speedmax         = 600;
         _acceleration     = 250;
         _boomrange        = 1;
         _activerange      = 5000;
         _modeinit         = 2;
         _cruisealt        = 50;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 10;
         _terrainavoidance = false;
         _updatefreq       = 999;
         _delayinit        = 0.4;
         _controltime      = 0.2;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 45;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = true;
         _scanarch         = 65;
         _scanarcv         = 65;

         _vangle = 0;
         _replaced = true;
      };

      case "M_R73_AA":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 250;
         _speedmax         = 600;
         _acceleration     = 250;
         _boomrange        = 1;
         _activerange      = 4000;
         _modeinit         = 2;
         _cruisealt        = 50;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 10;
         _terrainavoidance = false;
         _updatefreq       = 1;
         _delayinit        = 0.5;
         _controltime      = 0.2;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 55;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = true;
         _scanarch         = 85;
         _scanarcv         = 65;
   
         _vangle = 0;
         _replaced = true;
      };

      case "M_Maverick_AT":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 200;
         _speedmax         = 500;
         _acceleration     = 150;
         _boomrange        = 0;
         _activerange      = 3000;
         _modeinit         = 2;
         _cruisealt        = 100;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 15;
         _terrainavoidance = false;
         _updatefreq       = 1;
         _delayinit        = 0;
         _controltime      = 0;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 35;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = true;
         _scanarch         = 55;
         _scanarcv         = 55;
 
         _vangle = 0;
         _replaced = true;
      };

      case "M_Hellfire_AT":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 100;
         _speedmax         = 278;
         _acceleration     = 120;
         _boomrange        = 0;
         _activerange      = 3000;
         _modeinit         = 2;
         _cruisealt        = 100;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 15;
         _terrainavoidance = false;
         _updatefreq       = 1;
         _delayinit        = 0;
         _controltime      = 0;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 35;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = true;
         _scanarch         = 55;
         _scanarcv         = 55;
 
         _vangle = 0;
         _replaced = true;
      };

      case "M_Vikhr_AT":
      {
         _launcher         = _firer;
         _missilebody      = _type;
         _speedini         = 100;
         _speedmax         = 278;
         _acceleration     = 120;
         _boomrange        = 0;
         _activerange      = 3000;
         _modeinit         = 2;
         _cruisealt        = 100;
         _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
         _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
         _soundrsc         = "";
         _sounddur         = 29;
         _endurance        = 15;
         _terrainavoidance = false;
         _updatefreq       = 1;
         _delayinit        = 0;
         _controltime      = 0;
         _detectable       = false;
         _debug            = false;
         _launchscript     = "";
         _hagility         = 35;
         _vagility         = 35;
         _accuracy         = 1;
         _intercept        = true;
         _scanarch         = 55;
         _scanarcv         = 55;
 
         _vangle = 0;
         _replaced = true;
      };


      default 
      {
         if (mando_replace_all_missiles) then
         {
            // Generic values for any other missile not listed
            _launcher         = _firer;
            _missilebody      = _type;
            _speedini         = 250;
            _speedmax         = 600;
            _acceleration     = 250;
            _boomrange        = 1;
            _activerange      = 5000;
            _modeinit         = 2;
            _cruisealt        = 50;
            _boomscript       = mando_missile_path+"warheads\mando_missilehead1a.sqf";
            _smokescript      = mando_missile_path+"exhausts\mando_missilesmoke1a.sqf";
            _soundrsc         = "";
            _sounddur         = 29;
            _endurance        = 10;
            _terrainavoidance = false;
            _updatefreq       = 999;
            _delayinit        = 0.5;
            _controltime      = 0.2;
            _detectable       = false;
            _debug            = false;
            _launchscript     = "";
            _hagility         = 45;
            _vagility         = 35;
            _accuracy         = 1;
            _intercept        = true;
            _scanarch         = 65;
            _scanarcv         = 65;

            _vangle = 0;
            _replaced = true;
         };
      };
   };

   if (_replaced) then
   {
//      hint format["M:%1 %2", _this, _missile];

      deleteVehicle _missile;

      [_launcher, _missilebody, _posfire, _dir, _vangle, _speedini, _speedmax, _acceleration, _target, _boomrange, _activerange, _modeinit, _cruisealt, _boomscript, _smokescript, _soundrsc, _sounddur, _endurance, _terrainavoidance, _updatefreq, _delayinit, _controltime, _detectable, _debug, _launchscript, _hagility, _vagility, _accuracy, _intercept, _scanarch, _scanarcv]execVM mando_missile_path+"mando_missile.sqf";
   };
};