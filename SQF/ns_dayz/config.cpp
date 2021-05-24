class CfgPatches
{
	class ns_dayz {
		units[] =
		{
			"Mi17_Civilian_Nam",
			"Ka60_GL_NAC",
			"Ka60_NAC"
		};
		weapons[] =
		{
			"57mmLauncher_NAC",
			"M32_heli_NAC"
		};
		
		requiredVersion = 0.100000;
		requiredAddons[] = 
		{
			"dayz_code"
		};
		
		author[] = {
			"Sumrak",
			"GTVolk"
		};
	};
};

class CfgMods {
    class nc_dzn {
        dir = "@NC";
        name = "DayZ: Namalsk";
        picture = "nst\ns_dayz\data\dayznamalsk_logo_ca.paa";
        hidePicture = "false";
        hideName = "false";
        action = "http://www.nightstalkers.cz/en_index_dn.php";
        version = "0.75";
    };
};

class CfgAmmo {
    class Default;
    class RocketCore_NAC: Default {
        simulation = "shotRocket";
        simulationStep = 0.05;
        timeToLive = 20;
        maneuvrability = 0.0;
        maxControlRange = 0;
        initTime = 0.05;
        thrustTime = 1;
        thrust = 1500;
        visibleFire = 32;
        audibleFire = 32;
        visibleFireTime = 20;
        cost = 2000;
        deflecting = 5;
    };

    class RocketBase_NAC: RocketCore_NAC {
	    model = "\ca\weapons\AT1";
	    hit = 500;
	    indirectHit = 150;
	    indirectHitRange = 2;
	    soundHit[] = {"Ca\sounds\Weapons\explosions\explosion_large1",44.668358,1,1800};
	    soundFly[] = {"Ca\sounds\Weapons\explosions\rocket_fly1",0.1,1.5,400};
	    soundEngine[] = {"Ca\sounds\Weapons\explosions\noise",0.0031622776,1,20};
	    supersonicCrackNear[] = {"Ca\sounds\Weapons\explosions\supersonic_crack_close",1,1,150};
	    supersonicCrackFar[] = {"Ca\sounds\Weapons\explosions\supersonic_crack_50meters",1,1,250};
	    maxSpeed = 1;
	    initTime = 0;
	    thrustTime = 0.2;
	    thrust = 2000;
	    CraterEffects = "HERocketCrater";
	    explosionEffects = "HERocketExplosion";
	    muzzleEffect = "BIS_Effects_Rocket";
	    effectsMissile = "missile1";
    };

    class R_x57mm_HE_NAC: RocketBase_NAC {
    	model = "\ca\air\70mmRocket";
    	hit = 150;
    	indirectHit = 40;
    	indirectHitRange = 12;
    	cost = 200;
    	maxSpeed = 580;
    	thrustTime = 1.1;
    	thrust = 450;
    	sideAirFriction = 0.15;
    	fuseDistance = 40;
    	timeToLive = 20;
    	whistleDist = 24;
    };
};

class CfgMagazines {
	class 1Rnd_HE_M203;
	class 6Rnd_HE_M203_NAC: 1Rnd_HE_M203 {
		count = 6;
		displayName = "$STR_EP1_DN_6Rnd_HE_M203";
		descriptionShort = "$STR_EP1_DSS_6Rnd_HE_M203";
		type = "2*		256";
		picture = "\CA\weapons_E\Data\icons\m_6x40mmHP_CA.paa";
	};

	class 6Rnd_HE_M203_heli_NAC: 6Rnd_HE_M203_NAC {
		maxLeadSpeed = 170;
	};

	class VehicleMagazine;
	class 64Rnd_57mm_NAC: VehicleMagazine {
		scope = 2;
		displayName = "$STR_MN_S5KO";
		ammo = "R_x57mm_HE_NAC";
		initSpeed = 44;
		maxLeadSpeed = 200;
		nameSound = "rockets";
		sound[] = {"\ca\Weapons\Data\Sound\Rockets\rocketLauncher_Shot21",1.0,1};
		reloadSound[] = {"\ca\Weapons\Data\Sound\missload",0.00031622776,1};
		count = 64;
	};

	class 14Rnd_57mm_NAC: 64Rnd_57mm_NAC {
		count = 14;
	};
	
	class SkinBase;
	class Skin_CamoWinter_DZN: SkinBase {
		scope = 2;
		displayName = "$STR_DZN_CAMOWINTER_SHORT";
		descriptionShort = "$STR_DZN_CAMOWINTER_DESC";
	};

	class Skin_CamoWinterW_DZN: SkinBase {
		scope = 2;
		displayName = "$STR_DZN_CAMOWINTER_SHORT";
		descriptionShort = "$STR_DZN_CAMOWINTER_DESC";
	};

	class Skin_Sniper1W_DZN: SkinBase {
		scope = 2;
		displayName = "$STR_EQUIP_NAME_43";
		descriptionShort = "$STR_EQUIP_DESC_43";
	};
};

class Mode_SemiAuto;
class Mode_Burst;
class Mode_FullAuto;

class CfgWeapons {
    class Default;
    class MGunCore: Default {
        type = "1	+	4";
        dexterity = 0.5;
        aiRateOfFire = 0.5;
        aiRateOfFireDistance = 400;
    };

    class MGun: MGunCore {
        type = 65536;
        cursor = "MGCursor";
        cursoraim = "\ca\Weapons\Data\clear_empty";
        cursorSize = 1;
        displayName = "$STR_DN_MGUN";
        nameSound = "mgun";
        reloadTime = 0.25;
        autoFire = 1;
        reloadAction = "ManActReloadMagazine";
        sound[] = {"\ca\Weapons\Data\Sound\M60_SS",1.0,1,1400};
        soundContinuous = 0;
        reloadSound[] = {"",1,1};
        initSpeed = 900;
        flash = "gunfire";
        flashSize = 0.5;
        optics = 0;
    };

    class M32_heli_NAC: MGun {
        scope = 1;
        displayName = "$STR_EP1_DN_M32_EP1";
        magazines[] = {"6Rnd_HE_M203_heli_NAC"};
        reloadTime = 0.5;
        magazineReloadTime = 3;
        cursor = "Vehicle_Grenade_E";
        cursoraim = "\ca\Weapons\Data\clear_empty";
        cursorSize = 2;
        sound[] = {"\Ca\sounds\Weapons\cannon\AGS30_shot1_a",3.1622777,1,1200};
        dispersion = 0.007;
        minRange = 8;
        minRangeProbab = 0.6;
        midRange = 450;
        midRangeProbab = 0.7;
        maxRange = 1500;
        maxRangeProbab = 0.1;
        aiRateOfFire = 2.0;
        aiRateOfFireDistance = 500;
        canLock = 0;
    };


    class LauncherCore;
    class RocketPods_NAC: LauncherCore {
        scope = 1;
        cursorAim = "\ca\Weapons\Data\clear_empty";
        cursor = "Rocket";
        cursorSize = 1;
        type = 65536;
        reloadTime = 0.2;
        autoFire = 1;
        minRange = 50;
        minRangeProbab = 0.1;
        midRange = 600;
        midRangeProbab = 0.25;
        maxRange = 2500;
        maxRangeProbab = 0.05;
        canLock = 2;
        nameSound = "rockets";
    };

    class 57mmLauncher_NAC: RocketPods_NAC {
        magazines[] = {"14Rnd_57mm_NAC"};
        modes[] = {"Far_AI","Burst"};

        class Far_AI: RocketPods_NAC {
            displayName = "$STR_DN_57MMLAUNCHER_SINGLE";
            minRange = 50;
            minRangeProbab = 0.15;
            midRange = 600;
            midRangeProbab = 0.25;
            maxRange = 2500;
            maxRangeProbab = 0.05;
            reloadTime = 0.08;
            sound[] = {"\ca\Sounds\weapons\cannon\S_5",31.622776,1,1000};
            soundFly[] = {"\ca\Sounds\weapons\cannon\rocket_fly_x2",1.0,1.2,800};
            burst = 2;
            autoFire = 0;
            showToPlayer = 0;
        };

        class Burst: RocketPods_NAC {
            displayName = "$STR_DN_57MMLAUNCHER_BURST";
            burst = 2;
            reloadTime = 0.08;
            autoFire = 1;
            sound[] = {"\ca\Sounds\weapons\cannon\S_5",31.622776,1,1000};
            soundFly[] = {"\ca\Sounds\weapons\cannon\rocket_fly_x2",1.0,1.2,800};
            soundContinuous = 0;
            minRange = 250;
            minRangeProbab = 0.25;
            midRange = 400;
            midRangeProbab = 0.5;
            maxRange = 600;
            maxRangeProbab = 0.1;
        };
    };
 
