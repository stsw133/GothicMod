///*******************************************************************************************
prototype ItemPR_Spell (C_Item)
{
	name					=	"Runa";
	mainflag				=	ITEM_KAT_RUNE;
	flags					=	ITEM_MISSION;
	
	material				=	MAT_STONE;
	cond_atr[2]				=	ATR_MANA_MAX;
	
	TEXT[0]					=	NAME_Mag_Circle;
	TEXT[1]					=	NAME_Manakosten;
	TEXT[5]					=	NAME_Value;
};

///*******************************************************************************************
/// Basic spells
///*******************************************************************************************
instance ItRu_Light (ItemPR_Spell)
{
	value					=	120;
	
	visual					=	"ItRu_Light.3DS";
	spell					=	SPL_Light;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_Light;
	
	description				=	NAME_SPL_Light;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Light;
	COUNT[5]				=	value;
};
instance ItRu_Heal (ItemPR_Spell)
{
	value					=	300;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					=	SPL_Heal;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Heal;
	
	description				=	NAME_SPL_Heal;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_HealingPerCast;
	COUNT[2]				=	SPL_Heal_Heal;
	COUNT[5]				=	value;
};
instance ItRu_Telekinesis (ItemPR_Spell)
{
	value					=	120;
	
	visual					=	"ItRu_LightHeal.3ds";
	spell					=	SPL_Telekinesis;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_Telekinesis;
	
	description				=	NAME_SPL_Telekinesis;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// PAL spells
///*******************************************************************************************
instance ItRu_PalBless (ItemPR_Spell)
{
	value					=	300;
	
	visual					=	"ItRu_PalLight.3DS";
	spell					=	SPL_PalBless;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalBless;
	
	description				=	NAME_SPL_PalBless;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Dodatkowe obra¿enia równe 5% max. many.";
	TEXT[3]					=	"U¿yj ponownie by wy³¹czyæ.";
	COUNT[5]				=	value;
};
instance ItRu_PalFaith (ItemPR_Spell)
{
	value					=	500;
	
	visual					=	"ItRu_PalLightHeal.3DS";
	spell					=	SPL_PalFaith;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalFaith;
	
	description				=	NAME_SPL_PalFaith;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_PalHolyBolt (ItemPR_Spell)
{
	value					=	500;
	
	visual					=	"ItRu_PalHolyBolt.3DS";
	spell					=	SPL_PalHolyBolt;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalHolyBolt;
	
	description				=	NAME_SPL_PalHolyBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalHolyBolt;
	COUNT[5]				=	value;
};
instance ItRu_PalGlory (ItemPR_Spell)
{
	value					=	700;
	
	visual					=	"ItRu_PalMediumHeal.3DS";
	spell					=	SPL_PalGlory;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalGlory;
	
	description				=	NAME_SPL_PalGlory;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_PalRepelEvil (ItemPR_Spell)
{
	value					=	700;
	
	visual					=	"ItRu_PalRepelEvil.3DS";
	spell					=	SPL_PalRepelEvil;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalRepelEvil;
	
	description				=	NAME_SPL_PalRepelEvil;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalRepelEvil;
	TEXT[3]					=	"W po³owie skuteczne gdy wróg posiada";
	TEXT[4]					=	"max. ¿ycia wiêcej ni¿ obra¿enia runy.";
	COUNT[5]				=	value;
};
instance ItRu_PalJustice (ItemPR_Spell)
{
	value					=	900;
	
	visual					=	"ItRu_PalFullHeal.3DS";
	spell					=	SPL_PalJustice;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalJustice;
	
	description				=	NAME_SPL_PalJustice;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_PalDestroyEvil (ItemPR_Spell)
{
	value					=	900;
	
	visual					=	"ItRu_PalDestroyEvil.3DS";
	spell					=	SPL_PalDestroyEvil;
	mag_circle				=	0;
	cond_value[2]			=	SPL_Cost_PalDestroyEvil;
	
	description				=	NAME_SPL_PalDestroyEvil;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalDestroyEvil;
	TEXT[3]					=	"Nieskuteczne gdy wróg posiada";
	TEXT[4]					=	"max. ¿ycia wiêcej ni¿ obra¿enia runy.";
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// Common spells
///*******************************************************************************************
instance ItRu_Resurrection (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_MasterOfDesaster.3ds";
	spell					=	SPL_Resurrection;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Resurrection;
	
	description				=	NAME_SPL_Resurrection;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Rage (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_Fear.3ds";
	spell					=	SPL_Rage;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_Rage;
	
	description				=	NAME_SPL_Rage;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Seduction (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					=	SPL_Seduction;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Seduction;
	
	description				=	NAME_SPL_Seduction;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_NightToDay (ItemPR_Spell)
{
	value					=	300;
	
	visual					=	"ItRu_Light.3ds";
	spell					=	SPL_NightToDay;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_NightToDay;
	
	description				=	NAME_SPL_NightToDay;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_FireBolt (ItemPR_Spell)
{
	value					=	120;
	
	visual					=	"ItRu_FireBolt.3DS";
	spell					=	SPL_FireBolt;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_FireBolt;
	
	description				=	NAME_SPL_FireBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_FireBolt;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_IceBolt (ItemPR_Spell)
{
	value					=	120;
	
	visual					=	"ItRu_IceBolt.3DS";
	spell					=	SPL_IceBolt;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_IceBolt;
	
	description				=	NAME_SPL_IceBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceBolt;
	COUNT[5]				=	value;
};
instance ItRu_Stealth (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_FullHeal.3DS";
	spell					=	SPL_Stealth;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_Stealth;
	
	description				=	NAME_SPL_Stealth;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_SkullBolt (ItemPR_Spell)
{
	value					=	160;
	
	visual					=	"ItRu_SumSkel.3ds";
	spell					=	SPL_SkullBolt;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_SkullBolt;
	
	description				=	NAME_SPL_SkullBolt;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SkullBolt;
	COUNT[5]				=	value;
};
instance ItRu_InstantFireball (ItemPR_Spell)
{
	value					=	200;
	
	visual					=	"ItRu_InstantFireball.3ds";
	spell					=	SPL_InstantFireball;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_InstantFireball;
	
	description				=	NAME_SPL_InstantFireball;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_InstantFireball;
	COUNT[5]				=	value;
};
instance ItRu_Zap (ItemPR_Spell)
{
	value					=	160;
	
	visual					=	"ItRu_Zap.3ds";
	spell					=	SPL_Zap;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_Zap;
	
	description				=	NAME_SPL_Zap;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Zap;
	COUNT[5]				=	value;
};
instance ItRu_Slimeball (ItemPR_Spell)
{
	value					=	200;
	
	visual					=	"ItRu_InstantFireball.3ds";
	spell					=	SPL_Slimeball;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_Slimeball;
	
	description				=	NAME_SPL_Slimeball;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Slimeball;
	COUNT[5]				=	value;
};
instance ItRu_WindFist (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_WindFist.3ds";
	spell					=	SPL_WindFist;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_WindFist;
	
	description				=	NAME_SPL_WindFist;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_WindFist;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_WindFist*4;
	COUNT[5]				=	value;
};
instance ItRu_Sleep (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					=	SPL_Sleep;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Sleep;
	
	description				=	NAME_SPL_Sleep;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItRu_Charm (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Sleep.3ds";
	spell					=	SPL_Charm;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Charm;
	
	description				=	NAME_SPL_Charm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_LightningFlash (ItemPR_Spell)
{
	value					=	700;
	
	visual					=	"ItRu_LightningFlash.3DS";
	spell					=	SPL_LightningFlash;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_LightningFlash;
	
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
	value					=	800;
	
	visual					=	"ItRu_ChargeFireball.3DS";
	spell					=	SPL_ChargeFireball;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_ChargeFireball;
	
	description				=	NAME_SPL_ChargeFireball;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeFireball;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_ChargeFireball*4;
	COUNT[5]				=	value;
};
instance ItRu_Curse (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_SumSkel.3DS";
	spell					=	SPL_Curse;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Curse;
	
	description				=	NAME_SPL_Curse;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Fear (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Fear.3ds";
	spell					=	SPL_Fear;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Fear;
	
	description				=	NAME_SPL_Fear;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Fear * 60;
	COUNT[5]				=	value;
};
instance ItRu_IceCube (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_IceCube.3ds";
	spell					=	SPL_IceCube;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_IceCube;
	
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
	value					=	600;
	
	visual					=	"ItRu_Thunderball.3ds";
	spell					=	SPL_ChargeZap;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_ChargeZap;
	
	description				=	NAME_SPL_ChargeZap;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeZap;
	TEXT[3]					=	NAME_MaxDamage;
	COUNT[3]				=	SPL_Damage_ChargeZap*4;
	COUNT[5]				=	value;
};
instance ItRu_SummonGolem (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_SumGol.3DS";
	spell					=	SPL_SummonGolem;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_SummonGolem;
	
	description				=	NAME_SPL_SummonGolem;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_DestroyUndead (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_HarmUndead.3DS";
	spell					=	SPL_DestroyUndead;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_DestroyUndead;
	
	description				=	NAME_SPL_DestroyUndead;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DestroyUndead;
	COUNT[5]				=	value;
};
instance ItRu_Pyrokinesis (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_Pyrokinesis.3DS";
	spell					=	SPL_Pyrokinesis;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_Pyrokinesis;
	
	description				=	NAME_SPL_Pyrokinesis;
	COUNT[0]				=	mag_circle;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_Pyrokinesis;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_Pyrokinesis*4;
	COUNT[5]				=	value;
};
instance ItRu_Firestorm (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Firestorm.3DS";
	spell					=	SPL_Firestorm;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Firestorm;
	
	description				=	NAME_SPL_Firestorm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firestorm;
	COUNT[5]				=	value;
};
instance ItRu_IceWave (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_IceWave.3ds";
	spell					=	SPL_IceWave;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_IceWave;
	
	description				=	NAME_SPL_IceWave;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Damage;
//	COUNT[2]				=	SPL_Scaling_IceWave;
	TEXT[3]					=	NAME_Duration;
	COUNT[3]				=	SPL_TIME_FREEZE;
	TEXT[4]					=	NAME_DamagePerSec;
	COUNT[4]				=	SPL_FREEZE_DAMAGE;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_SummonDemon (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_SumDemon.3DS";
	spell					=	SPL_SummonDemon;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_SummonDemon;
	
	description				=	NAME_SPL_SummonDemon;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Explosion (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_Pyrokinesis.3DS";
	spell					=	SPL_Explosion;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_Explosion;
	
	description				=	NAME_SPL_Explosion;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Explosion;
	COUNT[5]				=	value;
};
instance ItRu_Firerain (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_Firerain.3DS";
	spell					=	SPL_Firerain;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_Firerain;
	
	description				=	NAME_SPL_Firerain;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firerain;
	COUNT[5]				=	value;
};
instance ItRu_BreathOfDeath (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_BreathOfDeath.3DS";
	spell					=	SPL_BreathOfDeath;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_BreathOfDeath;
	
	description				=	NAME_SPL_BreathOfDeath;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BreathOfDeath;
	COUNT[5]				=	value;
};
instance ItRu_MassDeath (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_MassDeath.3DS";
	spell					=	SPL_MassDeath;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_MassDeath;
	
	description				=	NAME_SPL_MassDeath;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MassDeath;
	COUNT[5]				=	value;
};
instance ItRu_ArmyOfDarkness (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_ArmyOfDarkness.3DS";
	spell					=	SPL_ArmyOfDarkness;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_ArmyOfDarkness;
	
	description				=	NAME_SPL_ArmyOfDarkness;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Shrink (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_Shrink.3ds";
	spell					=	SPL_Shrink;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_Shrink;
	
	description				=	NAME_SPL_Shrink;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Tame (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_SumWolf.3ds";
	spell					=	SPL_Tame;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_Tame;
	
	description				=	NAME_SPL_Tame;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_RunicEchoes (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_MassDeath.3DS";
	spell					=	SPL_RunicEchoes;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_RunicEchoes;
	
	description				=	NAME_SPL_RunicEchoes;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_RunicEchoes;
	COUNT[5]				=	value;
};
instance ItRu_SlowTime (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_Shrink.3ds";
	spell					=	SPL_SlowTime;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_SlowTime;
	
	description				=	NAME_SPL_SlowTime;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_SlowTime;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_HealingAura (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					=	SPL_HealingAura;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Aura;
	
	description				=	NAME_SPL_HealingAura;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_StoneSkin (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					=	SPL_StoneSkin;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Aura;
	
	description				=	NAME_SPL_StoneSkin;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_AirShield (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					=	SPL_AirShield;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Aura;
	
	description				=	NAME_SPL_AirShield;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_FireShield (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					=	SPL_FireShield;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Aura;
	
	description				=	NAME_SPL_FireShield;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_DarkBarrier (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_MediumHeal.3DS";
	spell					=	SPL_DarkBarrier;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Aura;
	
	description				=	NAME_SPL_DarkBarrier;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// Player spells
///*******************************************************************************************
instance ItRu_MasterOfDisaster (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_MasterOfDesaster.3ds";
	spell					=	SPL_MasterOfDisaster;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_MasterOfDisaster;
	
	description				=	NAME_SPL_MasterOfDisaster;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MasterOfDisaster;
	COUNT[5]				=	value;
};
instance ItRu_BeliarRage (ItemPR_Spell)
{
	value					=	200;
	
	visual					=	"ItRu_Beliar04.3ds";
	spell					=	SPL_BeliarRage;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_BeliarRage;
	
	description				=	NAME_SPL_BeliarRage;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	SPL_Cost_BeliarRage;
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BeliarRage+(BeliarWeapon_LastUpgradeLvl*2);
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// Special spells
///*******************************************************************************************
/*
instance ItRu_Teleport (ItemPR_Spell)
{
	visual					=	"ItMi_StoneOfTeleport.3ds";
	spell					=	SPL_Teleport;
	description				=	NAME_SPL_Teleport;
};
instance ItRu_Transform (ItemPR_Spell)
{
	visual					=	"ItMi_StoneOfTransform.3ds";
	spell					=	SPL_Transform;
	description				=	NAME_SPL_Transform;
};
instance ItRu_Summon (ItemPR_Spell)
{
	visual					=	"ItMi_StoneOfSummon.3ds";
	spell					=	SPL_Summon;
	description				=	NAME_SPL_Summon;
};
*/

///*******************************************************************************************
/// NPC spells
///*******************************************************************************************
instance ItRu_ConcussionSpell (ItemPR_Spell)
{
	visual					=	"ItRu_PalHolyBolt.3ds";
	spell					=	SPL_ConcussionSpell;
	description				=	NAME_SPL_ConcussionSpell;
};
instance ItRu_DeathSpell (ItemPR_Spell)
{
	visual					=	"ItRu_PalHolyBolt.3ds";
	spell					=	SPL_DeathSpell;
	description				=	NAME_SPL_DeathSpell;
};
instance ItRu_DragonBall (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3ds";
	spell					=	SPL_DragonBall;
	description				=	NAME_SPL_DragonBall;
};
instance ItRu_BlackDragonBall (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3ds";
	spell					=	SPL_BlackDragonBall;
	description				=	NAME_SPL_BlackDragonBall;
};
instance ItRu_BlueFireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3ds";
	spell					=	SPL_BlueFireball;
	description				=	NAME_SPL_BlueFireball;
};
instance ItRu_RedFireball (ItemPR_Spell)
{
	visual					=	"ItRu_InstantFireball.3ds";
	spell					=	SPL_RedFireball;
	description				=	NAME_SPL_RedFireball;
};

///*******************************************************************************************
/// Common spells
///*******************************************************************************************
instance ItRu_Thunderstorm (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_Water05.3DS";
	spell					=	SPL_Thunderstorm;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_Thunderstorm;
	
	description				=	NAME_SPL_Thunderstorm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Thunderstorm;
	COUNT[5]				=	value;
};
instance ItRu_Whirlwind (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_Water02.3DS";
	spell					=	SPL_Whirlwind;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_Whirlwind;
	
	description				=	NAME_SPL_Whirlwind;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Whirlwind;
	COUNT[5]				=	value;
};
instance ItRu_WaterFist (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_Water03.3DS";
	spell					=	SPL_WaterFist;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_WaterFist;
	
	description				=	NAME_SPL_WaterFist;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_WaterFist;
	COUNT[5]				=	value;
};
instance ItRu_IceLance (ItemPR_Spell)
{
	value					=	200;
	
	visual					=	"ItRu_Water04.3DS";
	spell					=	SPL_IceLance;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_IceLance;
	
	description				=	NAME_SPL_IceLance;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceLance;
	COUNT[5]				=	value;
};
instance ItRu_Inflate (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_Water01.3ds";
	spell					=	SPL_Inflate;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_Inflate;
	
	description				=	NAME_SPL_Inflate;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItRu_Geyser (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Water01.3DS";
	spell					=	SPL_Geyser;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Geyser;
	
	description				=	NAME_SPL_Geyser;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Geyser;
	COUNT[5]				=	value;
};
instance ItRu_Fireburning (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Firestorm.3DS";
	spell					=	SPL_Fireburning;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Fireburning;
	
	description				=	NAME_SPL_Fireburning;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Fireburning;
	COUNT[5]				=	value;
};
instance ItRu_ChainLightning (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_Thunderball.3DS";
	spell					=	SPL_ChainLightning;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_ChainLightning;
	
	description				=	NAME_SPL_ChainLightning;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_ChainLightning;
	COUNT[5]				=	value;
};
instance ItRu_Hurricane (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_WindFist.3DS";
	spell					=	SPL_Hurricane;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_Hurricane;
	
	description				=	NAME_SPL_Hurricane;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Hurricane;
	COUNT[5]				=	value;
};
instance ItRu_LightFlash (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_Light.3DS";
	spell					=	SPL_LightFlash;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_LightFlash;
	
	description				=	NAME_SPL_LightFlash;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItRu_Plague (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_Beliar02.3DS";
	spell					=	SPL_Plague;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_Plague;
	
	description				=	NAME_SPL_Plague;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Plague;
	COUNT[5]				=	value;
};
instance ItRu_Swarm (ItemPR_Spell)
{
	value					=	800;
	
	visual					=	"ItRu_Beliar02.3DS";
	spell					=	SPL_Swarm;
	mag_circle				=	4;
	cond_value[2]			=	SPL_Cost_Swarm;
	
	description				=	NAME_SPL_Swarm;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Swarm;
	COUNT[5]				=	value;
};
instance ItRu_Greententacle (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_Beliar03.3DS";
	spell					=	SPL_Greententacle;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Greententacle;
	
	description				=	NAME_SPL_Greententacle;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Greententacle;
	TEXT[3]					=	NAME_Dam_Magic;
	COUNT[3]				=	SPL_Damage_Greententacle;
	COUNT[5]				=	value;
};
instance ItRu_Earthquake (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_IceWave.3DS";
	spell					=	SPL_Earthquake;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_Earthquake;
	
	description				=	NAME_SPL_Earthquake;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Earthquake;
	COUNT[5]				=	value;
};
instance ItRu_Rock (ItemPR_Spell)
{
	value					=	200;
	
	visual					=	"ItRu_Water04.3DS";
	spell					=	SPL_Rock;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_Rock;
	
	description				=	NAME_SPL_Rock;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Rock;
	COUNT[5]				=	value;
};
instance ItRu_Mysticball (ItemPR_Spell)
{
	value					=	200;
	
	visual					=	"ItRu_Beliar04.3DS";
	spell					=	SPL_Mysticball;
	mag_circle				=	1;
	cond_value[2]			=	SPL_Cost_Mysticball;
	
	description				=	NAME_SPL_Mysticball;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Mysticball;
	COUNT[5]				=	value;
};
instance ItRu_SuckEnergy (ItemPR_Spell)
{
	value					=	400;
	
	visual					=	"ItRu_Beliar01.3DS";
	spell					=	SPL_SuckEnergy;
	mag_circle				=	2;
	cond_value[2]			=	SPL_Cost_SuckEnergy;
	
	description				=	NAME_SPL_SuckEnergy;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SuckEnergy;
	COUNT[5]				=	value;
};
instance ItRu_Skull (ItemPR_Spell)
{
	value					=	1000;
	
	visual					=	"ItRu_Beliar05.3DS";
	spell					=	SPL_Skull;
	mag_circle				=	5;
	cond_value[2]			=	SPL_Cost_Skull;
	
	description				=	NAME_SPL_Skull;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Skull;
	COUNT[5]				=	value;
};
instance ItRu_Elevate (ItemPR_Spell)
{
	value					=	600;
	
	visual					=	"ItRu_IceCube.3ds";
	spell					=	SPL_Elevate;
	mag_circle				=	3;
	cond_value[2]			=	SPL_Cost_Elevate;
	
	description				=	NAME_SPL_Elevate;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Elevate;
	COUNT[5]				=	value;
};
instance ItRu_Crush (ItemPR_Spell)
{
	value					=	1200;
	
	visual					=	"ItRu_Beliar05.3DS";
	spell					=	SPL_Crush;
	mag_circle				=	6;
	cond_value[2]			=	SPL_Cost_Crush;
	
	description				=	NAME_SPL_Crush;
	COUNT[0]				=	mag_circle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Crush;
	COUNT[5]				=	value;
};
