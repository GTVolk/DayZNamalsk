/*
        Created exclusively for ArmA2:OA - DayZMod.
        Please request permission to use/alter/distribute from project leader (R4Z0R49)
*/
private ["_wreck","_maxlocalspawned","_maxControlledZombies", "_bs_spawn_types", "_is_bs_spawn", "_bs_chance", "_iPos","_nearByZed","_nearByPlayer","_rnd","_positions","_zombieChance","_unitTypes","_min","_max","_num","_clean","_obj","_type","_config","_canLoot","_originalPos","_fastRun","_enabled","_i","_Pos"];
_obj = 			_this select 0;
_wreck = false;
if (count _this > 1) then {
	_wreck = 			_this select 1;
};

_type = 		typeOf _obj;
_config = 		missionConfigFile >> dayz_nc_lootTable >> "Buildings" >> _type;
_canLoot = 		isClass (_config);
_originalPos = 	getPosATL _obj;

_maxlocalspawned = round(dayz_spawnZombies);
//Lets check if we need to divide the amount of zeds
if (r_player_divideinvehicle > 0) then {
	_maxlocalspawned = round(dayz_spawnZombies / r_player_divideinvehicle);
};

_maxControlledZombies = round(dayz_maxLocalZombies);
_enabled = false;

_bs_spawn_types = [
	["land_bspawn",1],
	["land_a_stationhouse",0.2],
	["land_a_castle_donjon",0.6],
	["gravedze",0.8],
	["land_fuel_tank_small",0.2],
	["land_ind_timbers",0.2],
	["land_mil_barracks_i",0.4],
	["land_mil_barracks_l",0.5],
	["crashsite_ru",0.5],
	["crashsite_eu",0.5],
	["crashsite_un",0.5],
	["crashsite_us",0.5]
];

_is_bs_spawn = false;
_bs_chance = 0;
{
    if ((toLower _type) == (_x select 0)) exitWith {
        _is_bs_spawn = true;
        _bs_chance = (_x select 1);
    };
} forEach _bs_spawn_types;

//Add bloodsuckers
if (!isDedicated && _is_bs_spawn && ((diag_tickTime - dzn_ns_bloodsucker_tick) > 0) ) then {
    diag_log format ["Building_SpawnZombies BloodSucker generate call Position: %1, Chance: %2, isWreck: %3", _originalPos, _bs_chance, _wreck];
    [_originalPos, _bs_chance, _wreck] call bloodsucker_generate;
    dzn_ns_bloodsucker_tick = (diag_tickTime + dayz_nc_BloodsuckerTimeout);
};

if (_canLoot ) then {
	//Get zombie class
	_unitTypes = 	getArray (_config >> "zombieClass");
	_min = 			getNumber (_config >> "minRoaming");
	_max = 			getNumber (_config >> "maxRoaming");
	_zombieChance =	getNumber (_config >> "zombieChance");

	//Walking Zombies
	_num = (round(random _max)) max _min; // + round(_max / 3);
	//diag_log ("Class: " + _type + " / Zombies: " + str(_unitTypes) + " / Walking: " + str(_num));
	
	for "_i" from 0 to _num do
	{
		//_iPos = _obj modelToWorld _originalPos;
		if ((_maxlocalspawned < _maxControlledZombies) and (dayz_CurrentNearByZombies < dayz_maxNearByZombies) and (dayz_currentGlobalZombies < dayz_maxGlobalZeds)) then {
			[_originalPos,true,_unitTypes,_wreck] call zombie_generate;
		};
	};

	//Add Internal Zombies
	if ((random 1) < _zombieChance) then {
		_clean = {alive _x} count ((getPosATL _obj) nearEntities ["zZombie_Base",(sizeOf _type)]) == 0;
		if (_clean) then {
			_positions =	getArray (_config >> "zedPos");
			//diag_log format["Building: %1 / Positions: %2 / Chance: %3",_type,_positions,_zombieChance];
			{
				_Pos = [_x select 0, _x select 1, 0];
				_rnd = random 1;
				if (_rnd < _zombieChance) then {
					_iPos = _obj modelToWorld _Pos;
					_nearByZed = {alive _x} count (_iPos nearEntities ["zZombie_Base",(((sizeOf _type) * 2) + 10)]) > 0;
					_nearByPlayer = ({isPlayer _x} count (_iPos nearEntities ["CAManBase",30])) > 0;
					//diag_log ("BUILDING: " + _type + " / " + str(_nearByZed) + " / " + str(_nearByPlayer));
					if ((_maxlocalspawned < _maxControlledZombies) and (dayz_CurrentNearByZombies < dayz_maxNearByZombies) and (dayz_currentGlobalZombies < dayz_maxGlobalZeds)) then {
						if (!_nearByPlayer and !_nearByZed) then {
							[_iPos,false,_unitTypes,false] call zombie_generate;
						};
					};
				};
			} forEach _positions;
		};
	};
};

//diag_log ("2 end");
