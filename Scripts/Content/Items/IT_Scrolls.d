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
///	standard spells
///*******************************************************************************************
instance ItSc_Light (ItemPR_Scroll)
{
	value 					=	20;
	
	visual					=	"ItSc_Light.3DS";
	spell					= 	SPL_nLight;
	cond_value[2]  			=	SPL_Cost_nLight/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Light;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_nLight;
	COUNT[5]				=	value;
};
instance ItSc_LightHeal (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					= 	SPL_nHeal;
	cond_value[2]  			=	SPL_Cost_nHeal/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Heal;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_nHeal;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	PAL spells
///*******************************************************************************************
instance ItSc_PalBless (ItemPR_Scroll)
{
	value 					=	50;
	
	visual					=	"ItSc_PalLight.3DS";
	spell					=	SPL_PalBless;
	cond_value[2]  			=	SPL_Cost_PalBless/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalBless;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Dodatkowe obra¿enia równe 10% max. many.";
	TEXT[3]					=	"U¿yj ponownie by wy³¹czyæ.";
	COUNT[5]				=	value;
};
instance ItSc_PalHeal (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_PalMediumHeal.3DS";
	spell					=	SPL_PalHeal;
	cond_value[2]  			=	SPL_Cost_PalHeal/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalHeal;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_PalHeal;
	COUNT[5]				=	value;
};
instance ItSc_PalHolyBolt (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_PalHolyBolt.3DS";
	spell					=	SPL_PalHolyBolt;
	cond_value[2]  			=	SPL_Cost_PalHolyBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalHolyBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalHolyBolt;
	COUNT[5]				=	value;
};
instance ItSc_PalJustice (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_PalFullHeal.3DS";
	spell					=	SPL_PalJustice;
	cond_value[2]  			=	SPL_Cost_PalJustice/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PalJustice;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_PalDestroyEvil (ItemPR_Scroll)
{
	value					=	250;
	
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
///	common spells
///*******************************************************************************************
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
instance ItSc_NightToDay (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Light.3DS";
	spell					= 	SPL_NightToDay;
	cond_value[2]  			=	SPL_Cost_NightToDay/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_NightToDay;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Telekinesis (ItemPR_Scroll)
{
	value 					=	20;
	
	visual					=	"ItSc_LightHeal.3DS";
	spell					= 	SPL_Telekinesis;
	cond_value[2]  			=	SPL_Cost_Telekinesis/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Telekinesis;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
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
	COUNT[5]				=	value;
};
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
	COUNT[5]				=	value;
};
instance ItSc_Zap (ItemPR_Scroll)
{
	value 					=	30;
	
	visual					=	"ItSc_Zap.3DS";
	spell					= 	SPL_Zap;
	cond_value[2]  			= 	SPL_Cost_Zap/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Zap;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Zap;
	COUNT[5]				=	value;
};
instance ItSc_Charm (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					= 	SPL_Charm;
	cond_value[2]  			=	SPL_Cost_Charm/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Charm;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_WindFist (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_WindFist.3DS";
	spell					= 	SPL_WindFist;
	cond_value[2]  			= 	SPL_STEP_WindFist/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_WindFist;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	SPL_Cost_WindFist;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_WindFist;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_WindFist*4;
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
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItSc_MassSleep (ItemPR_Scroll)
{
	value 					=	250;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					= 	SPL_Sleep;
	cond_value[2]  			=	SPL_Cost_MassSleep/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_MassSleep;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItSc_LightningFlash (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_LightningFlash.3DS";
	spell					= 	SPL_LightningFlash;
	cond_value[2]  			= 	SPL_Cost_LightningFlash/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_LightningFlash;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightningFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_ChargeFireball (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_ChargeFireball.3DS";
	spell					= 	SPL_ChargeFireball;
	cond_value[2]  			= 	SPL_STEP_ChargeFireball/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_ChargeFireball;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	SPL_Cost_ChargeFireball;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeFireball;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_ChargeFireball*4;
	COUNT[5]				=	value;
};
instance ItSc_Whirlwind (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_Water02.3DS";
	spell					= 	SPL_Whirlwind;
	cond_value[2]  			= 	SPL_Cost_Whirlwind/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Whirlwind;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_TIME_WHIRLWIND;
	COUNT[5]				=	value;
};
instance ItSc_Fear (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_Fear.3DS";
	spell					= 	SPL_Fear;
	cond_value[2]  			= 	SPL_Cost_Fear/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Fear;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Fear * 60;
	COUNT[5]				=	value;
};
instance ItSc_MassFear (ItemPR_Scroll)
{
	value 					=	250;
	
	visual					=	"ItSc_Fear.3DS";
	spell					= 	SPL_MassFear;
	cond_value[2]  			= 	SPL_Cost_MassFear/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_MassFear;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Fear * 60;
	COUNT[5]				=	value;
};
instance ItSc_ChargeZap (ItemPR_Scroll)
{
	value 					=	150;
	
	visual					=	"ItSc_Thunderball.3DS";
	spell					= 	SPL_ChargeZap;
	cond_value[2]  			= 	SPL_STEP_ChargeZap/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_ChargeZap;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	SPL_Cost_ChargeZap;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeZap;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_ChargeZap*4;
	COUNT[5]				=	value;
};
instance ItSc_EarthQuake (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_BreathOfDeath.3DS";
	spell					= 	SPL_EarthQuake;
	cond_value[2]  			= 	SPL_Cost_EarthQuake/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_EarthQuake;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_EarthQuake;
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
	COUNT[5]				=	value;
};
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
	COUNT[5]				=	value;
};
instance ItSc_IceLance (ItemPR_Scroll)
{
	value 					=	100;
	
	visual					=	"ItSc_Water04.3DS";
	spell					= 	SPL_IceLance;
	cond_value[2]  			= 	SPL_Cost_IceLance/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_IceLance;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceLance;
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
	COUNT[2]				=	60;
	TEXT[3]					=	NAME_Duration;
	COUNT[3]				=	SPL_TIME_FREEZE;
	TEXT[4]					=	NAME_DamagePerSec;
	COUNT[4]				=	SPL_FREEZE_DAMAGE;
	COUNT[5]				=	value;
};
///*******************************************************************************************
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
instance ItSc_Rage (ItemPR_Scroll)
{
	value 					=	200;
	
	visual					=	"ItSc_Fear.3DS";
	spell					= 	SPL_Rage;
	cond_value[2]  			= 	SPL_Cost_Rage/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_Rage;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_MassRage (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_Fear.3DS";
	spell					= 	SPL_MassRage;
	cond_value[2]  			= 	SPL_Cost_MassRage/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_MassRage;
	COUNT[1]				=	cond_value[2];
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
	COUNT[5]				=	value;
};
instance ItSc_ArmyOfDarkness (ItemPR_Scroll)
{
	value 					=	300;
	
	visual					=	"ItSc_ArmyOfDarkness.3DS";
	spell					= 	SPL_ArmyOfDarkness;
	cond_value[2]			=	SPL_Cost_ArmyOfDarkness/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_ArmyOfDarkness;
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
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_PoisonBolt (ItemPR_Scroll)
{
	value 					=	30;
	
	visual					=	"ItSc_FireBolt.3DS";
	spell					= 	SPL_PoisonBolt;
	cond_value[2]  			= 	SPL_Cost_PoisonBolt/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_PoisonBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PoisonBolt;
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
	COUNT[5]				=	value;
};
instance ItSc_BloodFireball (ItemPR_Scroll)
{
	value 					=	50;
	
	visual					=	"ItSc_InstantFireball.3DS";
	spell					= 	SPL_BloodFireball;
	cond_value[2]  			= 	SPL_Cost_BloodFireball/SPL_Cost_Scroll;
	
	description				=	NAME_SPL_BloodFireball;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BloodFireball;
	COUNT[5]				=	value;
};
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
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	MYS & GEO & ELE & PYR & NEC spells
///*******************************************************************************************
instance ItSc_MysBolt (ItemPR_Spell)
{
	visual 					=	"ItSc_FireBolt.3ds";
	spell					= 	SPL_MysBolt;
	
	description				=	NAME_SPL_MysBolt;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysBolt;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysBolt;
	TEXT[3]					=	NAME_Bonus_HP;
//	COUNT[3]				=	SPL_Heal_MysBolt;
};
instance ItSc_MysProtection (ItemPR_Spell)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_MysProtection;
	
	description				=	NAME_SPL_MysProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysProtection;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_MysProtection;
};
instance ItSc_MysRoot (ItemPR_Spell)
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
instance ItSc_MysTame (ItemPR_Spell)
{
	visual 					=	"ItSc_Sleep.3ds";
	spell					= 	SPL_MysTame;
	
	description				=	NAME_SPL_MysTame;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysTame;
};
instance ItSc_MysAura (ItemPR_Spell)
{
	visual 					=	"ItSc_Sleep.3ds";
	spell					= 	SPL_MysAura;
	
	description				=	NAME_SPL_MysAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysAura;
};
instance ItSc_MysEchoes (ItemPR_Spell)
{
	visual 					=	"ItSc_IceWave.3ds";
	spell					= 	SPL_MysEchoes;
	
	description				=	NAME_SPL_MysEchoes;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysEchoes;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysEchoes;
};
///*******************************************************************************************
instance ItSc_GeoStone (ItemPR_Spell)
{
	visual 					=	"ItSc_FireBolt.3ds";
	spell					= 	SPL_GeoStone;
	
	description				=	NAME_SPL_GeoStone;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoStone;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_GeoStone;
};
instance ItSc_GeoProtection (ItemPR_Spell)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_GeoProtection;
	
	description				=	NAME_SPL_GeoProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoProtection;
	TEXT[2]					=	NAME_ManaPerSec;
//	COUNT[2]				=	SPL_Time_GeoProtection;
	TEXT[3]					=	NAME_Prot_Physical;
//	COUNT[3]				=	SPL_Prot_GeoProtection;
};
instance ItSc_GeoElevate (ItemPR_Spell)
{
	visual 					=	"ItSc_IceCube.3ds";
	spell					= 	SPL_GeoElevate;
	
	description				=	NAME_SPL_GeoElevate;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoElevate;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_GeoElevate;
};
instance ItSc_GeoGolem (ItemPR_Spell)
{
	visual 					=	"ItSc_SumGol.3ds";
	spell					= 	SPL_GeoGolem;
	
	description				=	NAME_SPL_GeoGolem;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoGolem;
};
instance ItSc_GeoExplosion (ItemPR_Spell)
{
	visual 					=	"ItSc_IceWave.3ds";
	spell					= 	SPL_GeoExplosion;
	
	description				=	NAME_SPL_GeoExplosion;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoExplosion;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_GeoExplosion;
};
instance ItSc_GeoWall (ItemPR_Spell)
{
	visual 					=	"ItSc_IceWave.3ds";
	spell					= 	SPL_GeoWall;
	
	description				=	NAME_SPL_GeoWall;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoWall;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_GeoWall;
};
///*******************************************************************************************
instance ItSc_EleLightning (ItemPR_Spell)
{
	visual 					=	"ItSc_Water04.3ds";
	spell					= 	SPL_EleLightning;

	description				=	NAME_SPL_EleLightning;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_EleLightning;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleLightning;
};
instance ItSc_EleProtection (ItemPR_Spell)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_EleProtection;

	description				=	NAME_SPL_EleProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleProtection;
};
instance ItSc_EleFreeze (ItemPR_Spell)
{
	visual 					=	"ItSc_IceCube.3ds";
	spell					= 	SPL_EleFreeze;

	description				=	NAME_SPL_EleFreeze;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleFreeze;
};
instance ItSc_EleHurricane (ItemPR_Spell)
{
	visual 					=	"ItSc_Thunderball.3ds";
	spell					= 	SPL_EleHurricane;

	description				=	NAME_SPL_EleHurricane;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleHurricane;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleHurricane;
};
instance ItSc_EleKinesis (ItemPR_Spell)
{
	visual 					=	"ItSc_Water01.3ds";
	spell					= 	SPL_EleKinesis;

	description				=	NAME_SPL_EleKinesis;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleKinesis;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleKinesis;
};
instance ItSc_EleThunderstorm (ItemPR_Spell)
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
instance ItSc_PyrFireball (ItemPR_Spell)
{
	visual 					=	"ItSc_InstantFireball.3ds";
	spell					= 	SPL_PyrFireball;

	description				=	NAME_SPL_PyrFireball;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_PyrFireball;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFireball;
};
instance ItSc_PyrProtection (ItemPR_Spell)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_PyrProtection;

	description				=	NAME_SPL_PyrProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrProtection;
};
instance ItSc_PyrFirestorm (ItemPR_Spell)
{
	visual 					=	"ItSc_Firestorm.3ds";
	spell					= 	SPL_PyrFirestorm;

	description				=	NAME_SPL_PyrFirestorm;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrFirestorm;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFirestorm;
};
instance ItSc_PyrKinesis (ItemPR_Spell)
{
	visual 					=	"ItSc_Pyrokinesis.3ds";
	spell					= 	SPL_PyrKinesis;

	description				=	NAME_SPL_PyrKinesis;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrKinesis;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrKinesis;
};
instance ItSc_PyrExplosion (ItemPR_Spell)
{
	visual 					=	"ItSc_Firestorm.3ds";
	spell					= 	SPL_PyrExplosion;

	description				=	NAME_SPL_PyrExplosion;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrExplosion;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrExplosion;
};
instance ItSc_PyrFirerain (ItemPR_Spell)
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
instance ItSc_NecLifesteal (ItemPR_Spell)
{
	visual 					=	"ItSc_Beliar04.3ds";
	spell					= 	SPL_NecLifesteal;

	description				=	NAME_SPL_NecLifesteal;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_NecLifesteal;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_NecLifesteal;
};
instance ItSc_NecProtection (ItemPR_Spell)
{
	visual 					=	"ItSc_MediumHeal.3ds";
	spell					= 	SPL_NecProtection;

	description				=	NAME_SPL_NecProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecProtection;
};
instance ItSc_NecSkeleton (ItemPR_Spell)
{
	visual 					=	"ItSc_SumSkel.3ds";
	spell					= 	SPL_NecSkeleton;

	description				=	NAME_SPL_NecSkeleton;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecSkeleton;
};
instance ItSc_NecSwarm (ItemPR_Spell)
{
	visual 					=	"ItSc_Beliar02.3ds";
	spell					= 	SPL_NecSwarm;

	description				=	NAME_SPL_NecSwarm;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecSwarm;
};
instance ItSc_NecDemon (ItemPR_Spell)
{
	visual 					=	"ItSc_SumDemon.3ds";
	spell					= 	SPL_NecDemon;

	description				=	NAME_SPL_NecDemon;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecDemon;
};
instance ItSc_NecDeath (ItemPR_Spell)
{
	visual 					=	"ItSc_Beliar02.3ds";
	spell					= 	SPL_NecDeath;

	description				=	NAME_SPL_NecDeath;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecDeath;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_NecDeath;
};
