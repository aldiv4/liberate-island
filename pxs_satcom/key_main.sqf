//create UI event keyspressed

disableSerialization;

sleep 0.1;

_disp = findDisplay 46;

PXS_keyEventH = (_disp) displayaddEventHandler ["KeyDown","[_this] call PXS_keyEvent"];

exit;