 // 1.7.5.1 banning!
 class RifleCore;
 class Rifle;
 class KSVK_DZN: Rifle {
  scope = 2;
  type = "1";
  model = "\ca\weapons\ksvk\ksvk";
  picture = "\CA\weapons\data\Equip\W_ksvk_CA.paa";
  UiPicture = "\CA\weapons\data\Ico\i_sniper_CA.paa";
  magazines[] = {"5Rnd_127x108_KSVK"};
  dexterity = 0.48;
  modelOptics = "\ca\weapons\ksvk\pso3_optics";
  opticsPPEffects[] = {"OpticsCHAbera1","OpticsBlur2"};
  handAnim[] = {"OFP2_ManSkeleton","\Ca\weapons\data\Anim\KSVK.rtm"};
  opticsFlare = 1;
  opticsDisablePeripherialVision = 1;
  opticsZoomMin = 0.0311;
  opticsZoomMax = 0.0311;
  distanceZoomMin = 200;
  distanceZoomMax = 200;
  autoFire = 0;
  reloadTime = 2;
  displayname = "$STR_DN_KSVK";
  begin1[] = {"ca\sounds\weapons\rifles\sniper_single_05",1.7782794,1,1000};
  soundBegin[] = {"begin1",1};
  reloadMagazineSound[] = {"Ca\sounds\Weapons\rifles\reload-ak-2ivan",0.031622775,1,20};
  dispersion = 0.0005;
  minRange = 0;
  minRangeProbab = 0.1;
  midRange = 1000;
  midRangeProbab = 0.7;
  maxRange = 1600;
  maxRangeProbab = 0.05;
  recoil = "recoil_single_primary_9outof10";
  recoilProne = "recoil_single_primary_prone_7outof10";
  class Library
  {
   libTextDesc = "$STR_LIB_KSVK";
  };
  descriptionShort = "$STR_DSS_KSVK";
 };
 class PK: Rifle {
  class manual: Mode_FullAuto {};
  class close: manual {};
  class short: close {};
  class medium: close {};
  class far: close {};
 };
 class PK_DZN: PK {
  type = "1";
 };
 
 class Pecheneg_DZN: PK {
  model = "\ca\weapons\Pecheneg_MG_proxy";
  displayName = "$STR_DN_PECHENEG";
  dexterity = 0.7;
  type = "1";
  picture = "\CA\weapons\data\equip\w_pecheneg_mg_ca.paa";
  modelOptics = "\ca\weapons\2Dscope_Pecheneg";
  opticsPPEffects[] = {"OpticsCHAbera2","OpticsBlur3"};
  opticsFlare = 1;
  opticsDisablePeripherialVision = 1;
  opticsZoomInit = 0.0623;
  opticsZoomMin = 0.0623;
  opticsZoomMax = 0.0623;
  distanceZoomMin = 300;
  distanceZoomMax = 300;
  modes[] = {"manual","close","short","medium","far"};
  class manual: manual
  {
   minRange = 0;
   minRangeProbab = 0.3;
   midRange = 5;
   midRangeProbab = 0.58;
   maxRange = 10;
   maxRangeProbab = 0.04;
  };
  class close: close 
  {
   minRange = 10;
   minRangeProbab = 0.05;
   midRange = 20;
   midRangeProbab = 0.58;
   maxRange = 50;
   maxRangeProbab = 0.04;
  };
  class short: short
  {
   minRange = 50;
   minRangeProbab = 0.05;
   midRange = 200;
   midRangeProbab = 0.58;
   maxRange = 400;
   maxRangeProbab = 0.04;
  };
  class medium: medium
  {
   minRange = 200;
   minRangeProbab = 0.05;
   midRange = 400;
   midRangeProbab = 0.58;
   maxRange = 600;
   maxRangeProbab = 0.04;
  };
  class far: far
  {
   minRange = 400;
   minRangeProbab = 0.05;
   midRange = 600;
   midRangeProbab = 0.4;
   maxRange = 1000;
   maxRangeProbab = 0.01;
  };
  class Library
  {
   libTextDesc = "$STR_LIB_PECHENEG";
  };
  descriptionShort = "$STR_DSS_PECHENEG";
 };

 class Makarov_SD_DZ;
 class Makarov_SD_DZN: Makarov_SD_DZ {
  model = "\ca\weapons\makarov_silenced";
  fireLightDuration = 0.0;
  fireLightIntensity = 0.0;
  displayName = "$STR_DN_MAKAROVSD";
  picture = "\CA\weapons\data\equip\w_makarovSD_ca.paa";
  begin1[] = {"ca\sounds\weapons\pistols\makarovSD_single1",0.31622776,1,200};
  soundBegin[] = {"begin1",1};
  reloadMagazineSound[] = {"\ca\Weapons\Data\Sound\pistol_reload",0.031622775,1,20};
  minRange = 0;
  minRangeProbab = 0.1;
  midRange = 15;
  midRangeProbab = 0.3;
  maxRange = 20;
  maxRangeProbab = 0.04;
  class Library
  {
   libTextDesc = "$STR_LIB_MAKAROVSD";
  };
  descriptionShort = "$STR_DSS_MAKAROVSD";
 };

 class AK_47_S;
 class AKS_GOLD_DZN: AK_47_S
 {
  model = "\ca\weapons\AK\ak47s_gold";
  picture = "\ca\weapons\AK\Data\Equip\W_AK47s_gold_CA.paa";
 };

 class AK_BASE;
 class AK_107_BASE: AK_BASE {
 	class Single: Mode_SemiAuto {};
 	class Burst: Mode_Burst {};
 	class FullAuto: Mode_FullAuto {};
 };
 class AK_107_GL_pso_DZN: AK_107_BASE {
  scope = 2;
  dexterity = 1.5;
  model = "\ca\weapons\AK\AK107_GL_pso";
  displayName = "$STR_DN_AK_107_GL_PSO";
  picture = "\ca\weapons\AK\Data\Equip\w_AK107_GL_pso_CA.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  handAnim[] = {"OFP2_ManSkeleton","\Ca\weapons\data\Anim\M16GL.rtm"};
  muzzles[] = {"this","GP25Muzzle"};
  modelOptics = "\ca\weapons\AK\pso_optics";
  opticsPPEffects[] = {"OpticsCHAbera2","OpticsBlur3"};
  opticsFlare = 1;
  opticsDisablePeripherialVision = 1;
  opticsZoomInit = 0.0623;
  opticsZoomMin = 0.0623;
  opticsZoomMax = 0.0623;
  distanceZoomMin = 200;
  distanceZoomMax = 200;
  class Library
  {
   libTextDesc = "$STR_LIB_AK107_GL_pso";
  };
  descriptionShort = "$STR_DSS_AK107_GL_pso";
  class Single: Single
  {
   minRange = 2;
   minRangeProbab = 0.3;
   midRange = 300;
   midRangeProbab = 0.7;
   maxRange = 600;
   maxRangeProbab = 0.04;
  };
  class Burst: Burst
  {
   minRange = 1;
   minRangeProbab = 0.3;
   midRange = 150;
   midRangeProbab = 0.7;
   maxRange = 300;
   maxRangeProbab = 0.05;
  };
  class FullAuto: FullAuto
  {
   minRange = 0;
   minRangeProbab = 0.1;
   midRange = 150;
   midRangeProbab = 0.7;
   maxRange = 300;
   maxRangeProbab = 0.05;
  };
 };
 
 // AKS_74_UN_kobra -> AKS_74_UN_kobra_DZN
 class AKS_BASE: AK_BASE {
  class Single: Mode_SemiAuto {};
  class Burst: Mode_Burst {};
  class FullAuto: Mode_FullAuto {};
 };
 class AKS_74_UN_kobra_DZN: AKS_BASE {
  scope = 2;
  model = "\ca\weapons\AK\aks74un_kobra";
  displayName = "$STR_DN_AKS_74_UN_KOBRA";
  picture = "\ca\weapons\AK\Data\Equip\w_aks74un_kobra_CA.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  handAnim[] = {"OFP2_ManSkeleton","\Ca\weapons\Data\Anim\AK.rtm"};
  magazines[] = {"30Rnd_545x39_AKSD"};
  distanceZoomMin = 100;
  distanceZoomMax = 100;
  class Single: Single
  {
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single1",1.7782794,1,50};
   soundBegin[] = {"begin1",1};
   minRange = 2;
   minRangeProbab = 0.3;
   midRange = 40;
   midRangeProbab = 0.7;
   maxRange = 150;
   maxRangeProbab = 0.04;
  };
  class FullAuto: FullAuto
  {
   minRange = 0;
   minRangeProbab = 0.1;
   midRange = 20;
   midRangeProbab = 0.7;
   maxRange = 40;
   maxRangeProbab = 0.05;
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single1",1.7782794,1,50};
   soundBegin[] = {"begin1",1};
  };
  class Library
  {
   libTextDesc = "$STR_LIB_AKS74_UN_kobra";
  };
  descriptionShort = "$STR_DSS_AKS74_UN_kobra";
 };

