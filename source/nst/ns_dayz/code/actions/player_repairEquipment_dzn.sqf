private ["_field","_itemType","_brokenEquipType","_equipTypeStr","_reppedEquipType","_onLadder","_bp","_content","_objWpnTypes","_objWpnQty","_x","_y","_hasEnough","_wpnType","_wpnCoun","_hasTools"];
_field = _this select 1;
_itemType = _field select 0;
switch (_itemType) do {
	case "GPS": {_brokenEquipType = "BrokenItemGPS";_equipTypeStr = "GPS";_reppedEquipType = "ItemGPS";};
	case "RAD": {_brokenEquipType = "BrokenItemRadio";_equipTypeStr = "radios";_reppedEquipType = "ItemRadio";};
	case "NVG": {_brokenEquipType = "BrokenNVGoggles";_equipTypeStr = "NVG";_reppedEquipType = "NVGoggles";};
};

_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_bp = unitBackpack player;
_content = getWeaponCargo _bp;
_objWpnTypes = _content select 0;
_objWpnQty = _content select 1;
_y = 0;
_hasEnough = false;
{
	_wpnType = _x;
	_wpnCoun = _objWpnQty select _y;
	if ((_wpnType == _brokenEquipType) and (_wpnCoun >= 2)) then {
		_hasEnough = true;
	};
	_y = _y + 1;
} forEach _objWpnTypes;

if (_hasEnough) then {
	_hasTools = false;
	if (player hasWeapon "ItemSolder") then {
		if (player hasWeapon "ItemToolbox") then {
			_hasTools = true;
		} else {
			cutText [localize "STR_DZN_REPAIR_TOOLBOX_NEEDED", "PLAIN DOWN"];
		};
	} else {
		cutText [localize "STR_DZN_REPAIR_SOLDER_NEEDED", "PLAIN DOWN"];
	};
	if (_hasTools) then {
		clearWeaponCargoGlobal _bp;
		_y = 0;
		{
			_wpnType = _x;
			_wpnCoun = _objWpnQty select _y;
			if ((_wpnType == _brokenEquipType)) then {
				if (_wpnCoun > 2) then {
					_bp addWeaponCargoGlobal [_brokenEquipType, _wpnCoun - 2];
				};
			} else {
				_bp addWeaponCargoGlobal [_wpnType, _wpnCoun];
			};
			_y = _y + 1;
		} forEach _objWpnTypes;
		player playActionNow "PutDown";
		sleep 4;
		_bp addWeaponCargoGlobal [_reppedEquipType, 1];
		cutText [format [localize "STR_DZN_REPAIR_SUCCESS", _equipTypeStr], "PLAIN DOWN"];
	};
} else {
	cutText [format [localize "STR_DZN_REPAIR_FAIL_NO_ITEMS", _equipTypeStr], "PLAIN DOWN"];
};