// *************************
// unbenutzte Item - Visuals
// *************************

//ItMw_2H_Sword_Sleeper_01	// Uriziel ungeladen
//ItMw_2H_Sword_Sleeper_02	// Uriziel geladen

//ItMw_2H_Axe_Old_03		// alter Richter
//ItMw_2H_Axe_Old_01		// alte Streitaxt

//ItMw_1H_Sword_Broad_01 	// Breitschwert 1h
//ItMw_1H_Sword_Long_03		// Hassbringer
//ItMw_1H_Sword_05			// Kriegsschwert
//ItMw_1H_Sword_04			// Kampfschwert
//ItMw_1H_Sword_02			// Richtschwert
//ItMw_2H_Staff_02			// Richtstab
//ItMw_2H_Staff_01			// Kampfstab
//ItMw_1H_Scythe_01			// Schnitter
//ItMw_1H_Sword_Short_02	// Bauernwehr
//ItMw_1H_Sword_Short_01	// Kurzschwert

//ItMw_1H_Poker_01			// Schürhaken

// *****************************************************
// Waffen in der Welt (ab Kapitel 1)
// ---------------------------------
// Hier alle Waffen, die bei mortal-NSCs 
// oder in die Welt objektiert zu finden sind
// Alle haben sehr geringen Wert
// Alle können (theoretisch) in Kapitel 1 erlangt werden
// *****************************************************
INSTANCE ItMw_1H_Mace_L_01 (C_Item)
{	
	name 				=	"Pogrzebacz";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_Schuerhaken;

	damageTotal  		= 	Damage_Schuerhaken;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Schuerhaken;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Schuerhaken;
	visual 				=	"Itmw_005_1h_poker_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_1h_Bau_Axe (C_Item)
{	
	name 				=	"Sierp";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_METAL;

	value 				=	Value_BauAxe;

	damageTotal  		= 	Damage_BauAxe;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_BauAxe;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_BauAxe;
	visual 				=	"Itmw_007_1h_sickle_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
// *****************************************************
INSTANCE ItMw_Sense (C_Item)
{	
	name 				=	"Ma³a kosa";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	Value_Sense;

	damageTotal  		= 	Damage_Sense;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Sense;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Sense;
	visual 				=	"ItMw_012_1h_Scythe_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