 class RPK_74_DZN: AK_BASE {
  scope = 2;
  model = "\ca\weapons\AK\RPK_74";
  picture = "\CA\weapons\AK\data\Equip\w_RPK_74_CA.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  magazines[] = {"75Rnd_545x39_RPK","30Rnd_545x39_AK","30Rnd_545x39_AKSD"};
  displayname = "$STR_DN_RPK_74";
  aiDispersionCoefY = 14.0;
  aiDispersionCoefX = 14.0;
  dexterity = 1.21;
  handAnim[] = {"OFP2_ManSkeleton","\Ca\weapons\Data\Anim\AK.rtm"};
  modes[] = {"manual","close","short","medium","Single"};
  class FullAuto: Mode_FullAuto
  {
   begin1[] = {"ca\sounds\weapons\rifles\AK74_single1",1.7782794,1,1000};
   soundBegin[] = {"begin1",1};
   reloadTime = 0.1;
   ffCount = 30;
   recoil = "recoil_auto_primary_4outof10";
   recoilProne = "recoil_auto_primary_prone_4outof10";
   dispersion = 0.00125;
   minRange = 0;
   minRangeProbab = 0.1;
   midRange = 25;
   midRangeProbab = 0.7;
   maxRange = 70;
   maxRangeProbab = 0.05;
  };
  class manual: Mode_FullAuto
  {
   reloadTime = 0.1;
   recoil = "recoil_auto_primary_4outof10";
   recoilProne = "recoil_auto_machinegun_prone_3outof10";
   dispersion = 0.0012;
   begin1[] = {"ca\sounds\weapons\rifles\AK74_single1",1.7782794,1,1000};
   soundBegin[] = {"begin1",1};
   soundContinuous = 0;
   soundBurst = 0;
   minRange = 0;
   minRangeProbab = 0.3;
   midRange = 5;
   midRangeProbab = 0.58;
   maxRange = 10;
   maxRangeProbab = 0.04;
   showToPlayer = 1;
  };
  class close: manual
  {
   burst = 10;
   aiRateOfFire = 0.5;
   aiRateOfFireDistance = 50;
   minRange = 10;
   minRangeProbab = 0.05;
   midRange = 20;
   midRangeProbab = 0.58;
   maxRange = 50;
   maxRangeProbab = 0.04;
   showToPlayer = 0;
  };
  class short: close
  {
   burst = 8;
   aiRateOfFire = 1.5;
   aiRateOfFireDistance = 300;
   minRange = 50;
   minRangeProbab = 0.05;
   midRange = 200;
   midRangeProbab = 0.58;
   maxRange = 400;
   maxRangeProbab = 0.04;
  };
  class medium: close
  {
   burst = 12;
   aiRateOfFire = 2.5;
   aiRateOfFireDistance = 600;
   minRange = 200;
   minRangeProbab = 0.05;
   midRange = 400;
   midRangeProbab = 0.58;
   maxRange = 600;
   maxRangeProbab = 0.04;
  };
  class Single: Mode_SemiAuto
  {
   begin1[] = {"ca\sounds\weapons\rifles\AK74_single1",1.7782794,1,1000};
   soundBegin[] = {"begin1",1};
   reloadTime = 0.1;
   recoil = "recoil_single_primary_4outof10";
   recoilProne = "recoil_single_primary_prone_4outof10";
   dispersion = 0.00125;
   aiRateOfFireDistance = 400;
   minRange = 2;
   minRangeProbab = 0.3;
   midRange = 250;
   midRangeProbab = 0.5;
   maxRange = 400;
   maxRangeProbab = 0.04;
  };
  class Library
  {
   libTextDesc = "$STR_LIB_RPK_74";
  };
  descriptionShort = "$STR_DSS_RPK_74";
 };

 class Saiga12K_DZN: Rifle {
  scope = 2;
  model = "\ca\weapons\Saiga12K\Saiga12K";
  picture = "\CA\weapons\data\Equip\W_Saiga12K_CA.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  magazines[] = {"8Rnd_B_Saiga12_74Slug"};
  optics = 1;
  modelOptics = "-";
  displayname = "$STR_DN_SAIGA12K";
  modes[] = {"Single"};
  distanceZoomMin = 50;
  distanceZoomMax = 50;
  class Single: Mode_SemiAuto {
   begin1[] = {"ca\sounds\weapons\rifles\sniper_single_05",1.7782794,1,1200};
   soundBegin[] = {"begin1",1};
   dispersion = 0.003;
   soundContinuous = 0;
   reloadTime = 0.1;
   recoil = "recoil_single_primary_9outof10";
   recoilProne = "recoil_single_primary_prone_8outof10";
   minRange = 0;
   minRangeProbab = 0.5;
   midRange = 60;
   midRangeProbab = 0.2;
   maxRange = 100;
   maxRangeProbab = 0.03;
  };
  class Library
  {
   libTextDesc = "$STR_LIB_SAIGA12K";
  };
  descriptionShort = "$STR_DSS_SAIGA12K";
 };

 class VSS_vintorez_DZN: Rifle {
  scope = 2;
  model = "\ca\weapons\VSS_vintorez\VSS_vintorez";
  picture = "\CA\weapons\data\Equip\W_VSS_vintorez_CA.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  magazines[] = {"10Rnd_9x39_SP5_VSS","20Rnd_9x39_SP5_VSS"};
  dexterity = 1.7;
  modelOptics = "\ca\weapons\VSS_vintorez\VSS_optics";
  opticsPPEffects[] = {"OpticsCHAbera2","OpticsBlur3"};
  opticsFlare = 1;
  opticsDisablePeripherialVision = 1;
  opticsZoomMin = 0.0623;
  opticsZoomMax = 0.0623;
  distanceZoomMin = 200;
  distanceZoomMax = 200;
  displayname = "$STR_DN_VSS";
  modes[] = {"Single","Full"};
  class Single: Mode_SemiAuto
  {
   dispersion = 0.0018;
   soundContinuous = 0;
   reloadTime = 0.1;
   recoil = "recoil_single_primary_4outof10";
   recoilProne = "recoil_single_primary_prone_4outof10";
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single1",1.0,1,50};
   begin2[] = {"ca\sounds\weapons\rifles\rifle-silence-single2",1.0,1,50};
   soundBegin[] = {"begin1",0.5,"begin2",0.5};
   minRange = 2;
   minRangeProbab = 0.1;
   midRange = 250;
   midRangeProbab = 0.7;
   maxRange = 500;
   maxRangeProbab = 0.05;
  };
  class Full: Mode_FullAuto
  {
   dispersion = 0.0018;
   soundContinuous = 0;
   reloadTime = 0.08;
   recoil = "recoil_auto_primary_3outof10";
   recoilProne = "recoil_auto_primary_prone_3outof10";
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single1",1.0,1,50};
   begin2[] = {"ca\sounds\weapons\rifles\rifle-silence-single2",1.0,1,50};
   soundBegin[] = {"begin1",0.5,"begin2",0.5};
   minRange = 0;
   minRangeProbab = 0.1;
   midRange = 60;
   midRangeProbab = 0.7;
   maxRange = 100;
   maxRangeProbab = 0.05;
  };
  class Library
  {
   libTextDesc = "$STR_LIB_VSS";
  };
  descriptionShort = "$STR_DSS_VSS";
 };

