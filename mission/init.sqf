/*
	Make Sure to rename the file config_dist.sqf to config.sqf.
	
	This has been done to make sure server owner never have to keep changeing settings every patch
*/

call compile preprocessFileLineNumbers "config.sqf";

/*
	DO NOT EDIT BELOW HERE
*/

// DO NOT EDIT BELOW HERE //
diag_log "start loading";
diag_log "dayz_preloadFinished reset";
dayz_preloadFinished=nil;
onPreloadStarted "diag_log [diag_tickTime,'onPreloadStarted']; dayz_preloadFinished = false;";
onPreloadFinished "diag_log [diag_tickTime,'onPreloadFinished']; dayz_preloadFinished = true;";
with uiNameSpace do { RscDMSLoad=nil; }; // autologon at next logon

if (!isDedicated) then {
	enableSaving [false, false];
	diag_log "start loading screen";
	startLoadingScreen ["","RscDisplayLoadCustom"];
	progressLoadingScreen 0;
	dayz_loadScreenMsg = localize 'str_login_missionFile';
	diag_log "start progress_monitor";
	progress_monitor = [] execVM "\nst\ns_dayz\system\progress_monitor.sqf";
	0 cutText ['','BLACK',0];
	0 fadeSound 0;
	0 fadeMusic 0;
	diag_log "start music";
	playMusic ["12_mutants2",0];
	3 fadeMusic 0.6;
};

diag_log "start initialization";
initialized = false;
diag_log "loading variables";
call compile preprocessFileLineNumbers "\nst\ns_dayz\init\variables.sqf";
progressLoadingScreen 0.05;
diag_log "loading publicEH";
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
progressLoadingScreen 0.1;
diag_log "loading setup_functions_med";
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.15;
diag_log "loading compiles";
call compile preprocessFileLineNumbers "\nst\ns_dayz\init\compiles.sqf";
progressLoadingScreen 0.2;
diag_log "loading BIS_Effects";
call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\init.sqf";
progressLoadingScreen 0.25;
initialized = true;

setTerrainGrid 25;
if (dayz_REsec == 1) then {
    diag_log "loading REsec";
    call compile preprocessFileLineNumbers "\nst\ns_dayz\system\REsec.sqf";
};
diag_log "loading DynamicWeatherEffects";
execVM "\nst\ns_dayz\system\DynamicWeatherEffects.sqf";
diag_log "loading blowout module";
execVM "\nst\ns_modules\blowout\blowout_init.sqf";

if (isServer) then {
    diag_log "loading server_monitor";
	execVM "\z\addons\dayz_server\system\server_monitor.sqf";
};

if (!isDedicated) then {
    if (toLower worldName == "namalsk") then {
        diag_log "checing dayz_nc_lootTable";
	    if (isNil "dayz_nc_lootTable" || !(isClass (configFile >> dayz_nc_lootTable))) then {
            endLoadingScreen;
            0 fadeSound 0;
            0 cutText ["You are running an incorrect version of DayZ: Namalsk, please download newest version from http://www.nightstalkers.cz/", "BLACK"];
        };
	};

	//Enables Plant lib fixes
	diag_log "loading antihack";
	execVM "\z\addons\dayz_code\system\antihack.sqf";

	if (dayz_townGenerator) then {
	    diag_log "loading client_plantSpawner";
	    execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf";
	};

	diag_log "loading player_monitor";
	execFSM "\nst\ns_dayz\system\player_monitor.fsm";

	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;

    diag_log "loading spawn_aii";
    execVM "\nst\ns_modules\aii\spawn_aii.sqf";
    diag_log "loading colorize_default_c";
    execVM "\nst\ns_modules\colorize\colorize_default_c.sqf";
    diag_log "loading fn_dzn_breathfog";
	execVM "\nst\ns_modules\functions\fn_dzn_breathfog.sqf";
	diag_log "loading fn_dustash";
    execVM "\nst\ns_modules\functions\fn_dustash.sqf";

    uiSleep 0.1;

    endLoadingScreen;
};