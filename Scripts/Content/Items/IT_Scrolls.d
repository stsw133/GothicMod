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
//	spell			= 	SPL_nLight;
//	cond_value[2]  	=	SPL_Cost_nLight/5;
	
	description		=	NAME_SPL_Light;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_nLight;
	COUNT[5]		=	value;
};
instance ItSc_LightHeal (ItemPR_Scroll)
{
	value 			=	100;
	
	visual			=	"ItSc_MediumHeal.3DS";
//	spell			= 	SPL_nHeal;
//	cond_value[2]  	=	SPL_Cost_nHeal/5;
	
	description		=	NAME_SPL_Heal;
//	COUNT[1]		=	cond_value[2];
	TEXT[2]			= 	NAME_Percent_HP;
//	COUNT[2]		=	SPL_Heal_nHeal;
	TEXT[3]			=	NAME_Duration;
//	COUNT[3]		=	SPL_Heal_nHeal/10;
	COUNT[5]		=	value;
};
///*******************************************************************************************
instance ItSc_Telekinesis (ItemPR_Scroll)
{
	value 			=	50;
	
	visual			=	"ItSc_Water15.3DS";
//	spell			= 	SPL_Telekinesis;
//	cond_value[2]  	=	SPL_Cost_Telekinesis/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_Telekinesis;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_SlowTime (ItemPR_Scroll)
{
	value 			=	300;
	
	visual			=	"ItSc_Shrink.3DS";
//	spell			= 	SPL_SlowTime;
//	cond_value[2]  	=	SPL_Cost_SlowTime/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_SlowTime;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_Sleep (ItemPR_Scroll)
{
	value 			=	100;
	
	visual			=	"ItSc_Sleep.3DS";
	spell			= 	SPL_Sleep;
	cond_value[2]  	=	SPL_Cost_Sleep/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_Sleep;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Sleep;
	COUNT[5]		=	value;
};
instance ItSc_Fear (ItemPR_Scroll)
{
	value 			=	100;
	
	visual			=	"ItSc_Fear.3DS";
	spell			= 	SPL_Fear;
	cond_value[2]  	=	SPL_Cost_Fear/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_Fear;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Fear;
	COUNT[5]		=	value;
};
instance ItSc_Shrink (ItemPR_Scroll)
{
	value 			=	300;
	
	visual			=	"ItSc_Shrink.3DS";
	spell			= 	SPL_Shrink;
	cond_value[2]  	=	SPL_Cost_Shrink/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_Shrink;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_Charm (ItemPR_Scroll)
{
	value 			=	100;
	
	visual			=	"ItSc_Sleep.3DS";
	spell			= 	SPL_Charm;
	cond_value[2]  	=	SPL_Cost_Charm/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_Charm;
	COUNT[1]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItSc_DestroyUndead (ItemPR_Scroll)
{
	value 			=	200;
	
	visual			=	"ItSc_HarmUndead.3DS";
	spell			= 	SPL_PalDestroyEvil;
	cond_value[2]  	=	SPL_Cost_PalDestroyEvil/SPL_Cost_Scroll;
	
	description		=	NAME_SPL_PalDestroyEvil;
	COUNT[1]		=	cond_value[2];
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_PalDestroyEvil;
	COUNT[5]		=	value;
};


















// Paladin Scrolls
const 	string Name_PaladinScroll		=	"Czar Paladyna"; 	
const	int	Value_Sc_PalLight			=	50;
const	int	Value_Sc_PalLightHeal		=	100;
const	int	Value_Sc_PalHolyBolt		=	200;
const	int	Value_Sc_PalMediumHeal		=	400;
const	int	Value_Sc_PalRepelEvil		=	600;
const	int	Value_Sc_PalFullHeal		=	800;
const	int	Value_Sc_PalDestroyEvil		=	1000;

// Magier Scrolls	
const int 	Value_Sc_Firebolt			=	25;
const int 	Value_Sc_Icebolt			=	25;	
const int 	Value_Sc_SumGobSkel			=  	75;
const int 	Value_Sc_InstantFireball	=	50;
	
const int 	Value_Sc_Zap				=	60;
const int 	Value_Sc_SumWolf			=	75;
const int 	Value_Sc_Windfist			=	60;
const int 	Value_Sc_MediumHeal			=	60;
const int 	Value_Sc_LightningFlash		=	125;
const int 	Value_Sc_ChargeFireball		=	60;
const int 	Value_Sc_SumSkel			=	75;
const int 	Value_Sc_IceCube			=	100;

const int 	Value_Sc_ThunderBall		=	75;
const int 	Value_Sc_SumGol				=	150;
const int 	Value_Sc_HarmUndead			=	75;
const int 	Value_Sc_Pyrokinesis		=	150;

const int 	Value_Sc_Firestorm			=	100;
const int 	Value_Sc_IceWave			=	200;
const int 	Value_Sc_SumDemon			=	200;
const int 	Value_Sc_FullHeal			=	200;

const int 	Value_Sc_Firerain			=	250;
const int 	Value_Sc_BreathOfDeath		=	250;
const int 	Value_Sc_MassDeath			=	250;
const int 	Value_Sc_ArmyOfDarkness		=	250;

const int Value_Sc_Water = 1;

const int Value_Sc_IceLance = 100;
const int Value_Sc_Whirlwind = 200;
const int Value_Sc_Geyser = 100;
const int Value_Sc_Thunderstorm = 200;
const int Value_Sc_Waterfist = 100;

/*******************************************************************************************/
// 			Paladin Scrolls 
/*******************************************************************************************/
INSTANCE ItSc_PalLight (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalLight;

	visual				=	"ItSc_PalLight.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalLight;
	cond_atr[2]   			= 	ATR_MANA_MAX;
	cond_value[2]  			= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalLight;
	
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Duration;		
	COUNT	[2]			=	SPL_Duration_PalLIGHT;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_PalLightHeal (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalLightHeal;

	visual				=	"ItSc_PalLightHeal.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalLightHeal;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalLightHeal;
	
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_PalLightHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_PalHolyBolt (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalHolyBolt;

	visual				=	"ItSc_PalHolyBolt.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalHolyBolt;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";


	description			=	NAME_SPL_PalHolyBolt;
	
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_Damage_PalHolyBolt;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_PalMediumHeal (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalMediumHeal;

	visual				=	"ItSc_PalMediumHeal.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalMediumHeal;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalMediumHeal;
	
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_PalMediumHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_PalRepelEvil (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalRepelEvil;

	visual				=	"ItSc_PalRepelEvil.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalRepelEvil;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalRepelEvil;
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_Damage_PalRepelEvil;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_PalFullHeal (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalFullHeal;

	visual				=	"ItSc_PalFullHeal.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalFullHeal;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalFullHeal;		
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_PalFullHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_PalDestroyEvil (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_PalDestroyEvil;

	visual				=	"ItSc_PalDestroyEvil.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PalDestroyEvil;
	cond_atr[2]   			=	ATR_MANA_MAX;
	cond_value[2]  			=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalDestroyEvil;
	TEXT	[0]			=	Name_PaladinScroll	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_Damage_PalDestroyEvil;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
// 			Magier Scrolls 
/*******************************************************************************************/
INSTANCE ItSc_Firebolt (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Firebolt;

	visual				=	"ItSc_Firebolt.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_FIREBOLT;
	cond_atr[2]   			= 	ATR_MANA_MAX;
	cond_value[2]  			= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Firebolt;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_DAMAGE_FIREBOLT;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Icebolt (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Icebolt;

	visual				=	"ItSc_Icebolt.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Icebolt;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Icebolt;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_Icebolt;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_SumGobSkel (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_SumGobSkel;

	visual				=	"ItSc_SumGobSkel.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_SummonGoblinSkeleton;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonGoblinSkeleton;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_InstantFireball (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_InstantFireball;

	visual				=	"ItSc_InstantFireball.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_InstantFireball;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_InstantFireball;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;							
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;	
	COUNT	[2]			=	SPL_DAMAGE_InstantFireball;
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Zap (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Zap;

	visual				=	"ItSc_Zap.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Zap;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Zap;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_DAMAGE_ZAP;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_SumWolf (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_SumWolf;

	visual				=	"ItSc_SumWolf.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_SummonWolf;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonWolf;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Windfist (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Windfist;

	visual				=	"ItSc_Windfist.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_WINDFIST;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	STEP_WINDFIST;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_WINDFIST;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_MinManakosten;							
	COUNT	[1]			=	STEP_WindFist;
	
	TEXT	[2]			=	NAME_MaxManakosten;							
	COUNT	[2]			=	SPL_COST_WINDFIST;
	
	TEXT	[3]			=	NAME_MinDamage;
	count 	[3]			=   SPL_Damage_Windfist;
	
	TEXT	[4]			=	NAME_MaxDamage;
	COUNT	[4]			=	(SPL_Damage_Windfist*4);
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_MediumHeal (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_MediumHeal;

	visual				=	"ItSc_MediumHeal.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_MediumHeal;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_MediumHeal;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_MediumHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_LightningFlash (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_LightningFlash;

	visual				=	"ItSc_LightningFlash.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_LightningFlash;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_LightningFlash;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_Damage_LightningFlash;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_ChargeFireball (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_ChargeFireball;

	visual				=	"ItSc_ChargeFireball.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_ChargeFireball;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	STEP_CHARGEFIREBALL;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_ChargeFireball;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_MinManakosten;							
	COUNT	[1]			=	STEP_ChargeFireball;
	
	TEXT	[2]			=	NAME_MaxManakosten;							
	COUNT	[2]			=	SPL_COST_ChargeFireball;
	
	TEXT	[3]			=	NAME_MinDamage;
	count 	[3]			=   SPL_Damage_ChargeFireball;
	
	TEXT	[4]			=	NAME_MaxDamage;
	COUNT	[4]			=	(SPL_Damage_ChargeFireball*4);
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_SumSkel (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_SumSkel;

	visual				=	"ItSc_SumSkel.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_SUMMONSKELETON;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonSkeleton;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_IceCube (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_IceCube;

	visual				=	"ItSc_IceCube.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_ICECUBE;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_IceCube;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Damage;				
	COUNT	[2]			=	60;
	
	TEXT	[3]			=	NAME_Duration;				
	COUNT	[3]			=	SPL_TIME_FREEZE;
	
	TEXT	[4]			=	NAME_DamagePerSec;				
	COUNT	[4]			=	SPL_FREEZE_DAMAGE;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_ThunderBall (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_ThunderBall;

	visual				=	"ItSc_ThunderBall.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_ChargeZap;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	STEP_CHARGEZAP;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_ChargeZap;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_MinManakosten;							
	COUNT	[1]			=	STEP_ChargeZap;
	
	TEXT	[2]			=	NAME_MaxManakosten;							
	COUNT	[2]			=	SPL_COST_ChargeZap;
	
	TEXT	[3]			=	NAME_MinDamage;
	count 	[3]			=   SPL_Damage_ChargeZap;
	
	TEXT	[4]			=	NAME_MaxDamage;
	COUNT	[4]			=	(SPL_Damage_ChargeZap*4);
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_SumGol (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SC_SumGol;

	visual				=	"ItSc_SumGol.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_SUMMONGOLEM;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonGolem;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_HarmUndead (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_HarmUndead;

	visual				=	"ItSc_HarmUndead.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_DESTROYUNDEAD;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_DestroyUndead;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_DESTROYUNDEAD;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Pyrokinesis (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Pyrokinesis;

	visual				=	"ItSc_Pyrokinesis.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_PYROKINESIS;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	STEP_Pyrokinesis;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Pyrokinesis;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_MinManakosten;							
	COUNT	[1]			=	STEP_Pyrokinesis;
	
	TEXT	[2]			=	NAME_MaxManakosten;							
	COUNT	[2]			=	SPL_Cost_Pyrokinesis;
	
	TEXT	[3]			=	NAME_MinDamage;
	count 	[3]			=   SPL_Damage_Pyrokinesis;
	
	TEXT	[4]			=	NAME_MaxDamage;
	COUNT	[4]			=	(SPL_Damage_Pyrokinesis*4);
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Firestorm (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Firestorm;

	visual				=	"ItSc_Firestorm.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_FIRESTORM;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_Firestorm;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;							
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;	
	COUNT	[2]			=	SPL_Damage_FireStorm;
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_IceWave (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SC_IceWave;

	visual				=	"ItSc_IceWave.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_ICEWAVE;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_IceWave;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Damage;				
	COUNT	[2]			=	60;
	
	TEXT	[3]			=	NAME_Duration;				
	COUNT	[3]			=	SPL_TIME_FREEZE;
	
	TEXT	[4]			=	NAME_DamagePerSec;				
	COUNT	[4]			=	SPL_FREEZE_DAMAGE;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_SumDemon (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_SumDemon;

	visual				=	"ItSc_SumDemon.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_SUMMONDEMON;
	cond_atr[2]   			=	ATR_MANA_MAX;
	cond_value[2]  			=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonDemon;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/

INSTANCE ItSc_FullHeal (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_FullHeal;

	visual				=	"ItSc_FullHeal.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_FullHeal;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_FullHeal;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_FullHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Firerain (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Firerain;

	visual				=	"ItSc_Firerain.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_FIRERAIN;
	cond_atr[2]   			= 	ATR_MANA_MAX;
	cond_value[2]  			= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Firerain;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Fire;				
	COUNT	[2]			=	SPL_DAMAGE_FIRERAIN;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_BreathOfDeath (C_Item)//Joly:Auf Dracheninsel in Truhe der Schwarzmagiernovizen
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_BreathofDeath;

	visual				=	"ItSc_BreathOfDeath.3ds";
	material			=	MAT_LEATHER;

	spell				= 	SPL_BREATHOFDEATH;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_BreathOfDeath;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_BREATHOFDEATH;

	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_MassDeath (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Massdeath;

	visual				=	"ItSc_MassDeath.3ds";
	material			=	MAT_LEATHER;

	spell				= 	SPL_MASSDEATH;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_MassDeath;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_MASSDEATH;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_ArmyOfDarkness (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_ArmyofDarkness;

	visual				=	"ItSc_ArmyOfDarkness.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_ARMYOFDARKNESS;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_ArmyOfDarkness;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItSc_Geyser (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Geyser;

	visual				=	"ItSc_Water01.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Geyser;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Geyser;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Geyser;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};

INSTANCE ItSc_Icelance (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Icelance;

	visual				=	"ItSc_Water04.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Icelance;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Icelance;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Icelance;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};

INSTANCE ItSc_Waterfist (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Waterfist;

	visual				=	"ItSc_Water03.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Waterfist;
	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Waterfist;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;		
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Waterfist;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};

INSTANCE ItSc_Thunderstorm (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Thunderstorm;

	visual				=	"ItSc_Water05.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Thunderstorm;
	cond_atr[2]   			= 	ATR_MANA_MAX;
	cond_value[2]  			= 	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Thunderstorm;

	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Damage;				
	COUNT	[2]			=	SPL_DAMAGE_Thunderstorm;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItSc_Whirlwind (C_Item)
{
	name 				=	"Zwój";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sc_Whirlwind;

	visual				=	"ItSc_Water02.3DS";
	material			=	MAT_LEATHER;

	spell				= 	SPL_Whirlwind;
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	SPL_Cost_Scroll;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Whirlwind;
	
	TEXT	[0]			=	"Zwój"	;
	
	TEXT	[1]			=	NAME_Mana_needed;			
	COUNT	[1]			=	SPL_Cost_Scroll;
	
	TEXT	[2]			=	NAME_Duration;				
	COUNT	[2]			=	SPL_TIME_WHIRLWIND;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};