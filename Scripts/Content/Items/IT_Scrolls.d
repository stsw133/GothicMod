///******************************************************************************************
prototype ItemPR_Scroll (C_Item)
{
	name 					=	"Zwój";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MULTI;

	material				=	MAT_LEATHER;
	cond_atr[2]   			=	ATR_MANA_MAX;

	TEXT[1]					=	NAME_Manakosten;
	TEXT[5]					=	NAME_Value;
};
///*******************************************************************************************
///	Basic spells
///*******************************************************************************************
instance ItSc_Light (ItemPR_Scroll)
{
	value 					=	30;
	
	visual					=	"ItSc_Light.3DS";
	spell					= 	SPL_Light;
	cond_value[2]  			=	SPL_Cost_Light/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Light;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Light;
	COUNT[5]				=	value;
};
instance ItSc_LightHeal (ItemPR_Scroll)
{
	value 					=	75;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					= 	SPL_Heal;
	cond_value[2]  			=	1;
	
	description				=	NAME_SPL_Heal;
	COUNT[1]				=	SPL_Cost_Heal/SPL_Cost_Scroll;
	TEXT[2]					= 	NAME_HealingPerCast;
	COUNT[2]				=	SPL_Heal_Heal;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Heal;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	PAL spells
///*******************************************************************************************
instance ItSc_PalBless (ItemPR_Scroll)
{
	value 					=	55;
	
	visual					=	"ItSc_PalLight.3DS";
	spell					=	SPL_PalBless;
	cond_value[2]  			=	SPL_Cost_PalBless/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalBless;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Dodatkowe obra¿enia równe 10% max. many.";
	TEXT[3]					=	"U¿yj ponownie by wy³¹czyæ.";
	COUNT[5]				=	value;
};
instance ItSc_PalFaith (ItemPR_Scroll)
{
	value 					=	110;
	
	visual					=	"ItSc_PalLightHeal.3DS";
	spell					=	SPL_PalFaith;
	cond_value[2]  			=	SPL_Cost_PalFaith/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalFaith;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_PalFaith;
	COUNT[5]				=	value;
};
instance ItSc_PalHolyBolt (ItemPR_Scroll)
{
	value 					=	110;
	
	visual					=	"ItSc_PalHolyBolt.3DS";
	spell					=	SPL_PalHolyBolt;
	cond_value[2]  			=	SPL_Cost_PalHolyBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalHolyBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalHolyBolt;
	COUNT[5]				=	value;
};
instance ItSc_PalGlory (ItemPR_Scroll)
{
	value					=	165;
	
	visual					=	"ItSc_PalMediumHeal.3DS";
	spell					=	SPL_PalGlory;
	cond_value[2]  			=	SPL_Cost_PalGlory/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalGlory;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_PalRepelEvil (ItemPR_Scroll)
{
	value					=	165;
	
	visual					=	"ItSc_PalRepelEvil.3DS";
	spell					=	SPL_PalRepelEvil;
	cond_value[2]			=	SPL_Cost_PalRepelEvil/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalRepelEvil;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalRepelEvil;
	COUNT[5]				=	value;
};
instance ItSc_PalJustice (ItemPR_Scroll)
{
	value					=	220;
	
	visual					=	"ItSc_PalFullHeal.3DS";
	spell					=	SPL_PalJustice;
	cond_value[2]  			=	SPL_Cost_PalJustice/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalJustice;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_PalDestroyEvil (ItemPR_Scroll)
{
	value					=	220;
	
	visual					=	"ItSc_PalDestroyEvil.3DS";
	spell					=	SPL_PalDestroyEvil;
	cond_value[2]			=	SPL_Cost_PalDestroyEvil/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalDestroyEvil;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalDestroyEvil;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	Common spells
///*******************************************************************************************
instance ItSc_NightToDay (ItemPR_Scroll)
{
	value 					=	75;
	
	visual					=	"ItSc_Light.3DS";
	spell					= 	SPL_NightToDay;
	cond_value[2]  			=	SPL_Cost_NightToDay/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NightToDay;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_FireBolt (ItemPR_Scroll)
{
	value 					=	30;
	
	visual					=	"ItSc_FireBolt.3DS";
	spell					= 	SPL_FireBolt;
	cond_value[2]  			= 	SPL_Cost_FireBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_FireBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_FireBolt;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_FireBolt;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_IceBolt (ItemPR_Scroll)
{
	value 					=	30;
	
	visual					=	"ItSc_IceBolt.3DS";
	spell					= 	SPL_IceBolt;
	cond_value[2]  			= 	SPL_Cost_IceBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_IceBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceBolt;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_IceBolt;
	COUNT[5]				=	value;
};
instance ItSc_IceLance (ItemPR_Scroll)
{
	value 					=	75;
	
	visual					=	"ItSc_Water04.3DS";
	spell					= 	SPL_IceLance;
	cond_value[2]  			= 	SPL_Cost_IceLance/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_IceLance;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceLance;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_IceLance;
	COUNT[5]				=	value;
};
instance ItSc_SkullBolt (ItemPR_Scroll)
{
	value 					=	40;
	
	visual					=	"ItSc_Zap.3DS";
	spell					= 	SPL_SkullBolt;
	cond_value[2]  			= 	SPL_Cost_SkullBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_SkullBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SkullBolt;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_SkullBolt;
	COUNT[5]				=	value;
};
instance ItSc_InstantFireball (ItemPR_Scroll)
{
	value 					=	75;
	
	visual					=	"ItSc_InstantFireball.3DS";
	spell					= 	SPL_InstantFireball;
	cond_value[2]  			= 	SPL_Cost_InstantFireball/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_InstantFireball;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_InstantFireball;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_InstantFireball;
	COUNT[5]				=	value;
};
instance ItSc_Zap (ItemPR_Scroll)
{
	value 					=	40;
	
	visual					=	"ItSc_Zap.3DS";
	spell					= 	SPL_Zap;
	cond_value[2]  			= 	SPL_Cost_Zap/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Zap;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Zap;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Zap;
	COUNT[5]				=	value;
};
instance ItSc_Whirlwind (ItemPR_Scroll)
{
	value 					=	75;
	
	visual					=	"ItSc_Water02.3DS";
	spell					= 	SPL_Whirlwind;
	cond_value[2]  			= 	SPL_Cost_Whirlwind/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Whirlwind;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Whirlwind;
	COUNT[5]				=	value;
};
instance ItSc_WindFist (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_WindFist.3DS";
	spell					= 	SPL_WindFist;
	cond_value[2]  			= 	SPL_Cost_WindFist/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_WindFist;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_WindFist;
	TEXT[4]					= 	NAME_ScalingPerPower;
	COUNT[4]				=	SPL_Scaling_WindFist;
	COUNT[5]				=	value;
};
instance ItSc_Sleep (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					= 	SPL_Sleep;
	cond_value[2]  			=	SPL_Cost_Sleep/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Sleep;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Sleep;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Sleep;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItSc_Charm (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					= 	SPL_Charm;
	cond_value[2]  			=	SPL_Cost_Charm/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Charm;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Charm;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Charm;
	COUNT[5]				=	value;
};
instance ItSc_LightningFlash (ItemPR_Scroll)
{
	value 					=	175;
	
	visual					=	"ItSc_LightningFlash.3DS";
	spell					= 	SPL_LightningFlash;
	cond_value[2]  			= 	SPL_Cost_LightningFlash/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_LightningFlash;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightningFlash;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_LightningFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_ChargeFireball (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_ChargeFireball.3DS";
	spell					= 	SPL_ChargeFireball;
	cond_value[2]  			= 	SPL_Cost_ChargeFireball/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_ChargeFireball;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Cost_ChargeFireball;
	TEXT[4]					=	NAME_ScalingPerPower;
	COUNT[4]				=	SPL_Scaling_ChargeFireball;
	COUNT[5]				=	value;
};
instance ItSc_Rage (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_Fear.3DS";
	spell					= 	SPL_Rage;
	cond_value[2]  			= 	SPL_Cost_Rage/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Rage;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Rage;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Rage;
	COUNT[5]				=	value;
};
instance ItSc_Fear (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Fear.3DS";
	spell					= 	SPL_Fear;
	cond_value[2]  			= 	SPL_Cost_Fear/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Fear;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Fear;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Fear;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_Fear;
	COUNT[5]				=	value;
};
instance ItSc_IceCube (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_IceCube.3DS";
	spell					= 	SPL_IceCube;
	cond_value[2]  			= 	SPL_Cost_IceCube/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_IceCube;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Damage;
	COUNT[2]				=	SPL_Damage_IceCube;
	TEXT[3]					=	NAME_Duration;
	COUNT[3]				=	SPL_TIME_FREEZE;
	TEXT[4]					=	NAME_DamagePerSec;
	COUNT[4]				=	SPL_FREEZE_DAMAGE;
	COUNT[5]				=	value;
};
instance ItSc_ChargeZap (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Thunderball.3DS";
	spell					= 	SPL_ChargeZap;
	cond_value[2]  			= 	SPL_Cost_ChargeZap/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_ChargeZap;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeZap;
	TEXT[4]					=	NAME_ScalingPerPower;
	COUNT[4]				=	SPL_Scaling_ChargeZap;
	COUNT[5]				=	value;
};
instance ItSc_Geyser (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Water01.3DS";
	spell					= 	SPL_Geyser;
	cond_value[2]  			= 	SPL_Cost_Geyser/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Geyser;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Geyser;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Geyser;
	COUNT[5]				=	value;
};
instance ItSc_DestroyUndead (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_HarmUndead.3DS";
	spell					= 	SPL_DestroyUndead;
	cond_value[2]  			= 	SPL_Cost_DestroyUndead/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_DestroyUndead;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DestroyUndead;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_DestroyUndead;
	COUNT[5]				=	value;
};
instance ItSc_Pyrokinesis (ItemPR_Scroll)
{
	value 					=	250;
	
	visual					=	"ItSc_Pyrokinesis.3DS";
	spell					= 	SPL_Pyrokinesis;
	cond_value[2]  			= 	SPL_Cost_Pyrokinesis/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Pyrokinesis;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	SPL_Cost_Pyrokinesis/SPL_Cost_Scroll;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_Pyrokinesis;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_Pyrokinesis*4;
	COUNT[5]				=	value;
};
instance ItSc_Firestorm (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Firestorm.3DS";
	spell					= 	SPL_Firestorm;
	cond_value[2]  			= 	SPL_Cost_Firestorm/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Firestorm;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firestorm;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Firestorm;
	COUNT[5]				=	value;
};
instance ItSc_IceWave (ItemPR_Scroll)
{
	value 					=	250;
	
	visual					=	"ItSc_IceWave.3DS";
	spell					= 	SPL_IceWave;
	cond_value[2]  			= 	SPL_Cost_IceWave/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_IceWave;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Damage;
	COUNT[2]				=	SPL_Scaling_IceWave;
	TEXT[3]					=	NAME_Duration;
	COUNT[3]				=	SPL_TIME_FREEZE;
	TEXT[4]					=	NAME_DamagePerSec;
	COUNT[4]				=	SPL_FREEZE_DAMAGE;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_WaterFist (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_Water03.3DS";
	spell					= 	SPL_WaterFist;
	cond_value[2]  			= 	SPL_Cost_WaterFist/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_WaterFist;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_WaterFist;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_WaterFist;
	COUNT[5]				=	value;
};
instance ItSc_Thunderstorm (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Water01.3DS";
	spell					= 	SPL_Thunderstorm;
	cond_value[2]  			= 	SPL_Cost_Thunderstorm/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Thunderstorm;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Thunderstorm;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Thunderstorm;
	COUNT[5]				=	value;
};
instance ItSc_Firerain (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_Firerain.3DS";
	spell					= 	SPL_Firerain;
	cond_value[2]  			= 	SPL_Cost_Firerain/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Firerain;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firerain;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Firerain;
	COUNT[5]				=	value;
};
instance ItSc_BreathOfDeath (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_BreathOfDeath.3DS";
	spell					= 	SPL_BreathOfDeath;
	cond_value[2]  			= 	SPL_Cost_BreathOfDeath/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_BreathOfDeath;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BreathOfDeath;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_BreathOfDeath;
	COUNT[5]				=	value;
};
instance ItSc_MassDeath (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_MassDeath.3DS";
	spell					= 	SPL_MassDeath;
	cond_value[2]  			= 	SPL_Cost_MassDeath/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_MassDeath;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MassDeath;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_MassDeath;
	COUNT[5]				=	value;
};
instance ItSc_SlowTime (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_Shrink.3DS";
	spell					= 	SPL_SlowTime;
	cond_value[2]  			=	SPL_Cost_SlowTime/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_SlowTime;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Shrink (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_Shrink.3DS";
	spell					= 	SPL_Shrink;
	cond_value[2]			=	SPL_Cost_Shrink/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Shrink;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Shrink;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Shrink;
	COUNT[5]				=	value;
};
instance ItSc_Telekinesis (ItemPR_Scroll)
{
	value 					=	30;
	
	visual					=	"ItSc_LightHeal.3DS";
	spell					= 	SPL_Telekinesis;
	cond_value[2]  			=	SPL_Cost_Telekinesis/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Telekinesis;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Inflate (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Water01.3DS";
	spell					= 	SPL_Inflate;
	cond_value[2]  			= 	SPL_Cost_Inflate/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Inflate;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_ArmyOfDarkness (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_ArmyOfDarkness.3DS";
	spell					= 	SPL_Summon;
	cond_value[2]			=	SPL_Cost_Summon/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Summon;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	npc spells
///*******************************************************************************************
instance ItSc_DragonBall (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_InstantFireball.3DS";
	spell					= 	SPL_DragonBall;
	cond_value[2]  			= 	SPL_Cost_DragonBall/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_DragonBall;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DragonBall;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_DragonBall;
	COUNT[5]				=	value;
};
instance ItSc_BlackDragonBall (ItemPR_Scroll)
{
	value 					=	250;
	
	visual					=	"ItSc_InstantFireball.3DS";
	spell					= 	SPL_BlackDragonBall;
	cond_value[2]  			= 	SPL_Cost_BlackDragonBall/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_BlackDragonBall;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BlackDragonBall;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_BlackDragonBall;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	MYS & GEO & ELE & PYR & NEC spells
///*******************************************************************************************
instance ItSc_MysBolt (ItemPR_Scroll)
{
	value 					=	20;
	
	visual 					=	"ItSc_FireBolt.3ds";
//	spell					= 	SPL_MysBolt;
//	cond_value[2]  			= 	SPL_Cost_MysBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_MysBolt;
//	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	cond_value[2];
//	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysBolt;
//	TEXT[3]					= 	NAME_ScalingPerPower;
//	COUNT[3]				=	SPL_Scaling_MysBolt;
	COUNT[5]				=	value;
};
instance ItSc_MysBall (ItemPR_Scroll)
{
	visual 					=	"ItSc_InstantFireball.3ds";
	spell					= 	SPL_MysBall;
	
	description				=	NAME_SPL_MysBall;
	TEXT[1]					=	NAME_Manakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MysBall;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_MysBall;
	TEXT[4]					=	"% skumulowanych obra¿eñ w pobli¿u:";
	COUNT[4]				=	SPL_Percent_MysBall;
	COUNT[5]				=	value;
};
instance ItSc_MysAura (ItemPR_Scroll)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_MysAura;
	
	description				=	NAME_SPL_MysAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysAura;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_MysAura;
};
instance ItSc_MysRoot (ItemPR_Scroll)
{
	visual 					=	"ItSc_IceCube.3ds";
	spell					= 	SPL_MysRoot;
	
	description				=	NAME_SPL_MysRoot;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysRoot;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_MysRoot;
	TEXT[3]					=	NAME_DamagePerSec;
//	COUNT[3]				=	SPL_Damage_MysRoot;
};
instance ItSc_MysTame (ItemPR_Scroll)
{
	visual 					=	"ItSc_Sleep.3ds";
	spell					= 	SPL_MysTame;
	
	description				=	NAME_SPL_MysTame;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysTame;
};
instance ItSc_MysEcho (ItemPR_Scroll)
{
	visual 					=	"ItSc_Sleep.3ds";
	spell					= 	SPL_MysEcho;
	
	description				=	NAME_SPL_MysEcho;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysEcho;
};
instance ItSc_MysSlow (ItemPR_Scroll)
{
	visual 					=	"ItSc_IceWave.3ds";
	spell					= 	SPL_MysSlow;
	
	description				=	NAME_SPL_MysSlow;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysSlow;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysSlow;
};
///*******************************************************************************************
instance ItSc_GeoStone (ItemPR_Scroll)
{
	value 					=	50;
	
	visual					=	"ItSc_FireBolt.3DS";
	spell					= 	SPL_GeoStone;
	cond_value[2]  			= 	SPL_Cost_GeoStone/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_GeoStone;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_GeoStone;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoStone;
	COUNT[5]				=	value;
};
instance ItSc_GeoAura (ItemPR_Scroll)
{
	value 					=	100;
	
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_GeoAura;
	cond_value[2]  			= 	SPL_Cost_GeoStone/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_GeoAura;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Ochrona przed broni¹ i pociskami:";
	COUNT[2]				=	SPL_Prot_GeoAura;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoAura;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_GeoAura;
	COUNT[5]				=	value;
};
instance ItSc_GeoElevate (ItemPR_Scroll)
{
	value 					=	150;
	
	visual 					=	"ItSc_IceCube.3ds";
	spell					= 	SPL_GeoElevate;
	cond_value[2]  			= 	SPL_Cost_GeoElevate/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_GeoElevate;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_GeoElevate;
	COUNT[5]				=	value;
};
instance ItSc_GeoGolem (ItemPR_Scroll)
{
	value 					=	200;
	
	visual 					=	"ItSc_SumGol.3ds";
	spell					= 	SPL_GeoGolem;
	cond_value[2]  			= 	SPL_Cost_GeoGolem/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_GeoGolem;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_ScalingPerPower;
	TEXT[3]					= 	NAME_Bonus_HpMax;
	COUNT[3]				= 	SPL_BonusHP_GeoGolem;
	TEXT[4]					= 	NAME_Bonus_Str;
	COUNT[4]				= 	SPL_BonusHP_GeoGolem;
	COUNT[5]				=	value;
};
instance ItSc_GeoQuake (ItemPR_Scroll)
{
	value 					=	250;
	
	visual 					=	"ItSc_IceWave.3ds";
	spell					= 	SPL_GeoQuake;
	cond_value[2]  			= 	SPL_Cost_GeoQuake/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_GeoQuake;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_GeoQuake;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoQuake;
	COUNT[5]				=	value;
};
instance ItSc_GeoCollapse (ItemPR_Scroll)
{
	value 					=	300;
	
	visual 					=	"ItRu_FireRain.3ds";
	spell					= 	SPL_GeoCollapse;
	cond_value[2]  			= 	SPL_Cost_GeoCollapse/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_GeoCollapse;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_GeoCollapse;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoCollapse;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_EleLance (ItemPR_Scroll)
{
	visual 					=	"ItSc_Water04.3ds";
	spell					= 	SPL_EleLance;

	description				=	NAME_SPL_EleLance;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_EleLance;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleLance;
};
instance ItSc_EleAura (ItemPR_Scroll)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_EleAura;

	description				=	NAME_SPL_EleAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleAura;
};
instance ItSc_EleFreeze (ItemPR_Scroll)
{
	visual 					=	"ItSc_IceCube.3ds";
	spell					= 	SPL_EleFreeze;

	description				=	NAME_SPL_EleFreeze;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleFreeze;
};
instance ItSc_EleHurricane (ItemPR_Scroll)
{
	visual 					=	"ItSc_Thunderball.3ds";
	spell					= 	SPL_EleHurricane;

	description				=	NAME_SPL_EleHurricane;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleHurricane;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleHurricane;
};
instance ItSc_EleLightning (ItemPR_Scroll)
{
	visual 					=	"ItSc_Water01.3ds";
	spell					= 	SPL_EleLightning;

	description				=	NAME_SPL_EleLightning;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleLightning;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleLightning;
};
instance ItSc_EleThunderstorm (ItemPR_Scroll)
{
	visual 					=	"ItSc_Water01.3ds";
	spell					= 	SPL_EleThunderstorm;

	description				=	NAME_SPL_EleThunderstorm;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleThunderstorm;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleThunderstorm;
};
///*******************************************************************************************
instance ItSc_PyrFireball (ItemPR_Scroll)
{
	visual 					=	"ItSc_InstantFireball.3ds";
	spell					= 	SPL_PyrFireball;

	description				=	NAME_SPL_PyrFireball;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_PyrFireball;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFireball;
};
instance ItSc_PyrAura (ItemPR_Scroll)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_PyrAura;

	description				=	NAME_SPL_PyrAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrAura;
};
instance ItSc_PyrBurning (ItemPR_Scroll)
{
	visual 					=	"ItSc_Firestorm.3ds";
	spell					= 	SPL_PyrBurning;

	description				=	NAME_SPL_PyrBurning;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrBurning;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrBurning;
};
instance ItSc_PyrFirebomb (ItemPR_Scroll)
{
	visual 					=	"ItSc_Pyrokinesis.3ds";
	spell					= 	SPL_PyrFirebomb;

	description				=	NAME_SPL_PyrFirebomb;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrFirebomb;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFirebomb;
};
instance ItSc_PyrExplosion (ItemPR_Scroll)
{
	visual 					=	"ItSc_Firestorm.3ds";
	spell					= 	SPL_PyrExplosion;

	description				=	NAME_SPL_PyrExplosion;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrExplosion;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrExplosion;
};
instance ItSc_PyrFirerain (ItemPR_Scroll)
{
	visual 					=	"ItSc_Firerain.3ds";
	spell					= 	SPL_PyrFirerain;

	description				=	NAME_SPL_PyrFirerain;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrFirerain;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFirerain;
};
///*******************************************************************************************
instance ItSc_NecLifesteal (ItemPR_Scroll)
{
	value 					=	50;
	
	visual					=	"ItSc_BreathOfDeath.3DS";
	spell					= 	SPL_NecLifesteal;
	cond_value[2]  			=	SPL_Cost_NecLifesteal/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NecLifesteal;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_NecLifesteal;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_NecLifesteal;
	TEXT[4]					=	"Z obliczonej wartoœci leczy o procent:";
	COUNT[4]				=	SPL_Heal_NecLifesteal;
	COUNT[5]				=	value;
};
instance ItSc_NecAura (ItemPR_Scroll)
{
	value 					=	100;
	
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_NecAura;
	cond_value[2]  			=	SPL_Cost_NecAura/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NecAura;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Ochrona przed magi¹ i ogniem:";
	COUNT[2]				=	SPL_Prot_NecAura;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_NecAura;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_NecAura;
	COUNT[5]				=	value;
};
instance ItSc_NecCurse (ItemPR_Scroll)
{
	value 					=	150;
	
	visual 					=	"ItSc_SumSkel.3ds";
	spell					= 	SPL_NecCurse;
	cond_value[2]  			=	SPL_Cost_NecCurse/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NecCurse;
	COUNT[1]				=	cond_value[2];
	//TEXT[2]					=	NAME_Duration;
	//COUNT[2]				=	SPL_Time_NecCurse;
	TEXT[2]					=	"Zabicie celu z na³o¿on¹ kl¹tw¹";
	TEXT[3]					=	"przyzywa szkielet, max:";
	COUNT[3]				=	SPL_Max_NecCurse;
	COUNT[5]				=	value;
};
instance ItSc_NecPlague (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_BreathOfDeath.3DS";
	spell					= 	SPL_NecPlague;
	cond_value[2]  			=	SPL_Cost_NecPlague/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NecPlague;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_NecPlague;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_NecPlague;
	COUNT[5]				=	value;
};
instance ItSc_NecDemon (ItemPR_Scroll)
{
	value 					=	250;
	
	visual 					=	"ItSc_SumDemon.3ds";
	spell					= 	SPL_NecDemon;
	cond_value[2]  			=	SPL_Cost_NecDemon/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NecDemon;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_ScalingPerPower;
	TEXT[3]					= 	NAME_Bonus_HpMax;
	COUNT[3]				= 	SPL_BonusHP_NecDemon;
	TEXT[4]					= 	NAME_Bonus_Str;
	COUNT[4]				= 	SPL_BonusHP_NecDemon;
	COUNT[5]				=	value;
};
instance ItSc_NecDeath (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_BreathOfDeath.3DS";
	spell					= 	SPL_NecDeath;
	cond_value[2]  			=	SPL_Cost_NecDeath/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NecDeath;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_NecDeath;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_NecDeath;
	TEXT[4]					= 	"Obra¿enia brakuj¹cego zdrowia (procent):";
	COUNT[4]				=	SPL_Percent_NecDeath;
	COUNT[5]				=	value;
};
