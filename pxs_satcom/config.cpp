class CfgPatches
{
	class PXS_SATCOM
	{
		units[] = {};
		requiredAddons[] = {};
		weapons[] = {};
		requiredVersion = 1.050000;
	};
};

class CfgVehicleClasses
{
	class PXS_SATCOM_Class
	{
		displayName = "PXS_SATCOM";
	};

};

class cfgVehicles
{
	class All{};
	class Static : All{};
	class Building : Static{};
	class Strategic : Building{};

	class PXS_SATCOM_Logic : Strategic
	{
		scope = 2;
		model = "\PXS_SATCOM\pxs_stl.p3d";
		icon = "\PXS_SATCOM\pxs_stl_icon.paa";
		displayName = "SATCOM logic";
		vehicleClass = "PXS_SATCOM_Class";
		armor = 50000;
		mapSize = 1;
		side = 1;
		class Library
		{
			libTextDesc = "";
		};

		class EventHandlers
		{
			init = "";
		};
	};

};

#include "\PXS_SATCOM\init_interference.hpp"