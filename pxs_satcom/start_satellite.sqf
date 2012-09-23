private [];

hint "For insert satellite coordinates, click on the map.";

onMapSingleClick "PXS_SATELLITE_TARGET = ""Logic"" createVehicleLocal _pos;[] exec ""PXS_SATCOM\view_satellite.sqf""";

exit;