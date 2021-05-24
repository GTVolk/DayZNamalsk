//Server settings
dayZ_instance = 1337; //Instance ID of this server
dayZ_serverName = "1337"; //Shown to all players in the bottom left of the screen (country code + server number)

//Game settings
dayz_antihack = 1; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_antiWallHack = 1; //DayZ AntiWallhack / 1 = enabled // 0 = disabled, Adds items to the map to plug holes.
dayz_REsec = 1; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = false; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = true;
dayz_infectiousWaterholes = false;
dayz_ForcefullmoonNights = false; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 500; //Puts a random amount of fuel in all fuel stations.
dayz_townGenerator = false; // Must be off for Namalsk!
server_maintainArea = {};

//DayZMod presets
dayz_presets = "Classic"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = true; //Enable disable the ghosting system.
	dayz_ghostTimer = 120; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 0; //Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 2; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 2;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 2; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 3; //1 = blood on the ground, 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = true; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = false; // removes all blood type bloodbags (not implmented yet)
	dayz_enableFlies = true; // Enable flies on dead bodies (negatively impacts FPS).
};

//Temp settings
dayz_DamageMultiplier = 2; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
dayz_maxGlobalZeds = 1000; //Limit the total zeds server wide.
dayz_temperature_override = false; // Set to true to disable all temperature changes.

// DayZ: Namalsk
dzn_ns_bloodsucker = true;		// Make this false for disabling bloodsucker spawn
dayz_nc_BloodsuckerChance = 0.25;	// Spawn chance of bloodsuckers, ignore if dayz_nc_Bloodsucker set to false
dayz_nc_BloodsuckerTimeout = 600;
dayz_nc_maxGlobalBloodsuckers = 10;    // Maximum number of spawned bloodsuckers
ns_blowout = true;
ns_blow_delaymod = 1;
dayz_nc_lootTable = "CfgLootNamalsk";	// can be CfgLootNamalskNOER7 (function of this pretty obvious), CfgLootNamalskNO50s (CfgLootNamalskNOER7 + no 50 cals), CfgLootNamalskNOSniper (CfgLootNamalskNOER7 + no sniper rifles), default is CfgLootNamalsk

dayz_ServerMessages = [
	["DayZMod", "Welcome "+(name player)],
	["World", worldName],
	["Teamspeak", "some TS info"],
	["Website/Forums", "some website info"],
	["Server Rules", "Duping, glitching or using any<br />exploit will result in a<br />permanent ban."],
	["Server Rules", "No talking in side."],
	["Server Rules", "Hackers will be banned permanently<br />Respect others"],
	["News", "Some random new info!<br />Random news<br />"]
];