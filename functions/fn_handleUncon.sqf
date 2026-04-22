params ["_unit", "_isUnconscious"];

private _isMedic = player call ace_common_fnc_isMedic;
private _isPlayer = _unit == player;

if (harr_dui_vitals_medicAlert) then 
{
	if (_isMedic && !_isPlayer && _isUnconscious && (_unit in units group player)) then 
	{
		playSoundUI ["harr_medic_alert", 0.5];
	};
};

if (!_isPlayer) exitWith {};

if (!_isUnconscious) exitWith 
{
	_unit setVariable ["diwako_dui_radar_customIcon", "", true]; 
	_unit setVariable ["diwako_dui_indicators_customIcon", "", true];
	_unit setVariable ["diwako_dui_linecompass_customIcon", ["", 2], true];
};

_unit setVariable ["diwako_dui_radar_customIcon", "\A3\Ui_f\data\IGUI\Cfg\Revive\overlayIcons\u100_ca.paa", true]; 
_unit setVariable ["diwako_dui_indicators_customIcon", "\A3\Ui_f\data\IGUI\Cfg\Revive\overlayIcons\u100_ca.paa", true];
_unit setVariable ["diwako_dui_linecompass_customIcon", ["\A3\Ui_f\data\IGUI\Cfg\Revive\overlayIcons\u100_ca.paa", 2], true];
