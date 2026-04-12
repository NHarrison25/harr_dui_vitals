params ["_unit", "_isUnconscious"];

if (!_isUnconscious) exitWith {
	_unit setVariable ["diwako_dui_radar_customIcon", "", true]; 
	_unit setVariable ["diwako_dui_indicators_customIcon", "", true];
	_unit setVariable ["diwako_dui_linecompass_customIcon", ["", 2], true];
};

_unit setVariable ["diwako_dui_radar_customIcon", "\A3\Ui_f\data\IGUI\Cfg\Revive\overlayIcons\u100_ca.paa", true]; 
_unit setVariable ["diwako_dui_indicators_customIcon", "\A3\Ui_f\data\IGUI\Cfg\Revive\overlayIcons\u100_ca.paa", true];
_unit setVariable ["diwako_dui_linecompass_customIcon", ["\A3\Ui_f\data\IGUI\Cfg\Revive\overlayIcons\u100_ca.paa", 2], true];

{
	_isMedic = _x call ace_common_fnc_isMedic;

	if (!_isMedic) exitWith {};
	["harr_alertMedic", [], _x] call CBA_fnc_targetEvent;
} forEach units _unit;