 class G36C: Rifle {
  class Single: Mode_SemiAuto {};
  class Burst: Mode_Burst {};
  class FullAuto: Mode_FullAuto {};
 };
 class G36_C_SD_eotech_DZN: G36C
 {
  value = 6;
  model = "\ca\weapons\G36\G36_C_SD_eotech";
  displayName = "$STR_DN_G36_C_SD_EOTECH";
  picture = "\ca\weapons\G36\Data\Equip\w_G36_C_SD_eotech_ca.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  magazines[] = {"30Rnd_556x45_G36SD","30Rnd_556x45_StanagSD"};
  fireLightDuration = 0.0;
  fireLightIntensity = 0.0;
  distanceZoomMin = 100;
  distanceZoomMax = 100;
  modes[] = {"Single","Burst","Fullauto"};
  class Single: Single {
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single2",1.0,1,300};
   soundBegin[] = {"begin1",1};
   minRange = 2;
   minRangeProbab = 0.1;
   midRange = 150;
   midRangeProbab = 0.7;
   maxRange = 300;
   maxRangeProbab = 0.05;
  };
  class Burst: Burst {
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single2",1.0,1,300};
   soundBegin[] = {"begin1",1};
   minRange = 1;
   minRangeProbab = 0.1;
   midRange = 30;
   midRangeProbab = 0.7;
   maxRange = 50;
   maxRangeProbab = 0.05;
  };
  class FullAuto: FullAuto {
   begin1[] = {"ca\sounds\weapons\rifles\rifle-silence-single2",1.0,1,300};
   soundBegin[] = {"begin1",1};
   minRange = 0;
   minRangeProbab = 0.1;
   midRange = 10;
   midRangeProbab = 0.7;
   maxRange = 30;
   maxRangeProbab = 0.05;
  };
  class Library
  {
   libTextDesc = "$STR_LIB_G36C_SD_eotech";
  };
  descriptionShort = "$STR_DSS_G36C_SD_eotech";
 };

 class MG36_DZN: G36C {
  value = 12;
  dexterity = 1.6;
  model = "\ca\weapons\G36\MG36";
  picture = "\ca\weapons\G36\Data\Equip\w_MG36_ca.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  displayName = "$STR_DN_MG36";
  magazines[] = {"100Rnd_556x45_BetaCMag","30Rnd_556x45_G36","30Rnd_556x45_G36SD","30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","20Rnd_556x45_Stanag"};
  handAnim[] = {"OFP2_ManSkeleton","\Ca\weapons\data\Anim\SAW.rtm"};
  modes[] = {"Single","Burst","Fullauto","close","medium","far"};
  modelOptics = "-";
  class Single: Mode_SemiAuto
  {
   begin1[] = {"ca\sounds\weapons\rifles\g36_single1",2.2387211,1,1100};
   begin2[] = {"ca\sounds\weapons\rifles\g36_single2",2.2387211,1,1100};
   soundBegin[] = {"begin1",0.5,"begin2",0.5};
   reloadTime = 0.1;
   recoil = "recoil_single_primary_3outof10";
   dispersion = 0.0007;
   recoilProne = "recoil_single_primary_prone_1outof10";
   minRange = 400;
   minRangeProbab = 0.05;
   midRange = 500;
   midRangeProbab = 0.4;
   maxRange = 600;
   maxRangeProbab = 0.01;
   showToPlayer = 1;
  };
  class Burst: Mode_Burst
  {
   begin1[] = {"ca\sounds\weapons\rifles\g36_single1",2.2387211,1,1100};
   begin2[] = {"ca\sounds\weapons\rifles\g36_single2",2.2387211,1,1100};
   soundBegin[] = {"begin1",0.5,"begin2",0.5};
   soundBurst = 0;
   reloadTime = 0.1;
   ffCount = 3;
   recoil = "recoil_auto_primary_2outof10";
   minRange = 1;
   minRangeProbab = 0.2;
   midRange = 80;
   midRangeProbab = 0.7;
   maxRange = 120;
   maxRangeProbab = 0.05;
   dispersion = 0.0007;
   recoilProne = "recoil_auto_primary_prone_1outof10";
  };
  class FullAuto: Mode_FullAuto
  {
   recoilProne = "recoil_auto_primary_prone_2outof10";
   soundContinuous = 0;
   soundBurst = 0;
   minRange = 0;
   minRangeProbab = 0.3;
   midRange = 5;
   midRangeProbab = 0.58;
   maxRange = 10;
   maxRangeProbab = 0.04;
   showToPlayer = 1;
   begin1[] = {"ca\sounds\weapons\rifles\g36_single1",2.2387211,1,1100};
   begin2[] = {"ca\sounds\weapons\rifles\g36_single2",2.2387211,1,1100};
   soundBegin[] = {"begin1",0.5,"begin2",0.5};
   recoil = "recoil_auto_primary_3outof10";
   reloadTime = 0.1;
   dispersion = 0.0007;
  };
  class close: FullAuto
  {
   burst = 10;
   aiRateOfFire = 0.5;
   aiRateOfFireDistance = 50;
   minRange = 10;
   minRangeProbab = 0.05;
   midRange = 20;
   midRangeProbab = 0.58;
   maxRange = 50;
   maxRangeProbab = 0.04;
   showToPlayer = 0;
  };
  class medium: close
  {
   burst = 6;
   aiRateOfFire = 2;
   aiRateOfFireDistance = 200;
   minRange = 50;
   minRangeProbab = 0.05;
   midRange = 100;
   midRangeProbab = 0.58;
   maxRange = 200;
   maxRangeProbab = 0.04;
  };
  class far: close
  {
   burst = 8;
   aiRateOfFire = 4;
   aiRateOfFireDistance = 400;
   minRange = 200;
   minRangeProbab = 0.05;
   midRange = 300;
   midRangeProbab = 0.58;
   maxRange = 400;
   maxRangeProbab = 0.04;
  };
  class Library
  {
   libTextDesc = "$STR_LIB_MG36";
  };
  descriptionShort = "$STR_DSS_MG36";
  bullet1[] = {"ca\sounds\weapons\shells\small_shell_metal_04",0.17782794,1,20};
  bullet2[] = {"ca\sounds\weapons\shells\small_shell_metal_03",0.17782794,1,20};
  bullet3[] = {"ca\sounds\weapons\shells\small_shell_metal_02",0.17782794,1,20};
  bullet4[] = {"ca\sounds\weapons\shells\small_shell_metal_01",0.17782794,1,20};
  bullet5[] = {"ca\sounds\weapons\shells\small_shell_dirt_07",0.31622776,1,20};
  bullet6[] = {"ca\sounds\weapons\shells\small_shell_dirt_09",0.31622776,1,20};
  bullet7[] = {"ca\sounds\weapons\shells\small_shell_dirt_10",0.31622776,1,20};
  bullet8[] = {"ca\sounds\weapons\shells\small_shell_dirt_12",0.31622776,1,20};
  bullet9[] = {"ca\sounds\weapons\shells\small_shell_soft_05",0.17782794,1,20};
  bullet10[] = {"ca\sounds\weapons\shells\small_shell_soft_09",0.17782794,1,20};
  bullet11[] = {"ca\sounds\weapons\shells\small_shell_soft_10",0.17782794,1,20};
  bullet12[] = {"ca\sounds\weapons\shells\small_shell_soft_13",0.17782794,1,20};
  soundBullet[] = {"bullet1",0.083,"bullet2",0.083,"bullet3",0.083,"bullet4",0.083,"bullet5",0.083,"bullet6",0.083,"bullet7",0.083,"bullet8",0.083,"bullet9",0.083,"bullet10",0.083,"bullet11",0.083,"bullet12",0.083};
 };

 class L85A2_base_BAF;
 class BAF_L85A2_RIS_ACOG_DZN: L85A2_base_BAF
 {
  scope = 2;
  model = "\ca\weapons_BAF\L85A2_RIS_ACOG_BAF";
  picture = "\CA\weapons_baf\data\UI\L85A2_RIS_ACOG_ca.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  optics = 1;
  visionMode[] = {"Normal"};
  modelOptics = "\ca\Weapons_baf\ACOG_optic";
  class OpticsModes
  {
   class ACOG
   {
    opticsID = 1;
    useModelOptics = 1;
    opticsPPEffects[] = {"OpticsCHAbera1","OpticsBlur1"};
    opticsZoomMin = 0.0623;
    opticsZoomMax = 0.0623;
    opticsZoomInit = 0.0623;
    memoryPointCamera = "opticView";
    visionMode[] = {"Normal"};
    opticsFlare = 1;
    opticsDisablePeripherialVision = 1;
    distanceZoomMin = 300;
    distanceZoomMax = 300;
    cameraDir = "";
   };
   class Kolimator: ACOG
   {
    opticsID = 2;
    useModelOptics = 0;
    opticsFlare = 0;
    opticsDisablePeripherialVision = 0;
    opticsZoomMin = 0.25;
    opticsZoomMax = 1.5;
    opticsZoomInit = 0.8;
    memoryPointCamera = "eye";
    visionMode[] = {};
   };
  };
  displayName = "$STR_BAF_CFGWEAPONS_BAF_L85A2_RIS_ACOG0";
  class Library
  {
   libTextDesc = "$STR_BAF_CFGWEAPONS_BAF_L85A2_RIS_ACOG_LIBRARY0";
  };
 };
 class BAF_L85A2_UGL_ACOG_DZN: BAF_L85A2_RIS_ACOG_DZN {
  displayName = "$STR_BAF_CFGWEAPONS_BAF_L85A2_UGL_ACOG0";
  model = "\ca\weapons_BAF\L85A2_UGL_ACOG_BAF";
  picture = "\CA\weapons_baf\data\UI\L85A2_UGL_ACOG_ca.paa";
  UiPicture = "\CA\weapons\data\Ico\i_regular_CA.paa";
  muzzles[] = {"this","BAF_L17_40mm"};
  handAnim[] = {"OFP2_ManSkeleton","\ca\weapons_baf\data\Anim\L85A2_UGL.rtm"};
  dexterity = 1.46;
  class Library
  {
   libTextDesc = "$STR_BAF_CFGWEAPONS_BAF_L85A2_UGL_ACOG_LIBRARY0";
  };
  descriptionShort = "$STR_BAF_CFGWEAPONS_BAF_L85A2_UGL_ACOG0_0";
 };
 
