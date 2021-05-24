class CfgSurvivalNamalsk {
	class Inventory {
		class Default {
			RandomMagazines = 3;
			weapons[] = {"Makarov_DZ","ItemKnife","ItemFlashlight"};
			GuaranteedMagazines[] = {"ItemBandage","8Rnd_9x18_Makarov","8Rnd_9x18_Makarov","ItemHeatPack","HandRoadFlare"};
			RandomPossibilitieMagazines[] = {"ItemBandage","ItemHeatPack","ItemPainkiller"};
			backpackWeapon = "";
			backpack = "DZ_Patrol_Pack_EP1";
		};
	};
	class Meat {
		class Default {
			yield = 1;
			rawfoodtype = "FoodmeatRaw";
		};
		class Cow: Default {
			yield = 6;
			rawfoodtype = "FoodbeefRaw";
		};
		class Cow01: Cow {};
		class Cow02: Cow {};
		class Cow03: Cow {};
		class Cow04: Cow {};
		class Goat: Default {
			yield = 2;
			rawfoodtype = "FoodgoatRaw";
		};
		class Sheep: Default {
			yield = 4;
			rawfoodtype = "FoodmuttonRaw";
		};
		class WildBoar: Default {
			yield = 4;
			rawfoodtype = "FoodbaconRaw";
		};
		class Hen: Default {
			yield = 1;
			rawfoodtype = "FoodchickenRaw";
		};
		class Rabbit: Default {
			yield = 1;
			rawfoodtype = "FoodrabbitRaw";
		};
	};
};