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
			class alertMedic {};
		};
	};
};

class Extended_PostInit_EventHandlers {
	class harr_dui_vitals {
		init = "['ace_unconscious', harr_fnc_handleUncon] call CBA_fnc_addEventHandler; ['harr_alertMedic', harr_fnc_alertMedic] call CBA_fnc_addEventHandler; ['unit', harr_fnc_handleRespawn] call CBA_fnc_addPlayerEventHandler;";
	};
};