	class ItemCore;
	class ItemSolder: ItemCore {
		scope = 2;
		displayName = "Portable solder";
		model = "\nst\ns_dayz\items\solder\solder_dzn.p3d";
		picture = "\nst\ns_dayz\items\solder\data\icon_solder_dzn_ca.paa";
		descriptionShort = "Soldering tool used for repairing broken electronic parts. Can be used together with toolbox to repair broken equipment such as GPS, NVG.";
		
		class ItemActions {
			class RepairGPS {
				text = "Repair broken GPS";
				script = "spawn player_repairEquipment_dzn;";
				outputOriented = "true";
				output[] = {"GPS"};
			};
			class RepairNVG {
				text = "Repair broken NVG";
				script = "spawn player_repairEquipment_dzn;";
				outputOriented = "true";
				output[] = {"NVG"};
			};
			class RepairRadio {
				text = "Repair broken radio";
				script = "spawn player_repairEquipment_dzn;";
				outputOriented = "true";
				output[] = {"RAD"};
			};
		};
	};
};

class WeaponCloudsMGun;
class CfgVehicles {
    class ReammoBox;
    class CardboardBox: ReammoBox {
        accuracy = 1000;
        vehicleClass = "Survival";
    };

    class MedBox0_DZN: CardboardBox {
        scope = 2;
        displayName = "$STR_DAYZ_OBJ_2";
        model = "\dayz_equip\models\cardboard_box_med.p3d";

        class transportmagazines {
  	        class _xx_ItemBandage {
  		        magazine = "ItemBandage";
  		        count = 5;
  	        };

  	        class _xx_ItemEpinephrine {
  	        	magazine = "ItemEpinephrine";
  	        	count = 2;
  	        };

  	        class _xx_ItemMorphine {
  	        	magazine = "ItemMorphine";
  	        	count = 2;
  	        };

  	        class _xx_ItemBloodbag {
  	        	magazine = "ItemBloodbag";
  	        	count = 2;
  	        };

  	        class _xx_ItemPainkiller {
  	        	magazine = "ItemPainkiller";
  	        	count = 5;
  	        };
        };
    };
 
    class Bag_Base_BAF;
    class BAF_AssaultPack_DZN: Bag_Base_BAF {
        scope = 2;
        transportMaxMagazines = 18;
    };
 
    class Man;
    class CAManBase: Man {
        class TalkTopics;

        class HitPoints {
            class HitHead;
            class HitBody;
        };
    };

    class SoldierEB: CAManBase {
        class TalkTopics: TalkTopics{};
    };

 class CamoWinter_DZNBase: SoldierEB {
  scope = 1;
  faction = "RU";
  genericNames = "RussianMen";
  vehicleClass = "MenRUS";
  cost = 200000;
  enableGPS = 1;
  camouflage = 0.8;
  accuracy = 2.0;
  minFireTime = 2.5;
  class SpeechVariants
  {
   class Default
   {
    speechSingular[] = {"veh_SpecialForce"};
    speechPlural[] = {"veh_SpecialForces"};
   };
   class EN: Default{};
   class CZ
   {
    speechSingular[] = {"veh_SpecialForce_CZ"};
    speechPlural[] = {"veh_SpecialForces_CZ"};
   };
   class CZ_Akuzativ
   {
    speechSingular[] = {"veh_SpecialForce_CZ4P"};
    speechPlural[] = {"veh_SpecialForces_CZ4P"};
   };
   class RU
   {
    speechSingular[] = {"veh_SpecialForce_RU"};
    speechPlural[] = {"veh_SpecialForces_RU"};
   };
  };
  TextPlural = "$STR_DN_SpecialForces";
  TextSingular = "$STR_DN_SpecialForce";
  nameSound = "veh_SpecialForce";
  picture = "\Ca\characters\data\Ico\i_SF_CA.paa";
  icon = "\Ca\characters2\data\icon\i_special_CA.paa";
  portrait = "\Ca\characters\data\portraits\comBarHead_ru_spec_ca";
  identityTypes[] = {"Head_RU_Camo","RU_Glasses"};
  faceType = "Man";
  model = "\ca\characters2\Rus\Specnaz";
  threat[] = {1,0.5,0.1};
  class HitPoints: HitPoints
  {
   class HitHead: HitHead
   {
    armor = 0.85;
   };
   class HitBody: HitBody
   {
    armor = 1;
    passThrough = 0.8;
   };
  };
  class Wounds
  {
   tex[] = {};
   mat[] = {"ca\characters2\rus\data\soldier_specnaz_partizan.rvmat","ca\characters2\rus\data\soldier_specnaz_partizan_w1.rvmat","ca\characters2\rus\data\soldier_specnaz_partizan_w2.rvmat","ca\characters2\rus\data\soldier_specnaz_back_partizan.rvmat","ca\characters2\rus\data\soldier_specnaz_back_partizan_w1.rvmat","ca\characters2\rus\data\soldier_specnaz_back_partizan_w2.rvmat","ca\characters2\rus\data\soldier_specnaz_back_partizan.rvmat","ca\characters2\rus\data\soldier_specnaz_back_partizan_w1.rvmat","ca\characters2\rus\data\soldier_specnaz_back_partizan_w2.rvmat","ca\characters2\rus\data\soldier_speccom.RVmat","ca\characters2\rus\data\soldier_speccom_w1.RVmat","ca\characters2\rus\data\soldier_speccom_w2.RVmat"};
  };
  class TalkTopics: TalkTopics
  {
   core_en = "Core_Full";
   core_cz = "Core_Full";
   core_ru = "Core_Full";
  };
  languages[] = {"RU","CZ","EN"};
 };
 
 class CamoWinter_DZN: CamoWinter_DZNBase {
  scope = 2;
  side = 1;
  accuracy = 3.9;
  displayName = "Survivor";
  model = "\nst\ns_dayz\characters\cw\camowinter_dzn.p3d";
  faceType = "HeadMask1Black";
  
  class HitPoints: HitPoints
  {
   class HitHead: HitHead
   {
    armor = 0.6;
   };
  };
  canCarryBackPack = 1;
  weapons[] = {"Throw","Put"};
  backpack = "";
  magazines[] = {};
  respawnWeapons[] = {"Throw","Put"};
  respawnMagazines[] = {};
  weaponSlots = "1	 + 	4	 + 12*		256	 + 2*	4096	 + 	2	 + 8*	16  + 12*131072";
  canHideBodies = 1;
 };
 class CamoWinterW_DZN: CamoWinter_DZN {
  model = "\nst\ns_dayz\characters\cw\camowinterw_dzn.p3d";
 };

