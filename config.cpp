class CfgPatches
{
	class harr_dui_vitals
	{
		author = "Apollo";
		weapons[] = {};
		units[] = {};
		requiredAddons[] = {"cba_main","ace_common","ace_medical"};
	};
};

class CfgSounds
{
	class harr_medic_alert
	{
		sound[] = {"harr_dui_vitals\sounds\uncon.ogg",1,1};
		titles[] = {};
	};
};

class CfgFunctions
{
	class harr
	{
		class functions
		{
			file="harr_dui_vitals\functions";
			class handleUncon {};
			class handleRespawn {};
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class harr_dui_vitals_settings
	{
		init = "['harr_dui_vitals_medicAlert', 'CHECKBOX', 'Medic Alert', 'Aux501', false, 2] call CBA_fnc_addSetting;"
	}
};

class Extended_InitPost_EventHandlers 
{
	class CAManBase 
	{
		class harr_dui_vitals
		{
			clientInit = "[player, 'killed', harr_fnc_handleRespawn] call CBA_fnc_addBISEventHandler; [player, 'respawn', harr_fnc_handleRespawn] call CBA_fnc_addBISEventHandler; ['ace_unconscious', harr_fnc_handleUncon] call CBA_fnc_addEventHandler;"
		};
	};
};
