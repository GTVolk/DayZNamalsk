private["_position","_chance","_bypass","_cantSee","_skipFOV","_chance","_tooClose","_agent","_bloodBagArray", "_lootItem","_grp", "_content"];

diag_log "BloodSucker_Generate Start";
_position = _this select 0;
_chance = _this select 1;
_bypass = _this select 2;

diag_log "BloodSucker_Generate CantSee definition";
_cantSee = {
	private["_isOk","_zPos","_fov","_safeDistance","_farDistance","_xasl","_eye","_ed","_deg"];
    //private "_isOk";

    diag_log "BloodSucker_Generate Check is player cant see unit";
	_isOk = true;
	_zPos = +(_this select 0);
	if (count _zPos < 3) exitWith {
		diag_log format["%1::_cantSee illegal pos %2", __FILE__, _zPos];
		false
	};
	_zPos = ATLtoASL _zPos;
	_fov = _this select 1; // players half field of view
	_safeDistance = _this select 2; // minimum distance. closer is wrong
	_farDistance = _this select 3; // distance further we won't check
	_zPos set [2, (_zPos select 2) + 1.7];
	{
		_xasl = getPosASL _x;
		if (_xasl distance _zPos < _farDistance) then {
			if (_xasl distance _zPos < _safeDistance) then {
				_isOk = false;
			} else {
				_eye = eyePos _x; // ASL
				_ed = eyeDirection _x;
				_ed = (_ed select 0) atan2 (_ed select 1);
				_deg = [_xasl, _zPos] call BIS_fnc_dirTo;
				_deg = (_deg - _ed + 720) % 360;
				if (_deg > 180) then { _deg = _deg - 360; };
				if ((abs(_deg) < _fov) && {( // in right angle sector?
						(!(terrainIntersectASL [_zPos, _eye]) // no terrain between?
						&& {(!(lineIntersects [_zPos, _eye]))}) // and no object between?
					)}) then {
					_isOk = false;
				};
			};
		};
		if (!_isOk) exitWith {false};
	    uiSleep 0.001;
	} forEach playableUnits;

	_isOk
};

_skipFOV = false;
_rnd = random 1;
diag_log format ["BloodSucker_Generate Checking BloodSucker chances (enabled: %1 / chance: %2 of %3 / current spawned: %4 of %5)", dzn_ns_bloodsucker, _chance, _rnd, dayz_nc_currentGlobalBloodsuckers, dayz_nc_maxGlobalBloodsuckers];
if (dzn_ns_bloodsucker && (_chance < _rnd) && (dayz_nc_currentGlobalBloodsuckers < dayz_nc_maxGlobalBloodsuckers)) then {
	if (_bypass) then {  
		_skipFOV = true;
		_position = [_position,10,100,5] call fn_selectRandomLocation;
	};

    diag_log "Starting BloodSucker generator!";
	if (surfaceIsWater _position) exitWith {
	    diag_log "BloodSucker_Generate Location is in Water Abort";
	};

	if ((_skipFOV) or {([_position, 15, 50, 150] call _cantSee)}) then {
		_tooClose = {isPlayer _x} count (_position nearEntities ["CAManBase",75]) > 0;
		if (_tooClose) exitwith {
		    diag_log "BloodSucker_Generate BloodSucker was too close to player.";
		};

		//add to global counter
		dayz_nc_currentGlobalBloodsuckers = dayz_nc_currentGlobalBloodsuckers + 1;

        //Add bloodbag to loot
        _content = "this setUnitPos 'UP';this setBehaviour 'CARELESS';this setSpeedMode 'FULL';this setDir (random 360);";
        if ((random 1) < 0.18) then {
            _bloodBagArray = ["wholeBloodBagANEG","wholeBloodBagAPOS","wholeBloodBagBNEG","wholeBloodBagBPOS","wholeBloodBagABNEG","wholeBloodBagABPOS","wholeBloodBagONEG","wholeBloodBagOPOS"];
            diag_log format ["BloodSucker loot: %1", _loot];
            if (dayz_classicBloodBagSystem) then {
                _bloodBagArray = ["ItemBloodbag"];
            };

            _lootItem = _bloodBagArray call BIS_fnc_selectRandom;

            diag_log format ["BloodSucker_Generate BloodSucker got bloodbag %1", _lootItem];
            _content = _content + "this addMagazine '" + str(_lootItem) + "';";
        };

		"ns_bloodsucker" createUnit [_position, (group mutant_leader), _content, 1, "CORPORAL"];
		diag_log format ["BloodSucker_Generate BloodSucker generate completed! Position: %1, Group: %2, Content: %3", _position, (group mutant_leader), _content];

		uiSleep 0.03;
	};
};
