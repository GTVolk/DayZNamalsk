private ["_weapon","_moves","_move_arr","_move","_move_time","_screams","_sound","_sound_distance","_nul"];

diag_log format ["%1: Suicide arguments %2", __FILE__, _this];

_unit = _this select 1;
_weapon = _this select 3;

canAbort = true;

player selectWeapon _weapon;
player playActionNow "PlayerStand";

sleep 1;

_moves = [["ActsPercMstpSnonWpstDnon_suicide1B",7],["ActsPercMstpSnonWpstDnon_suicide2B",7.5]];
_move_arr = _moves call BIS_fnc_selectRandom;

_move = _move_arr select 0;
_move_time = _move_arr select 1;

diag_log format ["%1: Playing suicide move %2 with time %3", __FILE__, _move, _move_time];

player playMoveNow _move;
sleep _move_time;

_screams = ["z_scream_0", "z_scream_3"];
_isWoman = getText(configFile >> "cfgVehicles" >> (typeOf _unit) >> "TextPlural") == "Women";
if (_isWoman) then {
    _screams = ["z_scream_w_3", "z_scream_w_4"];
};
_sound = _screams call BIS_fnc_selectRandom;
_sound_distance = 50;

diag_log format ["%1: Shouting suicide sound %2", __FILE__, _sound];

_nul = [nil, player, rSAY, [_sound,_sound_distance]] call RE;

sleep 0.5;

canAbort = false;
player fire _weapon;

sleep 0.2;

// You still CAN survive shot in the head!
r_player_blood = r_player_blood - (10000 + (random 3000));
player setVariable["USEC_BloodQty",r_player_blood,true];
player setDamage 0.8 + (random 0.3);
player setHit ["head_hit", 1];