 // WINTER GHILLIE
 class SoldierWB: CAManBase {
  class TalkTopics: TalkTopics{};
 };
 class USMC_Soldier_Base: SoldierWB {};
 class USMC_SoldierS_Sniper_DZN: USMC_Soldier_Base
 {
  scope = 1;
  displayName = "$STR_DN_SNIPER";
  picture = "\Ca\characters\data\Ico\i_null_CA.paa";
  model = "\ca\characters2\Ghillie_Overall";
  portrait = "\Ca\characters\data\portraits\comBarHead_common_sniper_ca";
  class SpeechVariants
  {
   class Default
   {
    speechSingular[] = {"veh_Sniper"};
    speechPlural[] = {"veh_Snipers"};
   };
   class EN: Default{};
   class CZ
   {
    speechSingular[] = {"veh_Sniper_CZ"};
    speechPlural[] = {"veh_Snipers_CZ"};
   };
   class CZ_Akuzativ
   {
    speechSingular[] = {"veh_Sniper_CZ4P"};
    speechPlural[] = {"veh_Snipers_CZ4P"};
   };
   class RU
   {
    speechSingular[] = {"veh_Sniper_RU"};
    speechPlural[] = {"veh_Snipers_RU"};
   };
  };
  TextPlural = "$STR_DN_Snipers";
  TextSingular = "$STR_DN_Sniper";
  nameSound = "veh_Sniper";
  accuracy = 3.9;
  camouflage = 0.5;
  cost = 350000;
  threat[] = {1,0.5,0.1};
  weapons[] = {"Throw","Put"};
  magazines[] = {};
  respawnWeapons[] = {"Throw","Put"};
  respawnMagazines[] = {};
  class HitPoints: HitPoints
  {
   class HitHead: HitHead
   {
    armor = 0.6;
   };
   class HitBody: HitBody
   {
    armor = 0.8;
    passThrough = 1;
   };
  };
  class Wounds
  {
   tex[] = {};
   mat[] = {"ca\characters\data\us_hhl.rvmat","ca\characters\data\us_hhl_wound1.rvmat","ca\characters\data\us_hhl_wound2.rvmat"};
  };
  hiddenSelections[] = {"Camo"};
  hiddenSelectionsTextures[] = {"\ca\characters2\data\ghillie_overall1_co.paa"};
 };
 class Sniper1W_DZN: USMC_SoldierS_Sniper_DZN {
  displayName = "Survivor";
  scope = 2;
  side = 1;
  weapons[] = {"Throw","Put"};
  backpack = "";
  magazines[] = {};
  respawnWeapons[] = {"Throw","Put"};
  respawnMagazines[] = {};
  weaponSlots = "1	 + 	4	 + 12*		256	 + 2*	4096	 + 	2	 + 8*	16  + 12*131072";
  canHideBodies = 1;
  canCarryBackPack = 1;
  hiddenSelections[] = {"Camo"};
  hiddenSelectionsTextures[] = {"\nst\ns_dayz\characters\gw\data\ghillie_overall1w_co.paa"};
 };
 
 
 class Air;
 class Helicopter: Air
 {
  class Turrets
  {
   class MainTurret;
  };
  class AnimationSources;
  class HitPoints
  {
   class HitVRotor;
  };
 };
 
 class Mi17_Civilian_base_Ru;
 class Mi17_Civilian_Nam: Mi17_Civilian_base_Ru
 {
  scope = 2;
  vehicleClass = "Air";
  side = 3;
  displayName = "$STR_DN_MI17CIV";
  faction = "CIV";
  model = "\ca\air\Mi_8AMT";
  crew = "Pilot";
  typicalCargo[] = {"Pilot"};
  weapons[] = {};
  accuracy = 1000;
  magazines[] = {};
  hasGunner = 0;
  class Turrets{};
  threat[] = {0.0,0.0,0.0};
  hiddenSelectionsTextures[] = {"\CA\air\data\mi8civil_body_g_CO.paa","\CA\air\data\mi8civil_det_g_CO.paa","ca\air\data\clear_empty.paa","ca\air\data\mi8_decals_ca.paa"};
 };
 
 class Ka60_Base_NAC: Helicopter
 {
  expansion = 4;
  destrType = "DestructWreck";
  armor = 30;
  displayName = "$STR_PMC_DN_KA60";
  model = "\Ca\Air_PMC\Ka60\Ka60_PMC.p3d";
  icon = "\Ca\Air_PMC\data\ui\Icon_ka60_PMC_ca.paa";
  picture = "\Ca\Air_PMC\data\ui\picture_ka60_PMC_ca.paa";
  driverAction = "UH1H_Pilot_EP1";
  driverInAction = "UH1H_Pilot_EP1";
  transportSoldier = 8;
  cargoAction[] = {"UH1H_Cargo_EP1","UH60_Cargo02"};
  cargoIsCoDriver[] = {1,0};
  weapons[] = {"57mmLauncher_NAC"};
  magazines[] = {"14Rnd_57mm_NAC"};
  enableManualFire = 0;
  class HitPoints: HitPoints
  {
   class HitVRotor: HitVRotor
   {
    armor = 1;
   };
  };
  class Turrets: Turrets
  {
   class MainTurret: MainTurret
   {
    body = "mainTurret";
    gun = "mainGun";
    minElev = -50;
    maxElev = 30;
    initElev = 11;
    minTurn = 20;
    maxTurn = 155;
    initTurn = 80;
    soundServo[] = {"",0.01,1.0};
    animationSourceHatch = "";
    stabilizedInAxes = "StabilizedInAxesNone";
    gunBeg = "muzzle_1";
    gunEnd = "chamber_1";
    weapons[] = {"M32_heli_NAC"};
    maxHorizontalRotSpeed = 1.6;
    maxVerticalRotSpeed = 1.6;
    magazines[] = {"6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC","6Rnd_HE_M203_heli_NAC"};
	//magazines[] = {"6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli","6Rnd_HE_M203_heli"};
    gunnerName = "$STR_POSITION_DOORGUNNER";
    gunnerOpticsModel = "\ca\weapons\optika_empty";
    gunnerAction = "Mi8_Gunner";
    gunnerInAction = "Mi8_Gunner";
    commanding = -2;
    primaryGunner = 1;
    class GunFire: WeaponCloudsMGun
    {
     interval = 0.01;
    };
    class ViewOptics
    {
     initAngleX = 0;
     minAngleX = -30;
     maxAngleX = 30;
     initAngleY = 0;
     minAngleY = -100;
     maxAngleY = 100;
     initFov = 0.7;
     minFov = 0.25;
     maxFov = 1.1;
    };
    gunnerCompartments = "Compartment2";
   };
  };
  class Damage
  {
   tex[] = {};
   mat[] = {"Ca\Air_PMC\Ka60\Data\ka60_ext.rvmat","Ca\Air_PMC\Ka60\Data\ka60_ext_damage.rvmat","Ca\Air_PMC\Ka60\Data\ka60_ext_destruct.rvmat","Ca\Air_PMC\Ka60\Data\ka60_glass.rvmat","Ca\Air_PMC\Ka60\Data\ka60_glass_damage.rvmat","Ca\Air_PMC\Ka60\Data\ka60_glass_destruct.rvmat","Ca\Ca_E\data\default.rvmat","Ca\Ca_E\data\default.rvmat","Ca\Ca_E\data\default_destruct.rvmat"};
  };
  soundGetIn[] = {"Ca\Sounds_PMC\Air_PMC\Ka_door",0.31622776,1};
  soundGetOut[] = {"Ca\Sounds_PMC\Air_PMC\Ka_door",0.31622776,1,40};
  soundDammage[] = {"Ca\Sounds_PMC\Air_PMC\int-alarm_loop",0.56234133,1};
  soundEngineOnInt[] = {"Ca\Sounds_PMC\Air_PMC\Ka_start_int_1",0.1,1.0};
  soundEngineOnExt[] = {"Ca\Sounds_PMC\Air_PMC\Ka_start_ext_1",0.56234133,1.0,800};
  soundEngineOffInt[] = {"Ca\Sounds_PMC\Air_PMC\Ka_stop_int_1",0.1,1.0};
  soundEngineOffExt[] = {"Ca\Sounds_PMC\Air_PMC\Ka_stop_ext_1",0.56234133,1.0,800};
  class Sounds
  {
   class Engine
   {
    sound[] = {"Ca\Sounds_PMC\Air_PMC\Ka_engi_r_ext",3.1622777,1.4,800};
    frequency = "rotorSpeed";
    volume = "camPos*((rotorSpeed-0.72)*4)";
   };
   class RotorLowOut
   {
    sound[] = {"Ca\Sounds_PMC\Air_PMC\KA_rotor_orig",3.1622777,1.0,1400};
    frequency = "rotorSpeed";
    volume = "camPos*(0 max (rotorSpeed-0.1))";
    cone[] = {1.8,3.14,2.0,0.9};
   };
   class RotorHighOut
   {
    sound[] = {"Ca\Sounds_PMC\Air_PMC\KA_rotor_orig_high_swist",5.623413,1.0,1500};
    frequency = "rotorSpeed";
    volume = "camPos*10*(0 max (rotorThrust-0.95))";
    cone[] = {1.1,3.14,2.0,0.9};
   };
   class EngineIn
   {
    sound[] = {"Ca\Sounds_PMC\Air_PMC\Ka_engi_int_1",3.1622777,1.0};
    frequency = "rotorSpeed";
    volume = "(1-camPos)*((rotorSpeed-0.75)*4)";
   };
   class RotorLowIn
   {
    sound[] = {"Ca\Sounds_PMC\Air_PMC\KA_rotor_orig",0.56234133,1.0};
    frequency = "rotorSpeed";
    volume = "2*(1-camPos)*((rotorSpeed factor[0.3, 1.1]) min (rotorSpeed factor[1.1, 0.3]))";
   };
   class RotorHighIn
   {
    sound[] = {"Ca\Sounds_PMC\Air_PMC\KA_rotor_orig_high_swist",0.31622776,1.0};
    frequency = "rotorSpeed";
    volume = "(1-camPos)*3*(rotorThrust-0.9)";
   };
  };
  class Library
  {
   libTextDesc = "$STR_PMC_LIB_KA60";
  };
  class AnimationSources: AnimationSources
  {
   class Doors
   {
    source = "user";
    animPeriod = 1;
    initPhase = 0;
   };
   class HideWeapon
   {
    source = "user";
    animPeriod = 1e-005;
    initPhase = 0;
   };
  };
 };
 class Ka60_GL_BASE_NAC: Ka60_Base_NAC
 {
  side = 2;
  faction = "NAC";
  crew = "nac_soldier_crew";
  class AnimationSources: AnimationSources
  {
   class ReloadAnim
   {
    source = "reload";
    weapon = "M32_heli_NAC";
   };
   class ReloadMagazine
   {
    source = "reloadmagazine";
    weapon = "M32_heli_NAC";
   };
   class Revolving
   {
    source = "revolving";
    weapon = "M32_heli_NAC";
   };
   class Doors: Doors
   {
    initPhase = 1;
   };
  };
 };
 class Ka60_GL_NAC: Ka60_GL_BASE_NAC
 {
  scope = 2;
  displayName = "$STR_PMC_DN_KA60_GL";
  accuracy = 1000;
 };
 class Ka60_NAC: Ka60_Base_NAC {
  scope = 2;
  side = 2;
  faction = "NAC";
  crew = "nac_soldier_crew";
  displayName = "Ka-60";
  class AnimationSources: AnimationSources
  {
   class HideWeapon: HideWeapon
   {
    initPhase = 1;
   };
   class MainTurret
   {
    source = "user";
    animPeriod = 1e-007;
    initPhase = 0;
   };
   class MainGun
   {
    source = "user";
    animPeriod = 1e-007;
    initPhase = 0;
   };
   class ReloadAnim
   {
    source = "user";
    animPeriod = 1e-005;
    initPhase = 0;
   };
   class ReloadMagazine
   {
    source = "user";
    animPeriod = 1e-005;
    initPhase = 0;
   };
   class Revolving
   {
    source = "user";
    animPeriod = 1e-005;
    initPhase = 0;
   };
  };
  class Turrets{};
  transportSoldier = 9;
 };

