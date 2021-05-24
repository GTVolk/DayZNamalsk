private["_sound","_length","_pause","_num"];
while {!r_player_dead} do {
    if (round(random 5) == 0) then {
		_sound = "ns_namalsk_coast" + str(round(random 1) + 1);
		_length = getNumber(configFile >> "cfgMusic" >> _sound >> "Duration");
		_pause = ((random 25) + 2) + _length;
	} else {
        _num = round(random 37);
        _sound = "z_suspense_" + str(_num);
        _length = getNumber(configFile >> "cfgMusic" >> _sound >> "Duration");
        _pause = ((random 5) + 2) + _length;
    };

	if (!r_player_unconscious && !r_pitchWhine && !ns_blow_ambient_music) then {
		playMusic _sound;
	};
	uiSleep _pause;
};
