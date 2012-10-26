private["_objectID","_object","_updates","_uGear","_key","_result","_position","_speed","_crew","_canDo","_uid","_type","_previous"];
_object = 	_this select 0;
_objectID =	_object getVariable ["ObjectID",0];
_uid = 		_object call dayz_objectUID;
_type = 	_this select 1;
_speed = speed _object;
_crew = driver _object;
_damage = damage _object;
_canDo = false;
_key = "";
_lastUpdate = _object getVariable ["lastUpdate",time];

_object setVariable ["lastUpdate",time];
switch (_type) do {
	case "all": {
		_position = getPosATL _object;
		_worldspace = [
			round(direction _object),
			_position
		];
		_fuel = 0;
		if (_object isKindOf "AllVehicles") then {
			_fuel = fuel _object;
		};
		_key = format["CHILD:305:%1:%2:%3:",_objectID,_worldspace,_fuel];
		diag_log ("HIVE: WRITE: "+ str(_key));
		_key call server_hiveWrite;
		_inventory = [
			getWeaponCargo _object,
			getMagazineCargo _object,
			getBackpackCargo _object
		];
		_previous = str(_object getVariable["lastInventory",[]]);
		if (str(_inventory) != _previous) then {
			_object setVariable["lastInventory",_inventory];
			if (_objectID == 0) then {
				_key = format["CHILD:309:%1:%2:",_uid,_inventory];
			} else {
				_key = format["CHILD:303:%1:%2:",_objectID,_inventory];
			};
			diag_log ("HIVE: WRITE: "+ str(_key));
			_key call server_hiveWrite;
		};
	};
	case "position": {
		_position = getPosATL _object;
		_worldspace = [
			round(direction _object),
			_position
		];
		_fuel = 0;
		if (_object isKindOf "AllVehicles") then {
			_fuel = fuel _object;
		};
		_key = format["CHILD:305:%1:%2:%3:",_objectID,_worldspace,_fuel];
		diag_log ("HIVE: WRITE: "+ str(_key));
		_key call server_hiveWrite;
	};
	case "gear": {
		_inventory = [
			getWeaponCargo _object,
			getMagazineCargo _object,
			getBackpackCargo _object
		];
		_previous = str(_object getVariable["lastInventory",[]]);
		if (str(_inventory) != _previous) then {
			_object setVariable["lastInventory",_inventory];
			if (_objectID == 0) then {
				_key = format["CHILD:309:%1:%2:",_uid,_inventory];
			} else {
				_key = format["CHILD:303:%1:%2:",_objectID,_inventory];
			};
			diag_log ("HIVE: WRITE: "+ str(_key));
			_key call server_hiveWrite;
		};
	};
	case "damage": {
		_hitPoints = _object call vehicle_getHitpoints;
		_array = [];
		_partCount = 1;
		_dam = 1;
		_avgDamage = 0;

		if (_object isKindOf "Car") then { _partCount = 11 };
		if (_object isKindOf "Ship") then { _partCount = 1 };
		if (typeof _object == "Ikarus") then { _partCount = 15 };
		if (typeof _object == "Old_bike_TK_CIV_EP1") then {_partCount = 2 };
		if (typeof _object == "ATV_US_EP1") then { _partCount = 7 };
		if (typeof _object == "TT650_TK_CIV_EP1") then { _partCount = 5 };
		if (typeof _object == "S1203_TK_CIV_EP1") then { _partCount = 10 };
		if (typeof _object == "UH1H_DZ") then { _partCount = 9 };

		{
			_hit = [_object, _x] call object_getHit;
			_selection = getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "HitPoints" >> _x >> "name");
			if (_hit > 0) then { _array set [count _array, [_selection, _hit]] };
			//diag_log("PART:" + str(_selection) + ":" + str(_hit));
			_avgDamage = _avgDamage + _hit;
		} forEach _hitPoints;
		_avgDamage = _avgDamage / _partCount;

		if (_object == objNull) then { _avgDamage = 1.0 };
		if (_avgDamage >= 0.98) then { _avgDamage = 1.0 };
		_damage = _avgDamage;

		if (_lastUpdate == 0 || (time - _lastUpdate) > 1) then {
			_key = format["CHILD:306:%1:%2:%3:", _objectID, _array, _avgDamage];
			diag_log("HIVE:WRITE:" + str(_key));
			_key call server_hiveWrite;
		};
	};
	case "repair": {
		_hitpoints = _object call vehicle_getHitpoints;
		_array = [];
		_dam = 1;
		{
			_hit = [_object,_x] call object_getHit;
			_selection = getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "HitPoints" >> _x >> "name");
			if (_hit > 0) then {_array set [count _array,[_selection,_hit]]};
		} forEach _hitpoints;
		_key = format["CHILD:306:%1:%2:%3:",_objectID,_array,damage _object];
		diag_log ("HIVE: WRITE: "+ str(_key));
		_key call server_hiveWrite;
	};
};
