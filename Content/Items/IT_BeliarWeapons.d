///******************************************************************************************
///	IT_BeliarWeapons
///******************************************************************************************
func void SetBeliarWeaponAttributes (var C_ITEM itm, var int kap)
{
	itm.material 		=	MAT_METAL;
	itm.damagetype		=	DAM_EDGE;
	itm.effect			= 	"SPELLFX_FIRESWORDBLACK";
	
	if (hero.hitchance[NPC_TALENT_1H] > hero.hitchance[NPC_TALENT_2H])
	{
		itm.flags		=	ITEM_SWD|ITEM_MISSION;
		itm.visual		=	"ItMw_BeliarWeapon_1H.3DS";
		itm.range		=	100;
		itm.damageTotal	=	20+(2*kap);
		itm.TEXT[4]		=	NAME_OneHanded;
	}
	else
	{
		itm.flags		=	ITEM_2HD_SWD|ITEM_MISSION;
		itm.visual		=	"ItMw_BeliarWeapon_2H.3DS";
		itm.range		=	120;
		itm.damageTotal	=	40+(2*kap);
		itm.TEXT[4]		=	NAME_TwoHanded;
	};
	
	itm.cond_atr[2]   	=	COND_LEVEL;
	itm.cond_value[2]	=	kap;
	
	itm.TEXT[0] 		=	NAME_Lev_needed;
	itm.COUNT[0]		=	itm.cond_value[2];
	itm.TEXT[2]			=	NAME_Damage;
	itm.COUNT[2]		=	itm.damageTotal;
	itm.TEXT[3] 		=	"Szansa na dodatkowe obra¿enia:";
	itm.COUNT[3]		=	25+(kap/2);
};
///******************************************************************************************

var int BeliarWeapon_LastUpgradeLvl;

///******************************************************************************************
instance ItMw_BeliarWeapon_Raven (C_Item)
{
	name 			=	"Szpon Beliara";
	mainflag 		=	ITEM_KAT_NF;
	flags			=	ITEM_2HD_SWD|ITEM_MISSION;

	damageTotal		=	200;
	range			=	120;
	visual			=	"ItMw_BeliarWeapon_2H.3DS";
	effect			= 	"SPELLFX_FIRESWORDBLACK";

	cond_atr[2]   	=	ATR_MANA_MAX;
	cond_value[2]  	=	666666;

	description		=	name;
};
///******************************************************************************************
instance ItMw_BeliarWeapon (C_Item)
{
	name 			=	"Szpon Beliara";
	mainflag 		=	ITEM_KAT_NF;

	description		=	name;
	SetBeliarWeaponAttributes (self, BeliarWeapon_LastUpgradeLvl);
};
