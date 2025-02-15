private ["_unit","_blood","_lowBlood","_injured","_inPain","_animState","_started","_finished","_timer","_i","_isMedic","_isClose","_duration","_rhVal","_bloodBagArrayNeeded","_BBneeded","_bbselect","_bloodBagNeeded","_badBag","_wholeBag","_bagFound","_bagToRemove","_forceClose","_bloodType","_rh","_bloodBagArray","_bbarray_length","_bloodBagWholeNeeded","_haswholebag","_r","_bagBloodType","_bagBloodRS"];

// bleed.sqf
_unit = _this select 0;
_bagUsed = _this select 1;
_bagBloodType = _this select 2;
_bagBloodRS = _this select 3;

_blood = _unit getVariable ["USEC_BloodQty", 0];
_lowBlood = _unit getVariable ["USEC_lowBlood", false];
_injured = _unit getVariable ["USEC_injured", false];
_inPain = _unit getVariable ["USEC_inPain", false];
if (time - dayz_lastSelfTransfusion <= 120) exitWith {localize "str_actions_medical_18" call dayz_rollingMessages;};

call gear_ui_init;
closeDialog 0;

_bloodType = _unit getVariable ["blood_type", false];
_rh = _unit getVariable ["rh_factor", false];

_badBag = false;
_wholeBag = false;
_bagFound = false;
_BBneeded = false;
_forceClose = false;
_duration = 120;

_bloodBagArray = ["wholeBloodBagANEG","wholeBloodBagAPOS","wholeBloodBagBNEG","wholeBloodBagBPOS","wholeBloodBagABNEG","wholeBloodBagABPOS","wholeBloodBagONEG","wholeBloodBagOPOS"];

if (_rh) then {_rhVal = "POS";} else {_rhVal = "NEG";};


// Fix
if (_rhVal == "NEG" && _bagBloodRS == "POS") then {
	_badBag = true;
} else {
	if (_bloodType == "O") then {
		if (_bagBloodType == "O") then {
			_wholeBag = true;
		} else {
			_badBag = true;
		};
	};
	if (_bloodType == "A") then {
		if (_bagBloodType == "O" || _bagBloodType == "A") then {
			_wholeBag = true;
		} else {
			_badBag = true;
		};
	};
	if (_bloodType == "B") then {
		if (_bagBloodType == "O" || _bagBloodType == "B") then {
			_wholeBag = true;
		} else {
			_badBag = true;
		};
	};
	if (_bloodType == "AB") then {
		_wholeBag = true;
	};
};

_bloodBagWholeNeeded = "wholeBloodBag" + _bagBloodType + _bagBloodRS;
if (dayz_classicBloodBagSystem) then {_wholeBag = true; _badBag = false;};

call fnc_usec_medic_removeActions;
r_action = false;

if (vehicle player == player) then {
	//not in a vehicle
	player playActionNow "Medic";
};

r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;
_timer = diag_tickTime;
_i = 0;
_r = 0;

while {r_doLoop and (_i < 12)} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;

	if (_isMedic and !_started) then {
		closeDialog 0;
		diag_log format ["TRANSFUSION: starting blood transfusion (%1 > %2)", name player, name _unit];
		if (_badBag) then {
			for "_r" from 0 to 15 do {
				_bagToRemove = _bagUsed;
				if (_bagToRemove in magazines player) exitWith {   //TODO: add separate action menu options so the removed bag isn't random
					_bagFound = true;
					if (_r >= 8) then {
						_wholeBag = true;
					};
				};
			};
		} else {
			if (_wholeBag) then {_bagToRemove = _bloodBagWholeNeeded; };
			if (dayz_classicBloodBagSystem) then { _bagToRemove = _bagUsed; };
			if (_bagToRemove in magazines player) then { _bagFound = true; };
		};
		if (!_bagFound) then {_forceClose = true;} else { player removeMagazine _bagToRemove;};
		localize "str_actions_medical_transfusion_start" call dayz_rollingMessages;
		_started = true;
	};

	if (_started) then {
		if ((diag_tickTime - _timer) >= 1) then {
			_timer = diag_tickTime;
			_i = _i + 3;
			if (!_badBag) then {
				if (!_forceClose) then {
					if (!_wholeBag) then {
						_randomamount = round(random 60);
						r_player_blood = r_player_blood + 100 + _randomamount;
					} else {
						_randomamount = round(random 200);
						r_player_blood = r_player_blood + 800 + _randomamount;
					};
					
					//PVDZ_send = [_unit,"Transfuse",[_unit,player,1000]];
					//publicVariableServer "PVDZ_send";
				};
			} else {
				if (!_forceClose) then {
					[_unit, _duration] call fnc_usec_damageUnconscious;

					r_player_infected = true;
					player setVariable["USEC_infected",true,true];

					localize "str_dzn_bad_blood_transfused" call dayz_rollingMessages;

					while { r_player_blood > 500 } do {
						r_player_blood = r_player_blood - 100;
						sleep 0.5;
					};

					_i = 24;
				};
			};
		};

		if (!_isMedic) then {
			player playActionNow "Medic";
		};
	};

	_blood = _unit getVariable ["USEC_BloodQty", 0];

	if (((_blood >= r_player_bloodTotal) and !_badBag and _bagFound) or (_i == 12)) then {
		diag_log format ["TRANSFUSION: completed blood transfusion successfully (_i = %1)", _i];
		dayz_lastSelfTransfusion = time;
		localize "str_actions_medical_transfusion_successful" call dayz_rollingMessages;
		r_doLoop = false;
	};

	_isClose = ((player distance _unit) < ((sizeOf typeOf _unit) / 2));

	if (r_interrupt or !_isClose or _forceClose) then {
		diag_log format ["TRANSFUSION: transfusion was interrupted (r_interrupt: %1 | distance: %2 (%3) | _i = %4)", r_interrupt, player distance _unit, _isClose, _i];
		localize "str_actions_medical_transfusion_interrupted" call dayz_rollingMessages;
		r_doLoop = false;
	};

	uiSleep 0.1;
};

r_doLoop = false;

if (r_interrupt) then {
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
};
