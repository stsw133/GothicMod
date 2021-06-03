
////////////////////////////////////////////////////////////////////////////////
//
//	Magische Waffen
//

instance ItRw_Addon_MagicArrow (C_Item)
{
	name 				=	"Magiczna strza³a";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW | ITEM_MULTI;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_ARROW";

	// FIXME_Noki: Werte
	value 				=	1;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
//	TEXT[0]				= "";					COUNT[0]	= ;
//	TEXT[1]				= "";					COUNT[1]	= ;
//	TEXT[2]				= NAME_Damage;			COUNT[2]	= damageTotal;
//	TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
//	TEXT[4]				= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};


instance ItRw_Addon_FireArrow (C_Item)
{
	name 				=	"Ognista strza³a";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW | ITEM_MULTI;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREARROW";

	// FIXME_Noki: Werte
	value 				=	1;

	visual 				=	"ItRw_Arrow.3ds";
	material 			=	MAT_WOOD;

	description			= name;
//	TEXT[0]				= "";					COUNT[0]	= ;
//	TEXT[1]				= "";					COUNT[1]	= ;
//	TEXT[2]				= NAME_Damage;			COUNT[2]	= damageTotal;
//	TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
//	TEXT[4]				= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};


instance ItRw_Addon_MagicBow (C_Item)
{
	name 				=	"Magiczny ³uk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	100;

	damageTotal			=	Damage_MagicBow;
	damagetype			=	DAM_MAGIC;
	munition			=	ItRw_Addon_MagicArrow;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_BOW";

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_MagicBow;
	visual 				=	"ItRw_Bow_H_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


instance ItRw_Addon_FireBow (C_Item)
{
	name 				=	"Ognisty ³uk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	100;

	damageTotal			=	Damage_FireBow;
	damagetype			=	DAM_MAGIC;
	munition			=	ItRw_Addon_FireArrow;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_FIREBOW";

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_FireBow;
	visual 				=	"ItRw_Bow_H_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


////////////////////////////////////////////////////////////////////////////////

instance ItRw_Addon_MagicBolt (C_Item)
{
	name 				=	"Magiczny be³t";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW | ITEM_MULTI;

	value 				=	1;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_BOLT";

	visual 				=	"ItRw_Bolt.3ds";
	material 			=	MAT_WOOD;

	description			= name;
//	TEXT[0]				= "";					COUNT[0]	= ;
//	TEXT[1]				= "";					COUNT[1]	= ;
//	TEXT[2]				= NAME_Damage;			COUNT[2]	= damageTotal;
//	TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
//	TEXT[4]				= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

instance ItRw_Addon_MagicCrossbow (C_Item)
{
	name 				=	"Magiczna kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	wear				=	WEAR_EFFECT;
	effect				=	"SPELLFX_CROSSBOW";

	value 				=	100;

	damageTotal			= 	Damage_MagicCrossbow;
	damagetype			=	DAM_MAGIC;
	munition			=	ItRw_Addon_MagicBolt;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_MagicCrossbow;
	visual 				=	"ItRw_Crossbow_H_01.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
