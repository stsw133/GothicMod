///******************************************************************************************
prototype ItemPR_Scroll (C_Item)
{
	name 					=	"Zwój";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MULTI;

	material				=	MAT_LEATHER;
	cond_atr[2]   			=	ATR_MANA_MAX;

	TEXT[1]					=	NAME_Mana_needed;
	TEXT[5]					=	NAME_Value;
};
///*******************************************************************************************
instance ItSc_Light (ItemPR_Scroll)
{
	value 			=	10;

	visual			=	"ItSc_Light.3DS";
	spell			= 	SPL_nLight;
	cond_value[2]  	=	SPL_Cost_nLight/5;

	description		=	NAME_SPL_Light;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_nLight;
	COUNT[5]		=	value;
};
instance ItSc_LightHeal (ItemPR_Scroll)
{
	value 			=	100;

	visual			=	"ItSc_MediumHeal.3DS";
	spell			= 	SPL_nHeal;
	cond_value[2]  	=	SPL_Cost_nHeal/5;

	description		=	NAME_SPL_Heal;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			= 	NAME_Percent_HP;
	COUNT[2]		=	SPL_Heal_nHeal;
	TEXT[3]			=	NAME_Duration;
	COUNT[3]		=	SPL_Heal_nHeal/10;
	COUNT[5]		=	value;
};
///*******************************************************************************************
instance ItSc_Telekinesis (ItemPR_Scroll)
{
	value 			=	10;

	visual			=	"ItSc_Water15.3DS";
	spell			= 	SPL_Telekinesis;
	cond_value[2]  	=	SPL_Cost_Telekinesis/5;

	description		=	NAME_SPL_Telekinesis;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_SlowTime (ItemPR_Scroll)
{
	value 			=	200;

	visual			=	"ItSc_Shrink.3DS";
	spell			= 	SPL_SlowTime;
	cond_value[2]  	=	SPL_Cost_SlowTime/5;

	description		=	NAME_SPL_SlowTime;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_Sleep (ItemPR_Scroll)
{
	value 			=	50;

	visual			=	"ItSc_Sleep.3DS";
	spell			= 	SPL_Sleep;
	cond_value[2]  	=	SPL_Cost_Sleep/5;

	description		=	NAME_SPL_Sleep;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Sleep;
	COUNT[5]		=	value;
};
instance ItSc_Fear (ItemPR_Scroll)
{
	value 			=	50;

	visual			=	"ItSc_Fear.3DS";
	spell			= 	SPL_Fear;
	cond_value[2]  	=	SPL_Cost_Fear/5;

	description		=	NAME_SPL_Fear;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Fear;
	COUNT[5]		=	value;
};
instance ItSc_Shrink (ItemPR_Scroll)
{
	value 			=	200;

	visual			=	"ItSc_Shrink.3DS";
	spell			= 	SPL_Shrink;
	cond_value[2]  	=	SPL_Cost_Shrink/5;

	description		=	NAME_SPL_Shrink;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_Charm (ItemPR_Scroll)
{
	value 			=	50;

	visual			=	"ItSc_Sleep.3DS";
	spell			= 	SPL_Charm;
	cond_value[2]  	=	SPL_Cost_Charm/5;

	description		=	NAME_SPL_Charm;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_DestroyUndead (ItemPR_Scroll)
{
	value 			=	200;

	visual			=	"ItSc_HarmUndead.3DS";
	spell			= 	SPL_PalDestroyEvil;
	cond_value[2]  	=	SPL_Cost_PalDestroyEvil/5;

	description		=	NAME_SPL_PalDestroyEvil;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_PalDestroyEvil;
	COUNT[5]		=	value;
};
