///*******************************************************************************************
prototype ItemPR_Spell (C_Item)
{
	name 					=	"Runa";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MISSION;
	
	material				=	MAT_STONE;
	cond_atr[2]   			=	ATR_MANA_MAX;
	
	TEXT[0]					=	NAME_Mag_Circle;
	TEXT[1]					=	NAME_Mana_needed;
	TEXT[5]					=	NAME_Value;
};
///*******************************************************************************************
/// standard spells
///*******************************************************************************************
instance ItRu_Light (ItemPR_Spell)
{
	value 					=	100;
	
	visual					=	"ItRu_Light.3DS";
	spell					= 	SPL_nLight;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_nLight;
	
	description				=	NAME_SPL_Light;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_nLight;
	COUNT[5]				=	value;
};
instance ItRu_Heal (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					= 	SPL_nHeal;
	mag_circle				=	2;
	cond_value[2]  			=	1;
	
	description				=	NAME_SPL_Heal;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_nHeal;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	PAL spells
///*******************************************************************************************
instance ItRu_PalBless (ItemPR_Spell)
{
	value 					=	250;
	
	visual					=	"ItRu_PalLight.3DS";
	spell					= 	SPL_PalBless;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_PalBless;
	
	description				=	NAME_SPL_PalBless;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Dodatkowe obra¿enia równe 10% max. many.";
	TEXT[3]					=	"U¿yj ponownie by wy³¹czyæ.";
	COUNT[5]				=	value;
};
instance ItRu_PalHeal (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_PalMediumHeal.3DS";
	spell					= 	SPL_PalHeal;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_PalHeal;
	
	description				=	NAME_SPL_PalHeal;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_PalHeal;
	COUNT[5]				=	value;
};
instance ItRu_PalHolyBolt (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_PalHolyBolt.3DS";
	spell					= 	SPL_PalHolyBolt;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_PalHolyBolt;
	
	description				=	NAME_SPL_PalHolyBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalHolyBolt;
	COUNT[5]				=	value;
};
instance ItRu_PalJustice (ItemPR_Spell)
{
	value 					=	1250;
	
	visual					=	"ItRu_PalFullHeal.3DS";
	spell					= 	SPL_PalJustice;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_PalJustice;
	
	description				=	NAME_SPL_PalJustice;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_PalDestroyEvil (ItemPR_Spell)
{
	value 					=	1250;
	
	visual					=	"ItRu_PalDestroyEvil.3DS";
	spell					= 	SPL_PalDestroyEvil;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_PalDestroyEvil;
	
	description				=	NAME_SPL_PalDestroyEvil;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalDestroyEvil;
	COUNT[5]				=	value;
};
///*******************************************************************************************
/// common spells
///*******************************************************************************************
instance ItRu_SlowTime (ItemPR_Spell)
{
	value 					=	1500;
	
	visual					=	"ItRu_Shrink.3ds";
	spell					= 	SPL_SlowTime;
	mag_circle				=	6;
	cond_value[2]  			=	SPL_Cost_SlowTime;
	
	description				=	NAME_SPL_SlowTime;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_SlowTime;
	COUNT[5]				=	value;
};
instance ItRu_NightToDay (ItemPR_Spell)
{
	value 					=	750;
	
	visual					=	"ItRu_Light.3ds";
	spell					= 	SPL_NightToDay;
	mag_circle				=	3;
	cond_value[2]  			=	SPL_Cost_NightToDay;
	
	description				=	NAME_SPL_NightToDay;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Telekinesis (ItemPR_Spell)
{
	value 					=	100;
	
	visual					=	"ItRu_LightHeal.3ds";
	spell					= 	SPL_Telekinesis;
	mag_circle				=	0;
	cond_value[2]  			=	SPL_Cost_Telekinesis;
	
	description				=	NAME_SPL_Telekinesis;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_FireBolt (ItemPR_Spell)
{
	value 					=	150;
	
	visual					=	"ItRu_FireBolt.3DS";
	spell					=	SPL_FireBolt;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_FireBolt;
	
	description				=	NAME_SPL_FireBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_FireBolt;
	COUNT[5]				=	value;
};
instance ItRu_IceBolt (ItemPR_Spell)
{
	value 					=	150;
	
	visual					=	"ItRu_IceBolt.3DS";
	spell					=	SPL_IceBolt;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_IceBolt;
	
	description				=	NAME_SPL_IceBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceBolt;
	COUNT[5]				=	value;
};
instance ItRu_Zap (ItemPR_Spell)
{
	value 					=	150;
	
	visual					=	"ItRu_Zap.3DS";
	spell					=	SPL_Zap;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_Zap;
	
	description				=	NAME_SPL_Zap;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Zap;
	COUNT[5]				=	value;
};
instance ItRu_Charm (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_Charm;
	mag_circle				=	2;
	cond_value[2]  			=	SPL_Cost_Charm;
	
	description				=	NAME_SPL_Charm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_WindFist (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_WindFist.3ds";
	spell					= 	SPL_WindFist;
	mag_circle 				=	2;
	cond_value[2]  			=	SPL_STEP_WindFist;
	
	description				=	NAME_SPL_WindFist;
	COUNT[0]				=	mag_circle;
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
instance ItRu_Sleep (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_Sleep;
	mag_circle 				=	2;
	cond_value[2]  			=	SPL_Cost_Sleep;
	
	description				=	NAME_SPL_Sleep;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItRu_MassSleep (ItemPR_Spell)
{
	value 					=	1250;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_MassSleep;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_MassSleep;
	
	description				=	NAME_SPL_MassSleep;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItRu_LightningFlash (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_LightningFlash.3DS";
	spell					=	SPL_LightningFlash;
	mag_circle				=	4;
	cond_value[2]  			=	SPL_Cost_LightningFlash;
	
	description				=	NAME_SPL_LightningFlash;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightningFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_ChargeFireball (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_ChargeFireball.3DS";
	spell					= 	SPL_ChargeFireball;
	mag_circle				= 	4;
	cond_value[2]  			=	SPL_STEP_ChargeFireball;
	
	description				=	NAME_SPL_ChargeFireball;
	COUNT[0]				=	mag_circle;
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
instance ItRu_Whirlwind (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_Water02.3DS";
	spell					= 	SPL_Whirlwind;
	mag_circle				=	2;
	cond_value[2]  			=	SPL_Cost_Whirlwind;
	
	description				=	NAME_SPL_Whirlwind;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_TIME_WHIRLWIND;
	COUNT[5]				=	value;
};
instance ItRu_Fear (ItemPR_Spell)
{
	value 					=	500;
	
	visual 					=	"ItRu_Fear.3ds";
	spell					= 	SPL_Fear;
	mag_circle 				=	2;
	cond_value[2]  			=	SPL_Cost_Fear;
	
	description				=	NAME_SPL_Fear;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Fear * 60;
	COUNT[5]				=	value;
};
instance ItRu_MassFear (ItemPR_Spell)
{
	value 					=	1250;
	
	visual 					=	"ItRu_Fear.3ds";
	spell					= 	SPL_MassFear;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_MassFear;
	
	description				=	NAME_SPL_MassFear;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Fear * 60;
	COUNT[5]				=	value;
};
instance ItRu_ChargeZap (ItemPR_Spell)
{
	value 					=	750;
	
	visual					=	"ItRu_Thunderball.3ds";
	spell					= 	SPL_ChargeZap;
	mag_circle 				=	3;
	cond_value[2]  			=	SPL_STEP_ChargeZap;
	
	description				=	NAME_SPL_ChargeZap;
	COUNT[0]				=	mag_circle;
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
instance ItRu_EarthQuake (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_BreathOfDeath.3DS";
	spell					=	SPL_EarthQuake;
	mag_circle				=	4;
	cond_value[2]  			=	SPL_Cost_EarthQuake;
	
	description				=	NAME_SPL_EarthQuake;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_EarthQuake;
	COUNT[5]				=	value;
};
instance ItRu_Geyser (ItemPR_Spell)
{
	value 					=	750;
	
	visual					=	"ItRu_Water01.3DS";
	spell					=	SPL_Geyser;
	mag_circle				=	3;
	cond_value[2]  			=	SPL_Cost_Geyser;
	
	description				=	NAME_SPL_Geyser;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Geyser;
	COUNT[5]				=	value;
};
instance ItRu_WaterFist (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_Water03.3DS";
	spell					=	SPL_WaterFist;
	mag_circle				=	4;
	cond_value[2]  			=	SPL_Cost_WaterFist;
	
	description				=	NAME_SPL_WaterFist;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_WaterFist;
	COUNT[5]				=	value;
};
instance ItRu_IceLance (ItemPR_Spell)
{
	value 					=	500;
	
	visual					=	"ItRu_Water04.3DS";
	spell					=	SPL_IceLance;
	mag_circle				=	2;
	cond_value[2]  			=	SPL_Cost_IceLance;
	
	description				=	NAME_SPL_IceLance;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceLance;
	COUNT[5]				=	value;
};
instance ItRu_IceWave (ItemPR_Spell)
{
	value 					=	1250;
	
	visual					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_IceWave;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_IceWave;
	
	description				=	NAME_SPL_IceWave;
	COUNT[0]				=	mag_circle;
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
instance ItRu_Inflate (ItemPR_Spell)
{
	value 					=	750;
	
	visual					=	"ItRu_Water01.3ds";
	spell					= 	SPL_Inflate;
	mag_circle 				=	3;
	cond_value[2]  			=	SPL_Cost_Inflate;
	
	description				=	NAME_SPL_Inflate;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Rage (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_Fear.3ds";
	spell					= 	SPL_Rage;
	mag_circle 				=	4;
	cond_value[2]  			=	SPL_Cost_Rage;
	
	description				=	NAME_SPL_Rage;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_MassRage (ItemPR_Spell)
{
	value 					=	1500;
	
	visual					=	"ItRu_Fear.3ds";
	spell					= 	SPL_MassRage;
	mag_circle 				=	6;
	cond_value[2]  			=	SPL_Cost_MassRage;
	
	description				=	NAME_SPL_MassRage;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_BreathOfDeath (ItemPR_Spell)
{
	value 					=	1500;
	
	visual					=	"ItRu_BreathOfDeath.3DS";
	spell					=	SPL_BreathOfDeath;
	mag_circle				=	6;
	cond_value[2]  			=	SPL_Cost_BreathOfDeath;
	
	description				=	NAME_SPL_BreathOfDeath;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BreathOfDeath;
	COUNT[5]				=	value;
};
instance ItRu_MassDeath (ItemPR_Spell)
{
	value 					=	1500;
	
	visual					=	"ItRu_MassDeath.3DS";
	spell					=	SPL_MassDeath;
	mag_circle				=	6;
	cond_value[2]  			=	SPL_Cost_MassDeath;
	
	description				=	NAME_SPL_MassDeath;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MassDeath;
	COUNT[5]				=	value;
};
instance ItRu_ArmyOfDarkness (ItemPR_Spell)
{
	value 					=	1500;
	
	visual					=	"ItRu_ArmyOfDarkness.3ds";
	spell					= 	SPL_ArmyOfDarkness;
	mag_circle 				=	6;
	cond_value[2]  			=	SPL_Cost_ArmyOfDarkness;
	
	description				=	NAME_SPL_ArmyOfDarkness;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Shrink (ItemPR_Spell)
{
	value 					=	1500;
	
	visual					=	"ItRu_Shrink.3ds";
	spell					= 	SPL_Shrink;
	mag_circle 				=	6;
	cond_value[2]  			=	SPL_Cost_Shrink;
	
	description				=	NAME_SPL_Shrink;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_PoisonBolt (ItemPR_Spell)
{
	value 					=	150;
	
	visual 					=	"ItRu_FireBolt.3ds";
	spell					= 	SPL_PoisonBolt;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_PoisonBolt;
	
	description				=	NAME_SPL_PoisonBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PoisonBolt;
	COUNT[5]				=	value;
};
instance ItRu_SkullBolt (ItemPR_Spell)
{
	value 					=	200;
	
	visual 					=	"ItRu_Beliar02.3ds";
	spell					= 	SPL_SkullBolt;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_SkullBolt;
	
	description				=	NAME_SPL_SkullBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SkullBolt;
	COUNT[5]				=	value;
};
instance ItRu_BloodFireball (ItemPR_Spell)
{
	value 					=	250;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_BloodFireball;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_BloodFireball;
	
	description				=	NAME_SPL_BloodFireball;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BloodFireball;
	COUNT[5]				=	value;
};
instance ItRu_DragonBall (ItemPR_Spell)
{
	value 					=	1000;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_DragonBall;
	mag_circle 				=	4;
	cond_value[2]  			=	SPL_Cost_DragonBall;
	
	description				=	NAME_SPL_DragonBall;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DragonBall;
	COUNT[5]				=	value;
};
instance ItRu_BlackDragonBall (ItemPR_Spell)
{
	value 					=	1250;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_BlackDragonBall;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_BlackDragonBall;
	
	description				=	NAME_SPL_BlackDragonBall;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BlackDragonBall;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	special spells
///*******************************************************************************************
instance ItRu_Teleport (ItemPR_Spell)
{
	visual					=	"ItMi_StoneOfTeleport.3ds";
	spell					= 	SPL_Teleport;
	description				=	NAME_SPL_Teleport;
};
instance ItRu_Transform (ItemPR_Spell)
{
	visual 					=	"ItMi_StoneOfTransform.3ds";
	spell					= 	SPL_Transform;
	description				=	NAME_SPL_Transform;
};
instance ItRu_Summon (ItemPR_Spell)
{
	visual 					=	"ItMi_StoneOfSummon.3ds";
	spell					= 	SPL_Summon;
	description				=	NAME_SPL_Summon;
};
///*******************************************************************************************
instance ItRu_MasterOfDisaster (ItemPR_Spell)
{
	value 					=	1250;
	
	visual 					=	"ItRu_MasterOfDesaster.3ds";
	spell					= 	SPL_MasterOfDisaster;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_MasterOfDisaster;
	
	description				=	NAME_SPL_MasterOfDisaster;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MasterOfDisaster;
	COUNT[5]				=	value;
};
instance ItRu_BeliarRage (ItemPR_Spell)
{
	value 					=	200;
	
	visual 					=	"ItRu_Beliar02.3ds";
	spell					= 	SPL_BeliarRage;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_BeliarRage;
	
	description				=	NAME_SPL_BeliarRage;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	SPL_Cost_BeliarRage+(BeliarWeapon_LastUpgradeLvl*1);
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BeliarRage+(BeliarWeapon_LastUpgradeLvl*5);
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	npc spells
///*******************************************************************************************
instance ItRu_ConcussionBolt (ItemPR_Spell)
{
	visual 					=	"ItRu_PalRepelEvil.3ds";
	spell					= 	SPL_ConcussionBolt;
	description				=	NAME_SPL_ConcussionBolt;
};
instance ItRu_DeathBolt (ItemPR_Spell)
{
	visual 					=	"ItRu_PalRepelEvil.3ds";
	spell					= 	SPL_DeathBolt;
	description				=	NAME_SPL_DeathBolt;
};
///*******************************************************************************************
///	MYS & GEO & ELE & PYR & NEC spells
///*******************************************************************************************
instance ItRu_MysBolt (ItemPR_Spell)
{
	visual 					=	"ItRu_FireBolt.3ds";
	spell					= 	SPL_MysBolt;
	
	description				=	NAME_SPL_MysBolt;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysBolt;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysBolt;
	TEXT[3]					=	NAME_Bonus_HP;
//	COUNT[3]				=	SPL_Heal_MysBolt;
};
instance ItRu_MysProtection (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_MysProtection;
	
	description				=	NAME_SPL_MysProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysProtection;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_MysProtection;
};
instance ItRu_MysRoot (ItemPR_Spell)
{
	visual 					=	"ItRu_IceCube.3ds";
	spell					= 	SPL_MysRoot;
	
	description				=	NAME_SPL_MysRoot;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysRoot;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_MysRoot;
	TEXT[3]					=	NAME_DamagePerSec;
//	COUNT[3]				=	SPL_Damage_MysRoot;
};
instance ItRu_MysTame (ItemPR_Spell)
{
	visual 					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_MysTame;
	
	description				=	NAME_SPL_MysTame;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysTame;
};
instance ItRu_MysAura (ItemPR_Spell)
{
	visual 					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_MysAura;
	
	description				=	NAME_SPL_MysAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysAura;
};
instance ItRu_MysEchoes (ItemPR_Spell)
{
	visual 					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_MysEchoes;
	
	description				=	NAME_SPL_MysEchoes;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysEchoes;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysEchoes;
};
///*******************************************************************************************
instance ItRu_GeoStone (ItemPR_Spell)
{
	visual 					=	"ItRu_FireBolt.3ds";
	spell					= 	SPL_GeoStone;
	
	description				=	NAME_SPL_GeoStone;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoStone;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_GeoStone;
};
instance ItRu_GeoProtection (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_GeoProtection;
	
	description				=	NAME_SPL_GeoProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoProtection;
	TEXT[2]					=	NAME_ManaPerSec;
//	COUNT[2]				=	SPL_Time_GeoProtection;
	TEXT[3]					=	NAME_Prot_Physical;
//	COUNT[3]				=	SPL_Prot_GeoProtection;
};
instance ItRu_GeoElevate (ItemPR_Spell)
{
	visual 					=	"ItRu_IceCube.3ds";
	spell					= 	SPL_GeoElevate;
	
	description				=	NAME_SPL_GeoElevate;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoElevate;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_GeoElevate;
};
instance ItRu_GeoGolem (ItemPR_Spell)
{
	visual 					=	"ItRu_SumGol.3ds";
	spell					= 	SPL_GeoGolem;
	
	description				=	NAME_SPL_GeoGolem;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoGolem;
};
instance ItRu_GeoExplosion (ItemPR_Spell)
{
	visual 					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_GeoExplosion;
	
	description				=	NAME_SPL_GeoExplosion;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoExplosion;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_GeoExplosion;
};
instance ItRu_GeoWall (ItemPR_Spell)
{
	visual 					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_GeoWall;
	
	description				=	NAME_SPL_GeoWall;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_GeoWall;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_GeoWall;
};
///*******************************************************************************************
instance ItRu_EleLightning (ItemPR_Spell)
{
	visual 					=	"ItRu_Water04.3ds";
	spell					= 	SPL_EleLightning;

	description				=	NAME_SPL_EleLightning;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_EleLightning;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleLightning;
};
instance ItRu_EleProtection (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_EleProtection;

	description				=	NAME_SPL_EleProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleProtection;
};
instance ItRu_EleFreeze (ItemPR_Spell)
{
	visual 					=	"ItRu_IceCube.3ds";
	spell					= 	SPL_EleFreeze;

	description				=	NAME_SPL_EleFreeze;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleFreeze;
};
instance ItRu_EleHurricane (ItemPR_Spell)
{
	visual 					=	"ItRu_Thunderball.3ds";
	spell					= 	SPL_EleHurricane;

	description				=	NAME_SPL_EleHurricane;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleHurricane;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleHurricane;
};
instance ItRu_EleKinesis (ItemPR_Spell)
{
	visual 					=	"ItRu_Water01.3ds";
	spell					= 	SPL_EleKinesis;

	description				=	NAME_SPL_EleKinesis;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleKinesis;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleKinesis;
};
instance ItRu_EleThunderstorm (ItemPR_Spell)
{
	visual 					=	"ItRu_Water01.3ds";
	spell					= 	SPL_EleThunderstorm;

	description				=	NAME_SPL_EleThunderstorm;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleThunderstorm;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleThunderstorm;
};
///*******************************************************************************************
instance ItRu_PyrFireball (ItemPR_Spell)
{
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_PyrFireball;

	description				=	NAME_SPL_PyrFireball;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_PyrFireball;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFireball;
};
instance ItRu_PyrProtection (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_PyrProtection;

	description				=	NAME_SPL_PyrProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrProtection;
};
instance ItRu_PyrFirestorm (ItemPR_Spell)
{
	visual 					=	"ItRu_Firestorm.3ds";
	spell					= 	SPL_PyrFirestorm;

	description				=	NAME_SPL_PyrFirestorm;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrFirestorm;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFirestorm;
};
instance ItRu_PyrKinesis (ItemPR_Spell)
{
	visual 					=	"ItRu_Pyrokinesis.3ds";
	spell					= 	SPL_PyrKinesis;

	description				=	NAME_SPL_PyrKinesis;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrKinesis;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrKinesis;
};
instance ItRu_PyrExplosion (ItemPR_Spell)
{
	visual 					=	"ItRu_Firestorm.3ds";
	spell					= 	SPL_PyrExplosion;

	description				=	NAME_SPL_PyrExplosion;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrExplosion;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrExplosion;
};
instance ItRu_PyrFirerain (ItemPR_Spell)
{
	visual 					=	"ItRu_Firerain.3ds";
	spell					= 	SPL_PyrFirerain;

	description				=	NAME_SPL_PyrFirerain;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrFirerain;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFirerain;
};
///*******************************************************************************************
instance ItRu_NecLifesteal (ItemPR_Spell)
{
	visual 					=	"ItRu_Beliar04.3ds";
	spell					= 	SPL_NecLifesteal;

	description				=	NAME_SPL_NecLifesteal;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_NecLifesteal;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_NecLifesteal;
};
instance ItRu_NecProtection (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_NecProtection;

	description				=	NAME_SPL_NecProtection;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecProtection;
};
instance ItRu_NecSkeleton (ItemPR_Spell)
{
	visual 					=	"ItRu_SumSkel.3ds";
	spell					= 	SPL_NecSkeleton;

	description				=	NAME_SPL_NecSkeleton;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecSkeleton;
};
instance ItRu_NecSwarm (ItemPR_Spell)
{
	visual 					=	"ItRu_Beliar02.3ds";
	spell					= 	SPL_NecSwarm;

	description				=	NAME_SPL_NecSwarm;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecSwarm;
};
instance ItRu_NecDemon (ItemPR_Spell)
{
	visual 					=	"ItRu_SumDemon.3ds";
	spell					= 	SPL_NecDemon;

	description				=	NAME_SPL_NecDemon;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecDemon;
};
instance ItRu_NecDeath (ItemPR_Spell)
{
	visual 					=	"ItRu_Beliar02.3ds";
	spell					= 	SPL_NecDeath;

	description				=	NAME_SPL_NecDeath;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_NecDeath;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_NecDeath;
};
///*******************************************************************************************
///	... spells
///*******************************************************************************************
instance ItRu_cB_Fireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3DS";
	spell					= 	SPL_cB_Fireball;
	description				=	NAME_SPL_cB_Fireball;
};
instance ItRu_cR_Fireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3DS";
	spell					= 	SPL_cR_Fireball;
	description				=	NAME_SPL_cR_Fireball;
};
instance ItRu_cG_Fireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3DS";
	spell					= 	SPL_cG_Fireball;
	description				=	NAME_SPL_cG_Fireball;
};
instance ItRu_cY_Fireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3DS";
	spell					= 	SPL_cY_Fireball;
	description				=	NAME_SPL_cY_Fireball;
};
instance ItRu_cP_Fireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3DS";
	spell					= 	SPL_cP_Fireball;
	description				=	NAME_SPL_cP_Fireball;
};
