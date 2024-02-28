///*******************************************************************************************
prototype ItemPR_Spell (C_Item)
{
	name 					=	"Runa";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MISSION;
	
	material				=	MAT_STONE;
	cond_atr[2]   			=	ATR_MANA_MAX;
	
	TEXT[0]					=	NAME_Mag_Circle;
	TEXT[1]					=	NAME_Manakosten;
	TEXT[5]					=	NAME_Value;
};
///*******************************************************************************************
/// Basic spells
///*******************************************************************************************
instance ItRu_Light (ItemPR_Spell)
{
	value 					=	120;
	
	visual					=	"ItRu_Light.3DS";
	spell					= 	SPL_Light;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_Light;
	
	description				=	NAME_SPL_Light;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Light;
	COUNT[5]				=	value;
};
instance ItRu_Heal (ItemPR_Spell)
{
	value 					=	300;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					= 	SPL_Heal;
	mag_circle				=	2;
	cond_value[2]  			=	1;
	
	description				=	NAME_SPL_Heal;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	SPL_Cost_Heal;
	TEXT[2]					= 	NAME_HealingPerCast;
	COUNT[2]				=	SPL_Heal_Heal;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Heal;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	PAL spells
///*******************************************************************************************
instance ItRu_PalBless (ItemPR_Spell)
{
	value 					=	220;
	
	visual					=	"ItRu_PalLight.3DS";
	spell					= 	SPL_PalBless;
	cond_value[2]  			=	SPL_Cost_PalBless;
	
	description				=	NAME_SPL_PalBless;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Dodatkowe obra¿enia równe 10% max. many.";
	TEXT[3]					=	"U¿yj ponownie by wy³¹czyæ.";
	COUNT[5]				=	value;
};
instance ItRu_PalFaith (ItemPR_Spell)
{
	value 					=	440;
	
	visual					=	"ItRu_PalLightHeal.3DS";
	spell					= 	SPL_PalFaith;
	cond_value[2]  			=	SPL_Cost_PalFaith;
	
	description				=	NAME_SPL_PalFaith;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_PalFaith;
	COUNT[5]				=	value;
};
instance ItRu_PalHolyBolt (ItemPR_Spell)
{
	value 					=	440;
	
	visual					=	"ItRu_PalHolyBolt.3DS";
	spell					= 	SPL_PalHolyBolt;
	cond_value[2]  			=	SPL_Cost_PalHolyBolt;
	
	description				=	NAME_SPL_PalHolyBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalHolyBolt;
	COUNT[5]				=	value;
};
instance ItRu_PalGlory (ItemPR_Spell)
{
	value 					=	660;
	
	visual					=	"ItRu_PalMediumHeal.3DS";
	spell					= 	SPL_PalGlory;
	cond_value[2]  			=	SPL_Cost_PalGlory;
	
	description				=	NAME_SPL_PalGlory;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MaxManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_Bonus_HP;
	COUNT[2]				=	SPL_Heal_PalGlory;
	COUNT[5]				=	value;
};
instance ItRu_PalRepelEvil (ItemPR_Spell)
{
	value 					=	660;
	
	visual					=	"ItRu_PalRepelEvil.3DS";
	spell					= 	SPL_PalRepelEvil;
	cond_value[2]  			=	SPL_Cost_PalRepelEvil;
	
	description				=	NAME_SPL_PalRepelEvil;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalRepelEvil;
	COUNT[5]				=	value;
};
instance ItRu_PalJustice (ItemPR_Spell)
{
	value 					=	880;
	
	visual					=	"ItRu_PalFullHeal.3DS";
	spell					= 	SPL_PalJustice;
	cond_value[2]  			=	SPL_Cost_PalJustice;
	
	description				=	NAME_SPL_PalJustice;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_PalDestroyEvil (ItemPR_Spell)
{
	value 					=	880;
	
	visual					=	"ItRu_PalDestroyEvil.3DS";
	spell					= 	SPL_PalDestroyEvil;
	cond_value[2]  			=	SPL_Cost_PalDestroyEvil;
	
	description				=	NAME_SPL_PalDestroyEvil;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalDestroyEvil;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	Common spells
///*******************************************************************************************
instance ItRu_NightToDay (ItemPR_Spell)
{
	value 					=	300;
	
	visual					=	"ItRu_Light.3ds";
	spell					= 	SPL_NightToDay;
	mag_circle				=	2;
	cond_value[2]  			=	SPL_Cost_NightToDay;
	
	description				=	NAME_SPL_NightToDay;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_FireBolt (ItemPR_Spell)
{
	value 					=	120;
	
	visual					=	"ItRu_FireBolt.3DS";
	spell					=	SPL_FireBolt;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_FireBolt;
	
	description				=	NAME_SPL_FireBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_FireBolt;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_FireBolt;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_IceBolt (ItemPR_Spell)
{
	value 					=	120;
	
	visual					=	"ItRu_IceBolt.3DS";
	spell					=	SPL_IceBolt;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_IceBolt;
	
	description				=	NAME_SPL_IceBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceBolt;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_IceBolt;
	COUNT[5]				=	value;
};
instance ItRu_IceLance (ItemPR_Spell)
{
	value 					=	300;
	
	visual					=	"ItRu_Water04.3DS";
	spell					=	SPL_IceLance;
	mag_circle				=	2;
	cond_value[2]  			=	SPL_Cost_IceLance;
	
	description				=	NAME_SPL_IceLance;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceLance;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_IceLance;
	COUNT[5]				=	value;
};
instance ItRu_SkullBolt (ItemPR_Spell)
{
	value 					=	160;
	
	visual 					=	"ItRu_SumSkel.3ds";
	spell					= 	SPL_SkullBolt;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_SkullBolt;
	
	description				=	NAME_SPL_SkullBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SkullBolt;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_SkullBolt;
	COUNT[5]				=	value;
};
instance ItRu_InstantFireball (ItemPR_Spell)
{
	value 					=	300;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_InstantFireball;
	mag_circle 				=	2;
	cond_value[2]  			=	SPL_Cost_InstantFireball;
	
	description				=	NAME_SPL_InstantFireball;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_InstantFireball;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_InstantFireball;
	COUNT[5]				=	value;
};
instance ItRu_Zap (ItemPR_Spell)
{
	value 					=	160;
	
	visual 					=	"ItRu_Zap.3ds";
	spell					= 	SPL_Zap;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_Zap;
	
	description				=	NAME_SPL_Zap;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Zap;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Zap;
	COUNT[5]				=	value;
};
instance ItRu_Whirlwind (ItemPR_Spell)
{
	value 					=	300;
	
	visual					=	"ItRu_Water02.3DS";
	spell					= 	SPL_Whirlwind;
	mag_circle				=	2;
	cond_value[2]  			=	SPL_Cost_Whirlwind;
	
	description				=	NAME_SPL_Whirlwind;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Whirlwind;
	COUNT[5]				=	value;
};
instance ItRu_WindFist (ItemPR_Spell)
{
	value 					=	400;
	
	visual					=	"ItRu_WindFist.3ds";
	spell					= 	SPL_WindFist;
	mag_circle 				=	2;
	cond_value[2]  			=	SPL_Cost_WindFist;
	
	description				=	NAME_SPL_WindFist;
	COUNT[0]				=	mag_circle;
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
instance ItRu_Sleep (ItemPR_Spell)
{
	value 					=	400;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_Sleep;
	mag_circle 				=	2;
	cond_value[2]  			=	SPL_Cost_Sleep;
	
	description				=	NAME_SPL_Sleep;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Sleep;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Sleep;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItRu_Charm (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_Charm;
	mag_circle				=	3;
	cond_value[2]  			=	SPL_Cost_Charm;
	
	description				=	NAME_SPL_Charm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Charm;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Charm;
	COUNT[5]				=	value;
};
instance ItRu_LightningFlash (ItemPR_Spell)
{
	value 					=	700;
	
	visual					=	"ItRu_LightningFlash.3DS";
	spell					=	SPL_LightningFlash;
	mag_circle				=	4;
	cond_value[2]  			=	SPL_Cost_LightningFlash;
	
	description				=	NAME_SPL_LightningFlash;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightningFlash;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_LightningFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_ChargeFireball (ItemPR_Spell)
{
	value 					=	800;
	
	visual					=	"ItRu_ChargeFireball.3DS";
	spell					= 	SPL_ChargeFireball;
	mag_circle				= 	4;
	cond_value[2]  			=	SPL_Cost_ChargeFireball;
	
	description				=	NAME_SPL_ChargeFireball;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeFireball;
	TEXT[4]					=	NAME_ScalingPerPower;
	COUNT[4]				=	SPL_Scaling_ChargeFireball;
	COUNT[5]				=	value;
};
instance ItRu_Rage (ItemPR_Spell)
{
	value 					=	800;
	
	visual 					=	"ItRu_Fear.3ds";
	spell					= 	SPL_Rage;
	mag_circle 				=	4;
	cond_value[2]  			=	SPL_Cost_Rage;
	
	description				=	NAME_SPL_Rage;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Rage;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Rage;
	COUNT[5]				=	value;
};
instance ItRu_Fear (ItemPR_Spell)
{
	value 					=	600;
	
	visual 					=	"ItRu_Fear.3ds";
	spell					= 	SPL_Fear;
	mag_circle 				=	3;
	cond_value[2]  			=	SPL_Cost_Fear;
	
	description				=	NAME_SPL_Fear;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Fear;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Fear;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_Fear * 60;
	COUNT[5]				=	value;
};
instance ItRu_IceCube (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_IceCube.3ds";
	spell					= 	SPL_IceCube;
	mag_circle 				=	3;
	cond_value[2]  			=	SPL_Cost_IceCube;
	
	description				=	NAME_SPL_IceCube;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Damage;
	COUNT[2]				=	SPL_Damage_IceCube;
	TEXT[3]					=	NAME_Duration;
	COUNT[3]				=	SPL_TIME_FREEZE;
	TEXT[4]					=	NAME_DamagePerSec;
	COUNT[4]				=	SPL_FREEZE_DAMAGE;
	COUNT[5]				=	value;
};
instance ItRu_ChargeZap (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_Thunderball.3ds";
	spell					= 	SPL_ChargeZap;
	mag_circle 				=	3;
	cond_value[2]  			=	SPL_Cost_ChargeZap;
	
	description				=	NAME_SPL_ChargeZap;
	COUNT[0]				=	mag_circle;
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
instance ItRu_Geyser (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_Water01.3DS";
	spell					=	SPL_Geyser;
	mag_circle				=	3;
	cond_value[2]  			=	SPL_Cost_Geyser;
	
	description				=	NAME_SPL_Geyser;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Geyser;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Geyser;
	COUNT[5]				=	value;
};
instance ItRu_DestroyUndead (ItemPR_Spell)
{
	value 					=	800;
	
	visual					=	"ItRu_HarmUndead.3DS";
	spell					=	SPL_DestroyUndead;
	mag_circle				=	4;
	cond_value[2]  			=	SPL_Cost_DestroyUndead;
	
	description				=	NAME_SPL_DestroyUndead;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DestroyUndead;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_DestroyUndead;
	COUNT[5]				=	value;
};
instance ItRu_Pyrokinesis (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_Pyrokinesis.3DS";
	spell					=	SPL_Pyrokinesis;
	mag_circle				=	5;
	cond_value[2]  			=	SPL_Cost_Pyrokinesis;
	
	description				=	NAME_SPL_Pyrokinesis;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	SPL_Cost_Pyrokinesis;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_Pyrokinesis;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_Pyrokinesis*4;
	COUNT[5]				=	value;
};
instance ItRu_Firestorm (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_Firestorm.3DS";
	spell					=	SPL_Firestorm;
	mag_circle				=	3;
	cond_value[2]  			=	SPL_Cost_Firestorm;
	
	description				=	NAME_SPL_Firestorm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firestorm;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Firestorm;
	COUNT[5]				=	value;
};
instance ItRu_IceWave (ItemPR_Spell)
{
	value 					=	1000;
	
	visual					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_IceWave;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_IceWave;
	
	description				=	NAME_SPL_IceWave;
	COUNT[0]				=	mag_circle;
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
instance ItRu_WaterFist (ItemPR_Spell)
{
	value 					=	800;
	
	visual					=	"ItRu_Water03.3DS";
	spell					=	SPL_WaterFist;
	mag_circle				=	4;
	cond_value[2]  			=	SPL_Cost_WaterFist;
	
	description				=	NAME_SPL_WaterFist;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_WaterFist;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_WaterFist;
	COUNT[5]				=	value;
};
instance ItRu_Thunderstorm (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_Water01.3DS";
	spell					=	SPL_Thunderstorm;
	mag_circle				=	3;
	cond_value[2]  			=	SPL_Cost_Thunderstorm;
	
	description				=	NAME_SPL_Thunderstorm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Thunderstorm;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Thunderstorm;
	COUNT[5]				=	value;
};
instance ItRu_Firerain (ItemPR_Spell)
{
	value 					=	1200;
	
	visual					=	"ItRu_Firerain.3DS";
	spell					=	SPL_Firerain;
	mag_circle				=	6;
	cond_value[2]  			=	SPL_Cost_Firerain;
	
	description				=	NAME_SPL_Firerain;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firerain;
	TEXT[3]					=	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Firerain;
	COUNT[5]				=	value;
};
instance ItRu_BreathOfDeath (ItemPR_Spell)
{
	value 					=	1200;
	
	visual					=	"ItRu_BreathOfDeath.3DS";
	spell					=	SPL_BreathOfDeath;
	mag_circle				=	6;
	cond_value[2]  			=	SPL_Cost_BreathOfDeath;
	
	description				=	NAME_SPL_BreathOfDeath;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BreathOfDeath;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_BreathOfDeath;
	COUNT[5]				=	value;
};
instance ItRu_MassDeath (ItemPR_Spell)
{
	value 					=	1200;
	
	visual					=	"ItRu_MassDeath.3DS";
	spell					=	SPL_MassDeath;
	mag_circle				=	6;
	cond_value[2]  			=	SPL_Cost_MassDeath;
	
	description				=	NAME_SPL_MassDeath;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MassDeath;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_MassDeath;
	COUNT[5]				=	value;
};
instance ItRu_SlowTime (ItemPR_Spell)
{
	value 					=	1200;
	
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
instance ItRu_Shrink (ItemPR_Spell)
{
	value 					=	1200;
	
	visual					=	"ItRu_Shrink.3ds";
	spell					= 	SPL_Shrink;
	mag_circle 				=	6;
	cond_value[2]  			=	SPL_Cost_Shrink;
	
	description				=	NAME_SPL_Shrink;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_LevelPerCast;
	COUNT[2]				=	SPL_MinLvl_Shrink;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_Shrink;
	COUNT[5]				=	value;
};
instance ItRu_Telekinesis (ItemPR_Spell)
{
	value 					=	120;
	
	visual					=	"ItRu_LightHeal.3ds";
	spell					= 	SPL_Telekinesis;
	mag_circle				=	1;
	cond_value[2]  			=	SPL_Cost_Telekinesis;
	
	description				=	NAME_SPL_Telekinesis;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Inflate (ItemPR_Spell)
{
	value 					=	600;
	
	visual					=	"ItRu_Water01.3ds";
	spell					= 	SPL_Inflate;
	mag_circle 				=	3;
	cond_value[2]  			=	SPL_Cost_Inflate;
	
	description				=	NAME_SPL_Inflate;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_ArmyOfDarkness (ItemPR_Spell)
{
	value 					=	1200;
	
	visual					=	"ItRu_ArmyOfDarkness.3ds";
	spell					= 	SPL_Summon;
	mag_circle 				=	6;
	cond_value[2]  			=	SPL_Cost_Summon;
	
	description				=	NAME_SPL_Summon;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
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
instance ItRu_DragonBall (ItemPR_Spell)
{
	value 					=	800;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_DragonBall;
	mag_circle 				=	4;
	cond_value[2]  			=	SPL_Cost_DragonBall;
	
	description				=	NAME_SPL_DragonBall;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DragonBall;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_DragonBall;
	COUNT[5]				=	value;
};
instance ItRu_BlackDragonBall (ItemPR_Spell)
{
	value 					=	1000;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_BlackDragonBall;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_BlackDragonBall;
	
	description				=	NAME_SPL_BlackDragonBall;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BlackDragonBall;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_BlackDragonBall;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_BlueFireball (ItemPR_Spell)
{
	visual 					=	"ItRu_PalRepelEvil.3ds";
	spell					= 	SPL_BlueFireball;
	description				=	NAME_SPL_BlueFireball;
};
instance ItRu_RedFireball (ItemPR_Spell)
{
	visual 					=	"ItRu_PalRepelEvil.3ds";
	spell					= 	SPL_RedFireball;
	description				=	NAME_SPL_RedFireball;
};
instance ItRu_GreenFireball (ItemPR_Spell)
{
	visual 					=	"ItRu_PalRepelEvil.3ds";
	spell					= 	SPL_GreenFireball;
	description				=	NAME_SPL_GreenFireball;
};
instance ItRu_YellowFireball (ItemPR_Spell)
{
	visual 					=	"ItRu_PalRepelEvil.3ds";
	spell					= 	SPL_YellowFireball;
	description				=	NAME_SPL_YellowFireball;
};
///*******************************************************************************************
///	special spells
///*******************************************************************************************
/*
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
*/
///*******************************************************************************************
instance ItRu_MasterOfDisaster (ItemPR_Spell)
{
	value 					=	1000;
	
	visual 					=	"ItRu_MasterOfDesaster.3ds";
	spell					= 	SPL_MasterOfDisaster;
	mag_circle 				=	5;
	cond_value[2]  			=	SPL_Cost_MasterOfDisaster;
	
	description				=	NAME_SPL_MasterOfDisaster;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MasterOfDisaster;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_MasterOfDisaster;
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
	COUNT[2]				=	SPL_Damage_BeliarRage+(BeliarWeapon_LastUpgradeLvl*2);
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_BeliarRage;
	COUNT[5]				=	value;
};
///*******************************************************************************************
///	MYS & GEO & ELE & PYR & NEC spells
///*******************************************************************************************
instance ItRu_MysBolt (ItemPR_Spell)
{
	value 					=	80;
	
	visual 					=	"ItRu_FireBolt.3ds";
//	spell					= 	SPL_MysBolt;
	mag_circle 				=	0;
//	cond_value[2]  			=	SPL_Cost_MysBolt;
	
	description				=	NAME_SPL_MysBolt;
//	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	cond_value[2];
//	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysBolt;
//	TEXT[3]					= 	NAME_ScalingPerPower;
//	COUNT[3]				=	SPL_Scaling_MysBolt;
	COUNT[5]				=	value;
};
instance ItRu_MysBall (ItemPR_Spell)
{
	value 					=	200;
	
	visual 					=	"ItRu_InstantFireball.3ds";
	spell					= 	SPL_MysBall;
	mag_circle 				=	1;
	cond_value[2]  			=	SPL_Cost_MysBall;
	
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
instance ItRu_MysAura (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_MysAura;
	
	description				=	NAME_SPL_MysAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysAura;
	TEXT[2]					=	NAME_Duration;
//	COUNT[2]				=	SPL_Time_MysAura;
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
instance ItRu_MysEcho (ItemPR_Spell)
{
	visual 					=	"ItRu_Sleep.3ds";
	spell					= 	SPL_MysEcho;
	
	description				=	NAME_SPL_MysEcho;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysEcho;
};
instance ItRu_MysSlow (ItemPR_Spell)
{
	visual 					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_MysSlow;
	
	description				=	NAME_SPL_MysSlow;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_MysSlow;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_MysSlow;
};
///*******************************************************************************************
instance ItRu_GeoStone (ItemPR_Spell)
{
	value 					=	200;
	
	visual					=	"ItRu_FireBolt.3DS";
	spell					= 	SPL_GeoStone;
	mag_circle				= 	1;
	cond_value[2]  			=	SPL_Cost_GeoStone;
	
	description				=	NAME_SPL_GeoStone;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_GeoStone;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoStone;
	TEXT[4]					=	"Zadaje obra¿enia przyleg³ym celom";
	COUNT[5]				=	value;
};
instance ItRu_GeoAura (ItemPR_Spell)
{
	value 					=	400;
	
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_GeoAura;
	mag_circle				= 	2;
	cond_value[2]  			=	SPL_Cost_GeoAura;
	
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
instance ItRu_GeoElevate (ItemPR_Spell)
{
	value 					=	600;
	
	visual 					=	"ItRu_IceCube.3ds";
	spell					= 	SPL_GeoElevate;
	mag_circle				= 	3;
	cond_value[2]  			=	SPL_Cost_GeoElevate;
	
	description				=	NAME_SPL_GeoElevate;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_GeoElevate;
	COUNT[5]				=	value;
};
instance ItRu_GeoGolem (ItemPR_Spell)
{
	value 					=	800;
	
	visual 					=	"ItRu_SumGol.3ds";
	spell					= 	SPL_GeoGolem;
	mag_circle				= 	4;
	cond_value[2]  			=	SPL_Cost_GeoGolem;
	
	description				=	NAME_SPL_GeoGolem;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_ScalingPerPower;
	TEXT[3]					= 	NAME_Bonus_HpMax;
	COUNT[3]				= 	SPL_BonusHP_GeoGolem;
	TEXT[4]					= 	NAME_Bonus_Str;
	COUNT[4]				= 	SPL_BonusHP_GeoGolem;
	COUNT[5]				=	value;
};
instance ItRu_GeoQuake (ItemPR_Spell)
{
	value 					=	1000;
	
	visual 					=	"ItRu_IceWave.3ds";
	spell					= 	SPL_GeoQuake;
	mag_circle				= 	5;
	cond_value[2]  			=	SPL_Cost_GeoQuake;
	
	description				=	NAME_SPL_GeoQuake;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_GeoQuake;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoQuake;
	COUNT[5]				=	value;
};
instance ItRu_GeoCollapse (ItemPR_Spell)
{
	value 					=	1200;
	
	visual 					=	"ItRu_FireRain.3ds";
	spell					= 	SPL_GeoCollapse;
	mag_circle				= 	6;
	cond_value[2]  			=	SPL_Cost_GeoCollapse;
	
	description				=	NAME_SPL_GeoCollapse;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_GeoCollapse;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_GeoCollapse;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_EleLance (ItemPR_Spell)
{
	visual 					=	"ItRu_Water04.3ds";
	spell					= 	SPL_EleLance;

	description				=	NAME_SPL_EleLance;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_Cost_EleLance;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleLance;
};
instance ItRu_EleAura (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_EleAura;

	description				=	NAME_SPL_EleAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleAura;
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
instance ItRu_EleLightning (ItemPR_Spell)
{
	visual 					=	"ItRu_Water01.3ds";
	spell					= 	SPL_EleLightning;

	description				=	NAME_SPL_EleLightning;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_EleLightning;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_EleLightning;
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
instance ItRu_PyrAura (ItemPR_Spell)
{
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_PyrAura;

	description				=	NAME_SPL_PyrAura;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrAura;
};
instance ItRu_PyrBurning (ItemPR_Spell)
{
	visual 					=	"ItRu_Firestorm.3ds";
	spell					= 	SPL_PyrBurning;

	description				=	NAME_SPL_PyrBurning;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrBurning;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrBurning;
};
instance ItRu_PyrFirebomb (ItemPR_Spell)
{
	visual 					=	"ItRu_Pyrokinesis.3ds";
	spell					= 	SPL_PyrFirebomb;

	description				=	NAME_SPL_PyrFirebomb;
	TEXT[1]					=	NAME_Manakosten;
//	COUNT[1]				=	SPL_COST_PyrFirebomb;
	TEXT[2]					=	NAME_Dam_Magic;
//	COUNT[2]				=	SPL_Damage_PyrFirebomb;
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
	value 					=	200;
	
	visual					=	"ItRu_Beliar04.3DS";
	spell					= 	SPL_NecLifesteal;
	mag_circle				= 	1;
	cond_value[2]  			=	SPL_Cost_NecLifesteal;
	
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
instance ItRu_NecAura (ItemPR_Spell)
{
	value 					=	400;
	
	visual 					=	"ItRu_MediumHeal.3ds";
	spell					= 	SPL_NecAura;
	mag_circle				= 	2;
	cond_value[2]  			=	SPL_Cost_NecAura;
	
	description				=	NAME_SPL_NecAura;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Ochrona przed magi¹ i barier¹:";
	COUNT[2]				=	SPL_Prot_NecAura;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_NecAura;
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	SPL_Time_NecAura;
	COUNT[5]				=	value;
};
instance ItRu_NecCurse (ItemPR_Spell)
{
	value 					=	600;
	
	visual 					=	"ItRu_SumSkel.3ds";
	spell					= 	SPL_NecCurse;
	mag_circle				= 	3;
	cond_value[2]  			=	SPL_Cost_NecCurse;
	
	description				=	NAME_SPL_NecCurse;
	COUNT[1]				=	cond_value[2];
	//TEXT[2]					=	NAME_Duration;
	//COUNT[2]				=	SPL_Time_NecCurse;
	TEXT[2]					=	"Zabicie celu z na³o¿on¹ kl¹tw¹";
	TEXT[3]					=	"przyzywa szkielet, max:";
	COUNT[3]				=	SPL_Max_NecCurse;
	COUNT[5]				=	value;
};
instance ItRu_NecPlague (ItemPR_Spell)
{
	value 					=	800;
	
	visual					=	"ItRu_Beliar02.3DS";
	spell					= 	SPL_NecPlague;
	mag_circle				= 	4;
	cond_value[2]  			=	SPL_Cost_NecPlague;
	
	description				=	NAME_SPL_NecPlague;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_NecPlague;
	TEXT[3]					= 	NAME_ScalingPerPower;
	COUNT[3]				=	SPL_Scaling_NecPlague;
	COUNT[5]				=	value;
};
instance ItRu_NecDemon (ItemPR_Spell)
{
	value 					=	1000;
	
	visual 					=	"ItRu_SumDemon.3ds";
	spell					= 	SPL_NecDemon;
	mag_circle				= 	5;
	cond_value[2]  			=	SPL_Cost_NecDemon;
	
	description				=	NAME_SPL_NecDemon;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					= 	NAME_ScalingPerPower;
	TEXT[3]					= 	NAME_Bonus_HpMax;
	COUNT[3]				= 	SPL_BonusHP_NecDemon;
	TEXT[4]					= 	NAME_Bonus_Str;
	COUNT[4]				= 	SPL_BonusHP_NecDemon;
	COUNT[5]				=	value;
};
instance ItRu_NecDeath (ItemPR_Spell)
{
	value 					=	1200;
	
	visual					=	"ItRu_BreathOfDeath.3DS";
	spell					= 	SPL_NecDeath;
	mag_circle				= 	6;
	cond_value[2]  			=	SPL_Cost_NecDeath;
	
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