 class Citizen1;
 class zZombie_Base: Citizen1
 {
  scope = 1;
  glassesEnabled = 0;
  //vehicleClass = "Zombie";
  displayName = "Zombie";
  fsmDanger = "";
  fsmFormation = "";
  zombieLoot = "civilianNamalsk";
  moves = "CfgMovesZombie";
  isMan = 0;
  weapons[] = {};
  magazines[] = {};
  sensitivity = 4;
  sensitivityEar = 2;
  identityTypes[] = {"zombie1","zombie2"};
  class TalkTopics{};
  languages[] = {};
  class Eventhandlers
  {
   init = "_this call zombie_initialize;";
   local = "diag_log ('Locality Event');if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\dayz_code\system\zombie_agent.fsm'};";
  };
  class HitPoints
  {
   class HitHead
   {
    armor = 0.3;
    material = -1;
    name = "head_hit";
    passThrough = 1;
    memoryPoint = "pilot";
   };
   class HitBody: HitHead
   {
    armor = 1.6;
    name = "body";
    memoryPoint = "aimPoint";
   };
   class HitSpine: HitHead
   {
    armor = 1.6;
    name = "Spine2";
    memoryPoint = "aimPoint";
   };
   class HitHands: HitHead
   {
    armor = 0.5;
    material = -1;
    name = "hands";
    passThrough = 1;
   };
   class HitLArm: HitHands
   {
    name = "LeftArm";
    memoryPoint = "lelbow";
   };
   class HitRArm: HitHands
   {
    name = "RightArm";
    memoryPoint = "relbow";
   };
   class HitLForeArm: HitHands
   {
    name = "LeftForeArm";
    memoryPoint = "lwrist";
   };
   class HitRForeArm: HitHands
   {
    name = "RightForeArm";
    memoryPoint = "rwrist";
   };
   class HitLHand: HitHands
   {
    name = "LeftHand";
    memoryPoint = "LeftHandMiddle1";
   };
   class HitRHand: HitHands
   {
    name = "RightHand";
    memoryPoint = "RightHandMiddle1";
   };
   class HitLegs: HitHands
   {
    name = "legs";
    memoryPoint = "pelvis";
   };
   class HitLLeg: HitHands
   {
    name = "LeftLeg";
    memoryPoint = "lknee";
   };
   class HitLLegUp: HitHands
   {
    name = "LeftUpLeg";
    memoryPoint = "lfemur";
   };
   class HitRLeg: HitHands
   {
    name = "RightLeg";
    memoryPoint = "rknee";
   };
   class HitRLegUp: HitHands
   {
    name = "RightUpLeg";
    memoryPoint = "rfemur";
   };
  };
  class HitDamage {
   class Group0 {
    hitSounds[] = {
     { 
      { "dayz_sfx\zombie\chase_0.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_1.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_2.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_3.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_4.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_5.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_6.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_7.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_8.ogg",0.17782794,1,120 },0.1 },
     { 
      { "dayz_sfx\zombie\chase_9.ogg",0.17782794,1,120 },0.1 }};
    damageSounds[] = {
     { "body",
      { "dayz_sfx\zombie\chase_0.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_1.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_2.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_3.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_4.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_5.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_6.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "body",
      { "dayz_sfx\zombie\chase_7.ogg",0.056234132,1,120,0.125,20,40,60 } },
     { "hands",
      { "dayz_sfx\zombie\chase_8.ogg",0.056234132,1,120,0.25,20,40,60 } },
     { "hands",
      { "dayz_sfx\zombie\chase_9.ogg",0.056234132,1,120,0.25,20,40,60 } },
     { "hands",
      { "dayz_sfx\zombie\chase_10.ogg",0.056234132,1,120,0.25,20,40,60 } },
     { "hands",
      { "dayz_sfx\zombie\chase_11.ogg",0.056234132,1,120,0.25,20,40,60 } },
     { "legs",
      { "dayz_sfx\zombie\chase_12.ogg",0.056234132,1,120,20,40,60 } },
     { "legs",
      { "dayz_sfx\zombie\chase_13.ogg",0.056234132,1,120,20,40,60 } }};
   };
  };
 };
    class z_soldier: zZombie_Base{
        displayName = "Zombie Soldier";
        model = "\ca\characters2\Blufor\Soldier_Light";
        zombieLoot = "militaryNamalsk";
        class HitPoints: HitPoints {
            class HitHead {
                armor = 0.3;
                material = -1;
                name = "head_hit";
                passThrough = 1;
            };
            class HitBody {
                armor = 2.4;
                material = -1;
                name = "body";
                passThrough = 1;
            };
            class HitHands {
                armor = 1;
                material = -1;
                name = "hands";
                passThrough = 1;
            };
            class HitLegs {
                armor = 1;
                material = -1;
                name = "legs";
                passThrough = 1;
            };
        };

        class Wounds {
            tex[] = {};
            mat[] = {"ca\characters2\Blufor\data\Soldier.RVmat","ca\characters2\Blufor\data\Soldier_W1.RVmat","ca\characters2\Blufor\data\Soldier_W2.RVmat","ca\characters2\Blufor\data\Soldier_Light.RVmat","ca\characters2\Blufor\data\Soldier_Light_W1.RVmat","ca\characters2\Blufor\data\Soldier_Light_W2.RVmat","ca\characters2\Blufor\data\Soldier_EQUIP_Light.RVmat","ca\characters2\Blufor\data\Soldier_Light_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Light_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_GL.RVmat","ca\characters2\Blufor\data\Soldier_GL_W1.RVmat","ca\characters2\Blufor\data\Soldier_GL_W2.RVmat","ca\characters2\Blufor\data\Soldier_NCO.RVmat","ca\characters2\Blufor\data\Soldier_NCO_W1.RVmat","ca\characters2\Blufor\data\Soldier_NCO_W2.RVmat","ca\characters2\Blufor\data\Soldier_MG.RVmat","ca\characters2\Blufor\data\Soldier_MG_W1.RVmat","ca\characters2\Blufor\data\Soldier_MG_W2.RVmat","ca\characters2\Blufor\data\Soldier_AT.RVmat","ca\characters2\Blufor\data\Soldier_AT_W1.RVmat","ca\characters2\Blufor\data\Soldier_AT_W2.RVmat","ca\characters2\Blufor\data\Soldier_CO.RVmat","ca\characters2\Blufor\data\Soldier_CO_W1.RVmat","ca\characters2\Blufor\data\Soldier_CO_W2.RVmat","ca\characters2\Blufor\data\Soldier_CO_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_CO_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_CO_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Pilot.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_W1.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_W2.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_Pilot_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Guard.RVmat","ca\characters2\Blufor\data\Soldier_Guard_W1.RVmat","ca\characters2\Blufor\data\Soldier_Guard_W2.RVmat","ca\characters2\Blufor\data\Soldier_Crew.RVmat","ca\characters2\Blufor\data\Soldier_Crew_W1.RVmat","ca\characters2\Blufor\data\Soldier_Crew_W2.RVmat","ca\characters2\Blufor\data\Soldier_Crew_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_Crew_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_Crew_EQUIP_W2.RVmat","ca\characters2\Blufor\data\Soldier_Guard_EQUIP.RVmat","ca\characters2\Blufor\data\Soldier_Guard_EQUIP_W1.RVmat","ca\characters2\Blufor\data\Soldier_Guard_EQUIP_W2.RVmat"};
        };
    };
 
