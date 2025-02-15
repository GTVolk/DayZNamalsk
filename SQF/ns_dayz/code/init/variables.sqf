disableSerialization;

//Model Variables
Bandit1_DZ = "Bandit1_DZ";
BanditW1_DZ = "BanditW1_DZ";
Survivor1_DZ = "Survivor1_DZ";
Survivor2_DZ = "Survivor2_DZ";
SurvivorW2_DZ = "SurvivorW2_DZ";
Sniper1_DZ = "Sniper1_DZ";
Camo1_DZ = "Camo1_DZ";
Soldier1_DZ = "Soldier1_DZ";
Rocket_DZ = "Rocket_DZ";

//Rolling Msg system
Message_1 = "";
Message_2 = "";
Message_3 = "";
Message_1_time = 0;
Message_2_time = 0;
Message_3_time = 0;

//OpenTarget timer
OpenTarget_Time = 0;

///Player classes
AllPlayers = ["Survivor_DZ","Survivor1_DZ","SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","Survivor3_DZ", "CamoWinter_DZN", "CamoWinterW_DZN", "Sniper1W_DZN"];
DayZ_Male = ["Survivor_DZ","Survivor1_DZ","Survivor2_DZ","Survivor3_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","Bandit1_DZ"];
DayZ_Female = ["SurvivorW2_DZ","BanditW1_DZ"];

