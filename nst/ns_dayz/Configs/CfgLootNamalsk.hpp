#define Loot_NONE		0
#define Loot_GROUP		1
#define Loot_WEAPON		2
#define Loot_TOOL Loot_WEAPON
#define Loot_MAGAZINE	3
#define Loot_PILE		4
#define Loot_BACKPACK	5
#define Loot_VEHICLE	6
#define Loot_CONTAINER	7
#define Loot_CUSTOM		8

class CfgLootNamalsk
{
	class Groups
	{
		#define DZ_BP_VestPouch DZ_Czech_Vest_Pouch
		#define DZ_BP_Patrol DZ_Patrol_Pack_EP1
		#define DZ_BP_Assault DZ_Assault_Pack_EP1
		#define DZ_BP_Survival DZ_TK_Assault_Pack_EP1
		#define DZ_BP_Alice DZ_ALICE_Pack_EP1
		#define DZ_BP_British DZ_British_ACU
		#define DZ_BP_Czech DZ_CivilBackpack_EP1
		#define DZ_BP_Coyote DZ_Backpack_EP1

		#define ItemBloodbagAPos bloodBagAPOS
		#define ItemBloodbagANeg bloodBagANEG
		#define ItemBloodbagBPos bloodBagBPOS
		#define ItemBloodbagBNeg bloodBagBNEG
		#define ItemBloodbagABPos bloodBagABPOS
		#define ItemBloodbagABNeg bloodBagABNEG
		#define ItemBloodbagOPos bloodBagOPOS
		#define ItemBloodbagONeg bloodBagONEG
		
		#define ItemBloodTester bloodTester
		#define ItemTransfusionKit transfusionKit
		#define ItemBloodbagEmpty emptyBloodBag

		#include "CfgLootNamalskGroups.hpp"

		#undef DZ_BP_VestPouch
		#undef DZ_BP_Patrol
		#undef DZ_BP_Assault
		#undef DZ_BP_Survival
		#undef DZ_BP_Alice
		#undef DZ_BP_British
		#undef DZ_BP_Czech
		#undef DZ_BP_Coyote

		#undef ItemBloodbagAPos
		#undef ItemBloodbagANeg
		#undef ItemBloodbagBPos
		#undef ItemBloodbagBNeg
		#undef ItemBloodbagABPos
		#undef ItemBloodbagABNeg
		#undef ItemBloodbagOPos
		#undef ItemBloodbagONeg
		
		#undef ItemBloodTester
		#undef ItemTransfusionKit
		#undef ItemBloodbagEmpty
	};
	
	class Buildings
	{
		class Default
		{
			zombieChance = 0.2;
			minRoaming = 0;
			maxRoaming = 2;
			zombieClass[] =
			{
				"z_hunter",
				"z_teacher",
				"z_suit1",
				"z_suit2",
				"z_worker1",
				"z_worker2",
				"z_worker3",
				"z_villager1",
				"z_villager2",
				"z_villager3"
			};
			
			lootChance = 0;
			lootGroup = "";
			lootRefreshTimer = 900;
			lootPos[] = {};
		};
	
		// Buildings
		#include "CfgLootNamalskBuildings.hpp"		
	};
};