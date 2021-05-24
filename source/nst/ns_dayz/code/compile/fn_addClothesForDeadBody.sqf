private["_body", "_type", "_skinItem"];

_body = _this select 0;
_type = typeOf _body;

_skinItem = "";
if (_type == "Camo1_DZ") 		then { _skinItem = "Skin_Camo1_DZ"; };
if (_type == "Soldier1_DZ") 	then { _skinItem = "Skin_Soldier1_DZ"; };
if (_type == "CamoWinter_DZN") 	then { _skinItem = "Skin_CamoWinter_DZN"; };
if (_type == "CamoWinterW_DZN") then { _skinItem = "Skin_CamoWinterW_DZN"; };
if (_type == "Sniper1_DZ") 		then { _skinItem = "Skin_Sniper1_DZ"; };
if (_type == "Sniper1W_DZN") 	then { _skinItem = "Skin_Sniper1W_DZN"; };

if (_skinItem != "") then {
	_body addMagazine _skinItem;
};