    class z_soldier_heavy: z_soldier {
        displayName = "Zombie Soldier (Heavy)";
        model = "\ca\characters2\Blufor\Soldier";

        class HitPoints: HitPoints {
            class HitHead {
                armor = 1;
                material = -1;
                name = "head_hit";
                passThrough = 1;
            };

            class HitBody {
                armor = 2.4;
                material = -1;
                name = "body";
                passThrough = 1;
            };

            class HitHands {
                armor = 1;
                material = -1;
                name = "hands";
                passThrough = 1;
            };

            class HitLegs {
                armor = 1;
                material = -1;
                name = "legs";
                passThrough = 1;
            };
        };
    };

    class z_us_soldier: z_soldier_heavy {
        displayName = "Zombie Soldier USMC (Heavy)";
        model = "\CA\characters2\USMC\USMC_soldier";
    };

    class z_us_soldier_light: z_soldier {
        displayName = "Zombie Soldier USMC (Light)";
        model = "\CA\characters2\USMC\USMC_soldier_Light";
    };

    class z_ru_soldier: z_soldier_heavy {
        displayName = "Zombie Soldier RU (Heavy)";
        model = "\CA\characters2\Rus\Soldier";
    };

    class z_ru_soldier_light: z_soldier {
        displayName = "Zombie Soldier RU (Light)";
        model = "\CA\characters2\Rus\Soldier_Light";
    };

    class z_ru_soldier_pilot: z_soldier {
        displayName = "Zombie Pilot RU (Light)";
        model = "\CA\characters2\Rus\Soldier_Pilot";
    };

    class z_nac_soldier: z_soldier {
        displayName = "Zombie Soldier NAC (Light)";
        model = "\nst\ns_fraction\nac\nac_soldier_2";
    };

     class z_nac_soldier_heavy: z_soldier_heavy {
        displayName = "Zombie Soldier NAC (Heavy)";
        model = "\nst\ns_fraction\nac\nac_soldier_1";
    };

    class z_suit1: zZombie_Base {
        zombieLoot = "genericNamalskNoFood";
    };
    class z_suit2: z_suit1 {};

    class z_worker1: zZombie_Base {
        zombieLoot = "genericNamalskNoFood";
    };

    class z_worker2: z_worker1 {};
    class z_worker3: z_worker1 {};

    class z_doctor: zZombie_Base {
        zombieLoot = "medicalNamalsk";
    };
 
    class z_teacher: z_doctor {
        zombieLoot = "civilianNamalsk";
    };
 
    class z_villager1: zZombie_Base {
        zombieLoot = "genericNamalskNoFood";
    };

    class z_villager2: z_villager1 {};
    class z_villager3: z_villager1 {};

    class zZombie_new_Base : zZombie_Base {
		scope = public;
		glassesEnabled = 0;
		identityTypes[] = {"Zombie3"};

		class TalkTopics {};
		languages[] = {};
		armor = 10; 
		
		class Eventhandlers {
			init = "_this call zombie_initialize;";
			local = "if(_this select 1) then {[(position (_this select 0)),(_this select 0),true] execFSM '\z\AddOns\dayz_code\system\zombie_agent.fsm'};";
		};
		
		class HitPoints {
			class HitHead {
				armor = 0.1;
				material = -1;
				name = "head_hit";
				passThrough = true;
				memoryPoint = "pilot";
			};
			
			class HitBody : HitHead {
				armor = 2;
				name = "body";
				memoryPoint = "aimPoint";
			};
			
			class HitSpine : HitHead {
				armor = 2;
				name = "Spine2";
				memoryPoint = "aimPoint";
			};
			
			class HitHands : HitHead {
				armor = 0.5;
				material = -1;
				name = "hands";
				passThrough = true;
			};
			class HitLArm : HitHands {
				name = "LeftArm";
				memoryPoint = "lelbow";
			};
			
			class HitRArm : HitHands {
				name = "RightArm";
				memoryPoint = "relbow";
			};
			
			class HitLForeArm : HitHands {
				name = "LeftForeArm";
				memoryPoint = "lwrist";
			};
			
			class HitRForeArm : HitHands {
				name = "RightForeArm";
				memoryPoint = "rwrist";
			};
			
			class HitLHand : HitHands {
				name = "LeftHand";
				memoryPoint = "LeftHandMiddle1";
			};
			
			class HitRHand : HitHands {
				name = "RightHand";
				memoryPoint = "RightHandMiddle1";
			};
			
			class HitLegs : HitHands {
				armor = 10;
				name = "legs";
				memoryPoint = "pelvis";
			};
			
			class HitLLeg : HitHands {
				name = "LeftLeg";
				memoryPoint = "lknee";
			};
			
			class HitLLegUp : HitHands {
				name = "LeftUpLeg";
				memoryPoint = "lfemur";
			};
			
			class HitRLeg : HitHands {
				name = "RightLeg";
				memoryPoint = "rknee";
			};
			
			class HitRLegUp : HitHands {
				name = "RightUpLeg";
				memoryPoint = "rfemur";
			};
		};
	};
	
	class z_milNewBase : zZombie_new_Base {
		zombieLoot = "militaryNamalsk";
		model = "\ca\characters2\civil\Villager\Villager";

		class Wounds {
			tex[] = {};
			mat[] = {"ca\characters\heads\male\defaulthead\data\hhl.rvmat", "ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat", "ca\characters\heads\male\defaulthead\data\hhl_Wounds.rvmat", "ca\characters2\Civil\Villager\Data\villager.RVmat", "ca\characters2\Civil\Villager\Data\villager_w1.RVmat", "ca\characters2\Civil\Villager\Data\villager_w2.RVmat"};
		};
	};
	class z_new_milSoldier2 : z_milNewBase {
		model = "\CA\characters2\USMC\USMC_soldier";
	};
	class z_new_milSoldier3 : z_milNewBase {
		model = "\CA\characters2\USMC\USMC_soldier_Light";
	};
	class z_new_milSoldier4 : z_milNewBase {
		model = "\CA\characters2\Rus\Soldier";
	};
	class z_new_milSoldier5 : z_milNewBase {
		model = "\CA\characters2\Rus\Soldier_Light";
	};
	
	class z_new_milWorker_base : zZombie_new_Base {
		zombieLoot = "genericNamalskNoFood";
		model = "\Ca\characters_E\Overall\Overall";
		hiddenSelections[] = {"Camo"};
		hiddenSelectionsTextures[] = {"\Ca\characters_E\Overall\Data\Overall_4_co.paa"};
		
		class Wounds {
			tex[] = {};
			mat[] = {"Ca\characters_E\Overall\Data\Overall.rvmat", "Ca\characters_E\Overall\Data\W1_Overall.rvmat", "Ca\characters_E\Overall\Data\W2_Overall.rvmat"};
		};
	};
	
	class z_new_milWorker2 : z_new_milWorker_base {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\overall\overall_2_co.paa"};
	};
	class z_new_milworker3 : z_new_milWorker_base {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\overall\Overall_3_co.paa"};
	};
	class z_new_milworker4 : z_new_milWorker_base {
		hiddenSelectionsTextures[] = {"z\addons\dayz_communityassets\zeds\overall\Overall_4_co.paa"};
	};
};

#include "Configs\CfgMusic.hpp"
#include "Configs\CfgSurvivalNamalsk.hpp"
#include "Configs\CfgTownGeneratorNamalsk.hpp"
#include "Configs\CfgLootNamalsk.hpp"