//Classnames for specific items
MeleeWeapons = ["MeleeHatchet","MeleeCrowbar","MeleeMachete","MeleeBaseball","MeleeBaseBallBat","MeleeBaseBallBatBarbed","MeleeBaseBallBatNails","MeleeFishingPole"];
MeleeMagazines = ["Hatchet_Swing","Crowbar_Swing","Machete_Swing","Bat_Swing","BatBarbed_Swing","BatNails_Swing","Fishing_Swing"];
MeleeAmmo = ["Hatchet_Swing_Ammo","Crowbar_Swing_Ammo","Machete_Swing_Ammo","Bat_Swing_Ammo","BatBarbed_Swing_Ammo","BatNailed_Swing_Ammo","Fishing_Swing_Ammo"];
Dayz_fishingItems = ["MeleeFishingPole"];
Dayz_plants = ["Dayz_Plant1","Dayz_Plant2","Dayz_Plant3"];
Dayz_attachment_array = ["Attachment_ACG","Attachment_AIM"];
//DayZ_Tents = ["TentStorage","TentStorage0","TentStorage1","TentStorage2","TentStorage3","TentStorage4","DomeTentStorage","DomeTentStorage0","DomeTentStorage1","DomeTentStorage2","DomeTentStorage3","DomeTentStorage4"]
//DayZ_Stashs = ["StashSmall","StashSmall1","StashSmall2","StashSmall3","StashSmall4","StashMedium","StashMedium1","StashMedium2","StashMedium3","StashMedium4"]
//DayZ_cutter = ["Wire_cat1","Sandbag1_DZ","Fence_DZ","Generator_DZ","Hedgehog_DZ","CamoNet_DZ"]
DayZ_Backpacks = ["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_Czech_Vest_Pouch","DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];
Dayz_Gutting = ["ItemKnife","ItemKnife5","ItemKnife4","ItemKnife3","ItemKnife2","ItemKnife1","ItemKnifeBlunt"];
DayZ_Ignitors = ["ItemMatchbox","Item5Matchbox","Item4Matchbox","Item3Matchbox","Item2Matchbox","Item1Matchbox"];
DayZ_ViralZeds = ["z_new_villager2","z_new_villager3","z_new_villager4","z_new_worker2","z_new_worker3","z_new_worker4"];
DayZ_SafeObjects = ["Base_Fire_DZ","WoodenGate_1","WoodenGate_2","WoodenGate_3","WoodenGate_4","Land_Fire_DZ","TentStorage","TentStorage0","TentStorage1","TentStorage2","TentStorage3","TentStorage4","StashSmall","StashSmall1","StashSmall2","StashSmall3","StashSmall4","StashMedium","StashMedium1","StashMedium2","StashMedium3","StashMedium4","Wire_cat1","Sandbag1_DZ","Fence_DZ","Generator_DZ","Hedgehog_DZ","BearTrap_DZ","DomeTentStorage","DomeTentStorage0","DomeTentStorage1","DomeTentStorage2","DomeTentStorage3","DomeTentStorage4","CamoNet_DZ","Trap_Cans","TrapTripwireFlare","TrapBearTrapSmoke","TrapTripwireGrenade","TrapTripwireSmoke","TrapBearTrapFlare"];
DayZ_GearedObjects = ["Car","Helicopter","Motorcycle","Ship","TentStorage_base","StashSmall_base","StashMedium_base"];
DayZ_RestingAnims = ["amovpsitmstpsnonwpstdnon_ground","amovpsitmstpsnonwpstdnon_smoking","amovpsitmstpsraswrfldnon_weaponcheck1","amovpsitmstpsraswrfldnon"];
dayz_typedBags = ["bloodTester","bloodBagANEG","bloodBagAPOS","bloodBagBNEG","bloodBagBPOS","bloodBagABNEG","bloodBagABPOS","bloodBagONEG","bloodBagOPOS","wholeBloodBagANEG","wholeBloodBagAPOS","wholeBloodBagBNEG","wholeBloodBagBPOS","wholeBloodBagABNEG","wholeBloodBagABPOS","wholeBloodBagONEG","wholeBloodBagOPOS"];
dayz_playerAchievements = []; //[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
dayz_trees = ["ind_timbers.p3d","t_picea2s_snow.p3d","b_corylus.p3d","t_quercus3s.p3d","t_larix3s.p3d","t_pyrus2s.p3d","str_briza_kriva.p3d","dd_borovice.p3d","les_singlestrom_b.p3d","les_singlestrom.p3d","smrk_velky.p3d","smrk_siroky.p3d","smrk_maly.p3d","les_buk.p3d","str krovisko vysoke.p3d","str_fikovnik_ker.p3d","str_fikovnik.p3d","str vrba.p3d","hrusen2.p3d","str dub jiny.p3d","str lipa.p3d","str briza.p3d","p_akat02s.p3d","jablon.p3d","p_buk.p3d","str_topol.p3d","str_topol2.p3d","p_osika.p3d","t_picea3f.p3d","t_picea2s.p3d","t_picea1s.p3d","t_fagus2w.p3d","t_fagus2s.p3d","t_fagus2f.p3d","t_betula1f.p3d","t_betula2f.p3d","t_betula2s.p3d","t_betula2w.p3d","t_alnus2s.p3d","t_acer2s.p3d","t_populus3s.p3d","t_quercus2f.p3d","t_sorbus2s.p3d","t_malus1s.p3d","t_salix2s.p3d","t_picea1s_w.p3d","t_picea2s_w.p3d","t_ficusb2s_ep1.p3d","t_populusb2s_ep1.p3d","t_populusf2s_ep1.p3d","t_amygdalusc2s_ep1.p3d","t_pistacial2s_ep1.p3d","t_pinuse2s_ep1.p3d","t_pinuss3s_ep1.p3d","t_prunuss2s_ep1.p3d","t_pinusn2s.p3d","t_pinusn1s.p3d","t_pinuss2f.p3d","t_poplar2f_dead_pmc.p3d","misc_torzotree_pmc.p3d","misc_burnspruce_pmc.p3d","brg_cocunutpalm8.p3d","brg_umbrella_acacia01b.p3d","brg_jungle_tree_canopy_1.p3d","brg_jungle_tree_canopy_2.p3d","brg_cocunutpalm4.p3d","brg_cocunutpalm3.p3d","palm_01.p3d","palm_02.p3d","palm_03.p3d","palm_04.p3d","palm_09.p3d","palm_10.p3d","brg_cocunutpalm2.p3d","brg_jungle_tree_antiaris.p3d","brg_cocunutpalm1.p3d","str habr.p3d","brg_bird_1.p3d","brg_bird_2.p3d","brg_bird_3.p3d","brg_umbrella_acacia02b.p3d","brg_africandoumpalm_1.p3d","brg_umbrella_acacia04b.p3d","brg_datepalm_4.p3d","brg_datepalm_1.p3d","brg_umbrella_acacia03b.p3d","brg_bottle_4.p3d","brg_aloe1.p3d","brg_umbrella_acacia03.p3d","brg_umbrella_acacia01.p3d","brg_umbrella_acacia04.p3d","brg_aloe2.p3d","brg_umbrella_acacia02.p3d","brg_aloe3.p3d","brg_bottle_1.p3d","brg_datepalm_3.p3d","brg_datepalm_2.p3d","brg_baobab_1.p3d","brg_bottle_2.p3d","brg_bottle_3.p3d","t_fraxinus2s.p3d","t_carpinus2s.p3d"];
SecondaryWeapons = ["Revolver_DZ","PDW_DZ","Makarov_DZ","Makarov_SD_DZ","M1911_DZ","M9_DZ","M9_SD_DZ","G17_DZ","G17_FL_DZ","G17_MFL_DZ","G17_SD_DZ","G17_SD_FL_DZ","G17_SD_MFL_DZ"];

Dayz_meatraw =
[
    "FoodBeefRaw",
    "FoodMuttonRaw",
    "FoodChickenRaw",
    "FoodRabbitRaw",
    "FoodBaconRaw",
    "FoodGoatRaw",
	"FishRawTrout",
	"FishRawSeaBass",
	"FishRawTuna"
];

Dayz_meatcooked =
[
    "FoodBeefCooked",
    "FoodMuttonCooked",
    "FoodChickenCooked",
    "FoodRabbitCooked",
    "FoodBaconCooked",
	"FoodGoatCooked",
	"FishCookedTrout",
	"FishCookedSeaBass",
	"FishCookedTuna"
];

boil_tin_cans =
[
    "TrashTinCan",
	"FoodCanGriffEmpty",
	"FoodCanBadguyEmpty",
	"FoodCanBoneboyEmpty",
	"FoodCanCornEmpty",
	"FoodCanCurgonEmpty",
	"FoodCanDemonEmpty",
	"FoodCanFraggleosEmpty",
	"FoodCanHerpyEmpty",
	"FoodCanDerpyEmpty",
	"FoodCanOrlokEmpty",
	"FoodCanPowellEmpty",
	"FoodCanTylersEmpty",
	"FoodCanUnlabeledEmpty",
	"FoodCanRusUnlabeledEmpty",
	"FoodCanRusStewEmpty",
	"FoodCanRusPorkEmpty",
	"FoodCanRusPeasEmpty",
	"FoodCanRusMilkEmpty",
	"FoodCanRusCornEmpty",
    "ItemSodaEmpty",
	"ItemSodaClaysEmpty",
	"ItemSodaDrwasteEmpty",
	"ItemSodaFrankaEmpty",
	"ItemSodaGrapeDrinkEmpty",
	"ItemSodaLemonadeEmpty",
	"ItemSodaLirikEmpty",
	"ItemSodaLvgEmpty",
	"ItemSodaMtngreenEmpty",
	"ItemSodaMzlyEmpty",
	"ItemSodaPeppsyEmpty",
	"ItemSodaR4z0rEmpty",
	"ItemSodaRabbitEmpty",
	"ItemSodaRocketFuelEmpty",
	"ItemSodaSacriteEmpty",
	//"ItemSodaSherbetEmpty",
	"ItemSodaSmashtEmpty",
	"FoodCanPotatoesEmpty",
    "FoodCanBeefEmpty"
];

canPickup = false;
pickupInit = false;
mouseOverCarry = false; //for carry slot since determining mouse pos doesn't work right
dayZ_partClasses = ["PartFueltank","PartWheel","PartEngine"]; //No need to add PartGeneric, it is default for everything
dayZ_explosiveParts = ["palivo","motor"];
if (isNil "infectedWaterHoles") then {infectedWaterHoles = [];}; //Needed for non-cherno maps

//Survival Variables
SleepFood = 2160; //minutes (48 hours)
SleepWater = 1440; //minutes (24 hours)
SleepTemperatur = 90 / 100;	//First value = Minutes until player reaches the coldest point at night (without other effects! night factor expected to be -1) //TeeChange

//Server Variables
allowConnection = false;
dayz_serverObjectMonitor = [];

//GUI
Dayz_GUI_R = 0.38; // 0.7 .38
Dayz_GUI_G = 0.63; // -0.63
Dayz_GUI_B = 0.26; // -0.26

//actions blockers
a_player_cooking = false;
a_player_boil = false;

//Player self-action handles
dayz_resetSelfActions = {
	s_player_equip_carry = -1;
	s_player_fire = -1;
	s_player_cook = -1;
	s_player_boil = -1;
	s_player_packtent = -1;
	s_player_packtentinfected = -1;
	s_player_fillfuel = -1;
	s_player_grabflare = -1;
	s_player_removeflare = -1;
	s_player_studybody = -1;
	s_player_deleteBuild = -1;
	s_player_flipveh = -1;
	s_player_sleep = -1;
	s_player_fillfuel20 = -1;
	s_player_fillfuel5 = -1;
	s_player_siphonfuel = -1;
	s_player_fishing = -1;
	s_player_fishing_veh = -1;
	s_player_gather = -1;
	s_player_destroytent = -1;
	s_player_attach_bomb = -1;
	s_player_upgradestorage = -1;
	s_player_Drinkfromhands = -1;
	s_player_lockhouse = -1;
	s_player_unlockhouse = -1;
	s_player_openGate = -1;
	s_player_CloseGate = -1;
	s_player_breakinhouse = -1;
	s_player_setCode = -1;
	s_player_BuildUnLock = -1;
	s_player_BuildLock = -1;
	s_player_suicide = -1;
};
call dayz_resetSelfActions;

//Engineering variables
s_player_repairActions = [];

//Initialize Medical Variables
force_dropBody = false;
r_interrupt = false;
r_doLoop = false;
r_drag_sqf = false;
r_action = false;
r_action_unload = false;
r_player_handler = false;
r_player_unconsciousInProgress = false;
r_player_unconsciousInputDisabled = false;
r_player_dead = false;
r_player_unconscious = false;
r_player_infected = false;
//infection from hits
r_player_Sepsis = [false, 0];
r_player_injured = false;
r_player_inpain = false;
r_player_loaded = false;
r_player_cardiac = false;
r_fracture_legs = false;
r_fracture_arms = false;
r_player_vehicle = player;
r_player_blood = 12000;
r_player_bloodregen = 0;
r_player_bloodgainpersec = 0;
r_player_bloodlosspersec = 0;
r_player_bloodpersec = 0; //Blood Per Sec (gain - loss)
r_player_foodstack = 1;
//player skill
r_player_lowblood = false;
r_player_timeout = 0;
r_player_bloodTotal = r_player_blood;
r_player_actions = [];
r_handlerCount = 0;
r_action_targets = [];
r_pitchWhine = false;
dayz_DisplayGenderSelect = true;
//blood test vars
r_A_watered = false;
r_B_watered = false;
r_D_watered = false;
r_control_watered = false;
r_canClick_resultsCard = false;
r_resultsCard_Clicked = false;
r_water_clicked = false;
r_needleclicked = 0;
r_needleReset = false;
r_control_done = false;
r_antiA_done = false;
r_antiB_done = false;
r_antiD_done = false;
carryClick = false;
dayz_actionInProgress = false;

//player warming up vars
//heatpack
r_player_warming_heatpack = [false, 0];
r_player_warming_heatpack_time = 600; 

//displays temp progress
r_player_temp_factor = 0; //to be used for temp(up/down) indicators
r_player_temp_min_factor = -0.04; //(lvl3 down arrow)
r_player_temp_max_factor = 0.04; //(lvl3 up arrow)
 
//INT Nutrition Info
r_player_Nutrition = 0; // Calories
r_player_nutritionMuilpty = 2;

//ammo routine
r_player_actions2 = [];
r_action2 = false;
r_player_lastVehicle = objNull;
r_player_lastSeat = [];
r_player_removeActions2 = {
	if (!isNull r_player_lastVehicle) then {
		{
			r_player_lastVehicle removeAction _x;
		} count r_player_actions2;
		r_player_actions2 = [];
		r_action2 = false;
	};
};

USEC_woundHit = ["","body","hands","legs","head_hit"]; // limbs hit given by arma engine when fnc_usec_damageHandler is called
DAYZ_woundHit = [["body","hands","legs","head_hit"],[0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,3]];
DAYZ_woundHit_ok = [["body","hands","legs"],[0,0,0,0,0,1,1,1,2,2]];
USEC_MinorWounds = ["hands","legs"];
USEC_woundPoint = [ // translation table USEC_woundHit -> SV suffixes
	["Pelvis","aimpoint"],
	["aimpoint"], //,"RightShoulder","LeftShoulder"
	["lelbow","relbow"],
	["RightFoot","LeftFoot"],
	["neck","pilot"]
];
USEC_typeOfWounds = [ // used by player_sumMedical, should contains all limbs described in USEC_woundPoint. These limbs statuses are saved by server_playerSync in HIVE if they are bleeding (medical select 8)
	"Pelvis",
	"aimpoint",
	"lelbow","relbow",
	"RightFoot","LeftFoot",
	"neck","pilot"
];

//Initialize Zombie Variables
dayz_zombieTargetList = [["SoldierWB",50],["Air",500],["LandVehicle",200]];
PVDZ_obj_Publish = []; // Used for eventhandler to spawn a mirror of players tent
PVCDZ_obj_HideBody = objNull;

//DayZ settings
dayz_maxAnimals = 5;
dayz_maxPlants = 3;
dayz_animalDistance = 600;
dayz_plantDistance = 600;

dayz_maxMaxModels = 150; // max quantity of Man models (player or Z, dead or alive) around players. Below this limit we can spawn Z // max quantity of loot piles around players. Below this limit we can spawn some loot
dayz_cantseeDist = 150; // distance from which we can spawn a Z in front of any player without ray-tracing and angle checks
dayz_cantseefov = 70; // half player field-of-view. Visible Z won't be spawned in front of any near players
dayz_canDelete = 350; // Z, further than this distance from its "owner", will be deleted
dayz_traps_active = [];
dayz_traps_trigger = [];

Dayz_clientEXT = false; //enables/disables the use of the client EXT 

//Settings Not under dayz_settings
if(isNil "dayz_attackRange") then { 
	dayz_attackRange = 3;
};
if(isNil "dayz_DamageMultiplier") then { 
	dayz_DamageMultiplier = 1;
};
if(isNil "dayz_quickSwitch") then {
	dayz_quickSwitch = false; //Enable quick weapon switch,
};
//Will be moved to map
if(isNil "dayz_infectiouswaterholes") then {
	dayz_infectiouswaterholes = true; //Enable infected waterholes
};
if(isNil "dayz_POIs") then {
    dayz_POIs = true; //Enable POI's
};
if(isNil "dayz_ForcefullmoonNights") then {
	dayz_ForcefullmoonNights = false; // Forces night time to be full moon.
};
if(isNil "dayz_randomMaxFuelAmount") then {
	dayz_randomMaxFuelAmount = 250; //Puts a random amount of fuel in all fuel stations.
};
if(isNil "dayz_townGenerator") then {
	dayz_townGenerator = true; // Spawn map junk. Currently only compatible with Chernarus. Need to add coordinates for other maps.
};
if(isNil "dayz_townGeneratorBlackList") then {
	dayz_townGeneratorBlackList = []; // Town generator will not spawn junk within 150m of these positions.
};

//Replace server individual settings with ranked settings
if(isNil "dayz_presets") then { dayz_presets = "Vanilla"; };

switch (dayz_presets) do {
	case "Custom": { //Custom 
		if(isNil "dayz_enableGhosting") then { dayz_enableGhosting = false; };
		if(isNil "dayz_ghostTimer") then { dayz_ghostTimer = 120; };
		if(isNil "dayz_spawnselection") then { dayz_spawnselection = 0; };
		if(isNil "dayz_spawncarepkgs_clutterCutter") then { dayz_spawncarepkgs_clutterCutter = 0; };
		if(isNil "dayz_spawnCrashSite_clutterCutter") then { dayz_spawnCrashSite_clutterCutter = 0; };
		if(isNil "dayz_spawnInfectedSite_clutterCutter") then { dayz_spawnInfectedSite_clutterCutter = 0; };
		if(isNil "dayz_bleedingeffect") then { dayz_bleedingeffect = 2; };
		if(isNil "dayz_OpenTarget_TimerTicks") then { dayz_OpenTarget_TimerTicks = 60 * 10; };
		if(isNil "dayz_temperature_override") then { dayz_temperature_override = true; };
		if(isNil "dayz_nutritionValuesSystem") then { dayz_nutritionValuesSystem = false; };
		if(isNil "dayz_classicBloodBagSystem") then { dayz_classicBloodBagSystem = false; };
		if(isNil "dayz_enableFlies") then { dayz_enableFlies = true; };
	};
    case "Classic": { //Classic
		dayz_enableGhosting = false; //Enable disable the ghosting system.
		dayz_ghostTimer = 120; //Sets how long in seconds a player must be dissconnected before being able to login again.
		dayz_spawnselection = 0; //Turn on spawn selection 0 = random only spawns, 1 = Spawn choice based on limits
		dayz_spawncarepkgs_clutterCutter = 0; //0 =  loot hidden in grass, 1 = loot lifted and 2 = no grass
		dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 =  loot hidden in grass, 1 = loot lifted and 2 = no grass
		dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn... 0: loot hidden in grass, 1: loot lifted, 2: no grass 
		dayz_bleedingeffect = 2; //1= blood on the ground, 2= partical effect, 3 = both.
		dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked.
		dayz_temperature_override = true; // Set to true to disable all temperature changes.
		dayz_nutritionValuesSystem = false; //Enables nutrition system
		dayz_classicBloodBagSystem = true; //Enables one type of bloodbag
		dayz_enableFlies = true;  //Enables flies spawning on death
	};
	case "Elite": { //Elite
		dayz_enableGhosting = true; //Enable disable the ghosting system.
		dayz_ghostTimer = 90; //Sets how long in seconds a player must be dissconnected before being able to login again.
		dayz_spawnselection = 0; //Turn on spawn selection 0 = random only spawns, 1 = Spawn choice based on limits
		dayz_spawncarepkgs_clutterCutter = 0; //0 =  loot hidden in grass, 1 = loot lifted and 2 = no grass
		dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 =  loot hidden in grass, 1 = loot lifted and 2 = no grass
		dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn... 0: loot hidden in grass, 1: loot lifted, 2: no grass 
		dayz_bleedingeffect = 3; //1= blood on the ground, 2= partical effect, 3 = both.
		dayz_OpenTarget_TimerTicks = 60 * 25; //how long can a player be freely attacked for after attacking someone unprovoked.
		dayz_temperature_override = false; // Set to true to disable all temperature changes.
		dayz_nutritionValuesSystem = true; //Enables nutrition system
		dayz_classicBloodBagSystem = false; //Enables one type of bloodbag
		dayz_enableFlies = true; //Enables flies spawning on death
	};
    default { //Vanilla
		dayz_enableGhosting = true; //Enable disable the ghosting system.
		dayz_ghostTimer = 60; //Sets how long in seconds a player must be disconnected before being able to login again.
		dayz_spawnselection = 1; //Turn on spawn selection 0 = random only spawns, 1 = Spawn choice based on limits
		dayz_spawncarepkgs_clutterCutter = 0; //0 =  loot hidden in grass, 1 = loot lifted and 2 = no grass
		dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 =  loot hidden in grass, 1 = loot lifted and 2 = no grass
		dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn... 0: loot hidden in grass, 1: loot lifted, 2: no grass 
		dayz_bleedingeffect = 3; //1= blood on the ground, 2= partical effect, 3 = both.
		dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked.
		dayz_temperature_override = false; // Set to true to disable all temperature changes.
		dayz_nutritionValuesSystem = true; //Enables nutrition system
		dayz_classicBloodBagSystem = false; //Enables one type of bloodbag
		dayz_enableFlies = true; //Enables flies spawning on death
	};
};

respawn_west_original = getMarkerPos "respawn_west"; //Prevent problems caused by cheaters moving respawn_west marker with setMarkerPos or deleteMarker

switch (toLower worldName) do {
	case "napf";
	case "ruegen";
	case "sauerland" : {dayz_minpos = -1000; dayz_maxpos = 26000;};
	case "tavi" : {dayz_minpos = -26000; dayz_maxpos = 26000;};
	case "chernarus" : {dayz_minpos = -1; dayz_maxpos = 16000;};
	case default {dayz_minpos = -20000; dayz_maxpos = 20000;};
};

//start achievements_init
//call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\achievements_init.sqf";

if (isServer) then {
	dayz_serverPUIDArray = [];
	dayz_serverClientKeys = [];
	dayz_traps = [];
	dead_bodyCleanup = [];
	needUpdate_objects = [];
	needUpdate_FenceObjects = [];
	//dayz_spawnCrashSite_clutterCutter=0; // helicrash spawn... 0: loot hidden in grass, 1: loot lifted, 2: no grass 
	//dayz_spawnInfectedSite_clutterCutter=0; // infected base spawn... 0: loot hidden in grass, 1: loot lifted, 2: no grass 
	//Objects to remove when killed.
	DayZ_nonCollide = ["TentStorage","TentStorage0","TentStorage1","TentStorage2","TentStorage3","TentStorage4","StashSmall","StashSmall1","StashSmall2","StashSmall3","StashSmall4","StashMedium","StashMedium1","StashMedium2","StashMedium3", "StashMedium4", "DomeTentStorage", "DomeTentStorage0", "DomeTentStorage1", "DomeTentStorage2", "DomeTentStorage3", "DomeTentStorage4", "CamoNet_DZ"];
	DayZ_WoodenFence = ["WoodenFence_1","WoodenFence_2","WoodenFence_3","WoodenFence_4","WoodenFence_5","WoodenFence_6","WoodenFence_7"];
	DayZ_WoodenGates = ["WoodenGate_1","WoodenGate_2","WoodenGate_3","WoodenGate_4"];
	DayZ_removableObjects = ["Wire_cat1","Sandbag1_DZ","Hedgehog_DZ","CamoNet_DZ","Trap_Cans","TrapTripwireFlare","TrapBearTrapSmoke","TrapTripwireGrenade","TrapTripwireSmoke","TrapBearTrapFlare"];
	//[10416.695, 4198.4634],[7982.2563, 1419.8256],[10795.93, 1419.8263],[7966.083, 4088.7463],[9259.7266, 2746.1985],[5200.5234, 3915.3274],[6494.1665, 2572.7798],[5216.6968, 1246.407],[2564.7244, 3915.3296],[3858.3674, 2572.782],[2580.8977, 1246.4092],[13398.995, 4400.5874],[12242.025, 2948.3196],[13551.842, 1832.2257],[14870.512, 3009.5117],[-178.19415, 1062.4478],[1099.2754, 2388.8206],[-194.36755, 3731.3679],[10394.215, 8322.1719],[7959.7759, 5543.5342],[10773.449, 5543.5342],
	dayz_grid =[[7943.6025, 8212.4551],[9237.2461, 6869.9063],[5178.043, 8039.0361],[6471.686, 6696.4883],[5194.2163, 5370.1152],[2542.2439, 8039.0381],[3835.887, 6696.4902],[2558.4172, 5370.1172],[13376.514, 8524.2969],[12219.544, 7072.0273],[13529.361, 5955.9336],[14848.032, 7133.2197],[-200.67474, 5186.1563],[1076.7949, 6512.5283],[-216.84814, 7855.0771],[10293.751, 12197.736],[7859.312, 9419.0996],[10672.988, 9419.0996],[7843.1387, 12088.021],[9136.7822, 10745.474],[5077.5791, 11914.601],[6371.2222, 10572.052],[5093.7524, 9245.6816],[2441.78, 11914.604],[3735.4231, 10572.055],[2457.9534, 9245.6816],[13276.053, 12399.861],[12119.08, 10947.596],[13428.897, 9831.501],[14747.566, 11008.786],[-301.13867, 9061.7207],[976.33112, 10388.096],[-317.31201, 11730.642],[10271.271, 16321.429],[7836.8315, 13542.813],[10650.506, 13542.813],[7820.6582, 16211.718],[9114.3018, 14869.175],[5055.0986, 16038.3],[6348.7417, 14695.758],[5071.272, 13369.392],[2419.2996, 16038.305],[3712.9426, 14695.76],[2435.4729, 13369.392],[13253.568, 16523.553],[12096.6, 15071.295],[13406.416, 13955.209],[14725.089, 15132.486],[-323.61914, 13185.43],[953.85059, 14511.8],[-339.79248, 15854.346]];
	dayz_choppedTrees = [];
	dayz_ghostPlayers = [];
	dayz_activePlayers = [];
	dayz_died = [];
};

if (!isDedicated) then {
	dayz_authKey = "";
	dayz_buildingBubbleMonitor = [];
	DayZ_fuelCans = ["ItemJerrycan","ItemFuelcan"];
	DayZ_fuelCansEmpty = ["ItemJerrycanEmpty","ItemFuelcanEmpty"];
	DayZ_fuelSources = ["Land_Ind_TankSmall","Land_fuel_tank_big","Land_fuel_tank_stairs","Land_fuel_tank_stairs_ep1","Land_wagon_tanker","Land_fuelstation","Land_fuelstation_army","Land_smd_fuelstation_army","land_fuelstation_w","Land_benzina_schnell"];
	//Needed for trees spawned with createVehicle like POI (typeOf returns class instead of "")
	dayz_treeTypes = ["","MAP_t_picea1s","MAP_t_picea2s","MAP_t_picea3f","MAP_t_pinusN2s","MAP_t_pinusS2f","MAP_t_populus3s","MAP_t_betula2s","MAP_t_fagus2s","MAP_t_fagus2W","MAP_t_malus1s"];
	
	//temperature variables
	dayz_temperatur = 36; //TeeChange
	dayz_temperaturnormal = 36; //TeeChange
	dayz_temperaturmax = 42; //TeeChange
	dayz_temperaturmin = 27; //TeeChange

	//player special variables
	dayz_bloodBagHumanity = 300;
	dayz_HarvestingChance = [0.09];
	dayz_lastCheckBit = 0;
	dayz_lastDamageSourceNull = false;
	dayz_lastDamageSource = "none";
	dayz_lastDamageTime = 0;
	dayz_lastMedicalSource = "none";
	dayz_lastMedicalTime = 0;
	dayz_lastClothesChange = 0;
	dayZ_lastPlayerUpdate = 0;
	dayz_lastSelfTransfusion = -120;
	dayz_lastTransfusion = 0;
	dayz_playerName = "unknown";
	dayz_hunger = 0;
	dayz_thirst = 0;
	dayz_nutrition = 0;
	dayz_preloadFinished = true;
	dayz_soundMuted = false;
	dayz_disAudial = 0;
	dayz_disVisual = 0;
	dayz_firedCooldown = 0;
	dayz_damageCounter = time;
	dayz_lastSave = diag_tickTime;
	dayz_isSwimming = true;
	dayz_currentDay = 0;
	dayz_hasLight = false;
	dayz_surfaceNoise = 0;
	dayz_surfaceType = "None";
	dayz_noPenalty = [];
	dayz_heavenCooldown = 0;
	deathHandled = false;
	dayz_firstGroup = group player;
	dayz_originalPlayer = player;
	dayz_sourceBleeding = objNull;
	dayz_clientPreload = false;
	dayz_authed = false;
	dayz_panicCooldown = 0;
	dayz_areaAffect = 3.5;
	dayz_monitorPeriod = 0.6; // number of seconds between each player_zombieCheck calls
	dayz_heartBeat = false;
	dayz_spawnZombies = 0; // Current local
	dayz_swarmSpawnZombies = 0;
	dayz_maxLocalZombies = 20; // max quantity of Z controlled by local gameclient, used by player_spawnCheck. Below this limit we can spawn Z
	dayz_CurrentNearByZombies = 0;
	dayz_maxNearByZombies = 40; // max quantity of Z controlled by local gameclient, used by player_spawnCheck. Below this limit we can spawn Z
	dayz_currentGlobalZombies = 0; // Current total
	if(isNil "dayz_maxGlobalZeds") then {
		dayz_maxGlobalZeds = 1000;
	};
	//Animals
	dayz_currentGlobalAnimals =	0;
	dayz_maxGlobalAnimals =	50;
	//Plants	
	dayz_currentGlobalPlants = 0;
	dayz_maxGlobalPlants = 100;
	//Loot
	r_player_divideinvehicle = 0;
	dayz_currentWeaponHolders = 0;
	dayz_maxMaxWeaponHolders = 250;
	dayz_inVehicle = false;
	dayz_unsaved = false;
	dayz_scaleLight = 0;
	dayz_onBack = "";
	dayz_fishingInprogress = false;
	lastSpawned = diag_tickTime;
	lastSepsis = 0;
	NORRN_dropAction = -1;
	dayz_dodge = false;
	Dayz_constructionContext = [];
	Dayz_freefall = [ time, 0, 0.1 ];
	dayz_getoutTime = 0;
	dayz_hitByTime = 0;
	skipGearSound = false;
	TimeOutDisplayed = false;
	playerHumanityCHK = 0;

	// DayZ: Namalsk
	if (isNil "dayz_nc_lootTable") then {
	    dayz_nc_lootTable = "CfgLootNamalsk";
	};
	dzn_ns_bloodsucker = true;
    dzn_ns_bloodsucker_tick = diag_tickTime;
	dayz_nc_currentGlobalBloodsuckers = 0; // Current total
    if(isNil "dayz_nc_maxGlobalBloodsuckers") then {
    	dayz_nc_maxGlobalBloodsuckers = 5;
    };
    if(isNil "dayz_nc_BloodsuckerChance") then {
    	dayz_nc_BloodsuckerChance = 0.25;
    };
    if(isNil "dayz_nc_BloodsuckerTimeout") then {
        dayz_nc_BloodsuckerTimeout = 600;
    };
    ns_aii_l_status = 1;
    ns_blow_ambient_music = false;
    ns_blowout_dayz = true;
    if(isNil "ns_blowout") then {
        ns_blowout = true;
    };
    if(isNil "ns_blow_delaymod") then {
        ns_blow_delaymod = 1;
    };
};
