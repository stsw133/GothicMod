///******************************************************************************************
prototype ItemPR_Scroll (C_Item)
{
	name					=	"Zwój";
	mainflag				=	ITEM_KAT_RUNE;
	flags					=	ITEM_MULTI;
	
	material				=	MAT_LEATHER;
	cond_atr[2]				=	ATR_MANA_MAX;
	
	TEXT[1]					=	NAME_Manakosten;
	TEXT[5]					=	NAME_Value;
};

///*******************************************************************************************
/// Basic spells
///*******************************************************************************************
instance ItSc_Light (ItemPR_Scroll)
{
	value					=	30;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Light;
	cond_value[2]			=	SPL_Cost_Light*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Light;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Light;
	COUNT[5]				=	value;
};
instance ItSc_LightHeal (ItemPR_Scroll)
{
	value					=	75;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					=	SPL_Heal;
	cond_value[2]			=	SPL_Cost_Heal*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Heal;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_HealingPerCast;
	COUNT[2]				=	SPL_Heal_Heal;
	COUNT[5]				=	value;
};
instance ItSc_Telekinesis (ItemPR_Scroll)
{
	value					=	30;
	
	visual					=	"ItSc_LightHeal.3DS";
	spell					=	SPL_Telekinesis;
	cond_value[2]			=	SPL_Cost_Telekinesis*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Telekinesis;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// PAL spells
///*******************************************************************************************
instance ItSc_PalBless (ItemPR_Scroll)
{
	value					=	75;
	
	visual					=	"ItSc_PalLight.3DS";
	spell					=	SPL_PalBless;
	cond_value[2]			=	SPL_Cost_PalBless*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalBless;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	"Dodatkowe obra¿enia równe 5% max. many.";
	TEXT[3]					=	"U¿yj ponownie by wy³¹czyæ.";
	COUNT[5]				=	value;
};
instance ItSc_PalFaith (ItemPR_Scroll)
{
	value					=	125;
	
	visual					=	"ItSc_PalLightHeal.3DS";
	spell					=	SPL_PalFaith;
	cond_value[2]			=	SPL_Cost_PalFaith*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalFaith;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_PalHolyBolt (ItemPR_Scroll)
{
	value					=	125;
	
	visual					=	"ItSc_PalHolyBolt.3DS";
	spell					=	SPL_PalHolyBolt;
	cond_value[2]			=	SPL_Cost_PalHolyBolt*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalHolyBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalHolyBolt;
	COUNT[5]				=	value;
};
instance ItSc_PalGlory (ItemPR_Scroll)
{
	value					=	175;
	
	visual					=	"ItSc_PalMediumHeal.3DS";
	spell					=	SPL_PalGlory;
	cond_value[2]			=	SPL_Cost_PalGlory*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalGlory;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_PalRepelEvil (ItemPR_Scroll)
{
	value					=	175;
	
	visual					=	"ItSc_PalRepelEvil.3DS";
	spell					=	SPL_PalRepelEvil;
	cond_value[2]			=	SPL_Cost_PalRepelEvil*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalRepelEvil;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalRepelEvil;
	COUNT[5]				=	value;
};
instance ItSc_PalJustice (ItemPR_Scroll)
{
	value					=	225;
	
	visual					=	"ItSc_PalFullHeal.3DS";
	spell					=	SPL_PalJustice;
	cond_value[2]			=	SPL_Cost_PalJustice*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalJustice;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_PalDestroyEvil (ItemPR_Scroll)
{
	value					=	225;
	
	visual					=	"ItSc_PalDestroyEvil.3DS";
	spell					=	SPL_PalDestroyEvil;
	cond_value[2]			=	SPL_Cost_PalDestroyEvil*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_PalDestroyEvil;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_PalDestroyEvil;
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// Common spells
///*******************************************************************************************
instance ItSc_Resurrection (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Resurrection;
	cond_value[2]			=	SPL_Cost_Resurrection*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Resurrection;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Rage (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Fear.3DS";
	spell					=	SPL_Rage;
	cond_value[2]			=	SPL_Cost_Rage*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Rage;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Seduction (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					=	SPL_Seduction;
	cond_value[2]			=	SPL_Cost_Seduction*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Seduction;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_NightToDay (ItemPR_Scroll)
{
	value					=	75;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_NightToDay;
	cond_value[2]			=	SPL_Cost_NightToDay*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_NightToDay;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_FireBolt (ItemPR_Scroll)
{
	value					=	30;
	
	visual					=	"ItSc_FireBolt.3DS";
	spell					=	SPL_FireBolt;
	cond_value[2]			=	SPL_Cost_FireBolt*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_FireBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_FireBolt;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_IceBolt (ItemPR_Scroll)
{
	value					=	30;
	
	visual					=	"ItSc_IceBolt.3DS";
	spell					=	SPL_IceBolt;
	cond_value[2]			=	SPL_Cost_IceBolt*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_IceBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceBolt;
	COUNT[5]				=	value;
};
instance ItSc_Stealth (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_FullHeal.3DS";
	spell					=	SPL_Stealth;
	cond_value[2]			=	SPL_Cost_Stealth*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Stealth;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_SkullBolt (ItemPR_Scroll)
{
	value					=	40;
	
	visual					=	"ItSc_Zap.3DS";
	spell					=	SPL_SkullBolt;
	cond_value[2]			=	SPL_Cost_SkullBolt*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_SkullBolt;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SkullBolt;
	COUNT[5]				=	value;
};
instance ItSc_InstantFireball (ItemPR_Scroll)
{
	value					=	50;
	
	visual					=	"ItSc_InstantFireball.3DS";
	spell					=	SPL_InstantFireball;
	cond_value[2]			=	SPL_Cost_InstantFireball*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_InstantFireball;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_InstantFireball;
	COUNT[5]				=	value;
};
instance ItSc_Zap (ItemPR_Scroll)
{
	value					=	40;
	
	visual					=	"ItSc_Zap.3DS";
	spell					=	SPL_Zap;
	cond_value[2]			=	SPL_Cost_Zap*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Zap;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Zap;
	COUNT[5]				=	value;
};
instance ItSc_Slimeball (ItemPR_Scroll)
{
	value					=	50;
	
	visual					=	"ItSc_InstantFireball.3DS";
	spell					=	SPL_Slimeball;
	cond_value[2]			=	SPL_Cost_Slimeball*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Slimeball;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Slimeball;
	COUNT[5]				=	value;
};
instance ItSc_WindFist (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_WindFist.3DS";
	spell					=	SPL_WindFist;
	cond_value[2]			=	SPL_Cost_WindFist*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_WindFist;
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
instance ItSc_Sleep (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					=	SPL_Sleep;
	cond_value[2]			=	SPL_Cost_Sleep*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Sleep;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Sleep;
	COUNT[5]				=	value;
};
instance ItSc_Charm (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Sleep.3DS";
	spell					=	SPL_Charm;
	cond_value[2]			=	SPL_Cost_Charm*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Charm;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_LightningFlash (ItemPR_Scroll)
{
	value					=	175;
	
	visual					=	"ItSc_LightningFlash.3DS";
	spell					=	SPL_LightningFlash;
	cond_value[2]			=	SPL_Cost_LightningFlash*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_LightningFlash;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightningFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_ChargeFireball (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_ChargeFireball.3DS";
	spell					=	SPL_ChargeFireball;
	cond_value[2]			=	SPL_Cost_ChargeFireball*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_ChargeFireball;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Cost_ChargeFireball;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Cost_ChargeFireball*4;
	COUNT[5]				=	value;
};
instance ItSc_Curse (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_SumSkel.3DS";
	spell					=	SPL_Curse;
	cond_value[2]			=	SPL_Cost_Curse*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Curse;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Fear (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Fear.3DS";
	spell					=	SPL_Fear;
	cond_value[2]			=	SPL_Cost_Fear*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Fear;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Fear;
	COUNT[5]				=	value;
};
instance ItSc_IceCube (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_IceCube.3DS";
	spell					=	SPL_IceCube;
	cond_value[2]			=	SPL_Cost_IceCube*SPL_Percent_Scroll/100;
	
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
	value					=	150;
	
	visual					=	"ItSc_Thunderball.3DS";
	spell					=	SPL_ChargeZap;
	cond_value[2]			=	SPL_Cost_ChargeZap*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_ChargeZap;
	TEXT[1]					=	NAME_MinManakosten;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_MaxManakosten;
	COUNT[2]				=	cond_value[2]*4;
	TEXT[3]					=	NAME_MinDamage;
	COUNT[3]				=	SPL_Damage_ChargeZap;
	TEXT[4]					=	NAME_MaxDamage;
	COUNT[4]				=	SPL_Damage_ChargeZap*4;
	COUNT[5]				=	value;
};
instance ItSc_SummonGolem (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_SumGolem.3DS";
	spell					=	SPL_SummonGolem;
	cond_value[2]			=	SPL_Cost_SummonGolem*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_SummonGolem;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_DestroyUndead (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_HarmUndead.3DS";
	spell					=	SPL_DestroyUndead;
	cond_value[2]			=	SPL_Cost_DestroyUndead*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_DestroyUndead;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_DestroyUndead;
	COUNT[5]				=	value;
};
instance ItSc_Pyrokinesis (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Pyrokinesis.3DS";
	spell					=	SPL_Pyrokinesis;
	cond_value[2]			=	SPL_Cost_Pyrokinesis*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Pyrokinesis;
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
instance ItSc_Firestorm (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Firestorm.3DS";
	spell					=	SPL_Firestorm;
	cond_value[2]			=	SPL_Cost_Firestorm*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Firestorm;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firestorm;
	COUNT[5]				=	value;
};
instance ItSc_IceWave (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_IceWave.3DS";
	spell					=	SPL_IceWave;
	cond_value[2]			=	SPL_Cost_IceWave*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_IceWave;
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
instance ItSc_SummonDemon (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_SumDemon.3DS";
	spell					=	SPL_SummonDemon;
	cond_value[2]			=	SPL_Cost_SummonDemon*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_SummonDemon;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Explosion (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Pyrokinesis.3DS";
	spell					=	SPL_Explosion;
	cond_value[2]			=	SPL_Cost_Explosion*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Explosion;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Explosion;
	COUNT[5]				=	value;
};
instance ItSc_Firerain (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_Firerain.3DS";
	spell					=	SPL_Firerain;
	cond_value[2]			=	SPL_Cost_Firerain*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Firerain;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Firerain;
	COUNT[5]				=	value;
};
instance ItSc_BreathOfDeath (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_BreathOfDeath.3DS";
	spell					=	SPL_BreathOfDeath;
	cond_value[2]			=	SPL_Cost_BreathOfDeath*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_BreathOfDeath;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_BreathOfDeath;
	COUNT[5]				=	value;
};
instance ItSc_MassDeath (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_MassDeath.3DS";
	spell					=	SPL_MassDeath;
	cond_value[2]			=	SPL_Cost_MassDeath*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_MassDeath;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_MassDeath;
	COUNT[5]				=	value;
};
instance ItSc_ArmyOfDarkness (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_ArmyOfDarkness.3DS";
	spell					=	SPL_Summon;
	cond_value[2]			=	SPL_Cost_Summon*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Summon;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Shrink (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_Shrink.3DS";
	spell					=	SPL_Shrink;
	cond_value[2]			=	SPL_Cost_Shrink*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Shrink;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Tame (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_SumWolf.3DS";
	spell					=	SPL_Tame;
	cond_value[2]			=	SPL_Cost_Tame*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Tame;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_RunicEchoes (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_MassDeath.3DS";
	spell					=	SPL_RunicEchoes;
	cond_value[2]			=	SPL_Cost_RunicEchoes*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_RunicEchoes;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_SlowTime (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_Shrink.3DS";
	spell					=	SPL_SlowTime;
	cond_value[2]			=	SPL_Cost_SlowTime*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_SlowTime;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_HealingAura (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					=	SPL_HealingAura;
	cond_value[2]			=	SPL_Cost_Aura*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_HealingAura;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_StoneSkin (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					=	SPL_StoneSkin;
	cond_value[2]			=	SPL_Cost_Aura*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_StoneSkin;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_AirShield (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					=	SPL_AirShield;
	cond_value[2]			=	SPL_Cost_Aura*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_AirShield;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_FireShield (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					=	SPL_FireShield;
	cond_value[2]			=	SPL_Cost_Aura*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_FireShield;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_DarkBarrier (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_MediumHeal.3DS";
	spell					=	SPL_DarkBarrier;
	cond_value[2]			=	SPL_Cost_Aura*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_DarkBarrier;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};

///*******************************************************************************************
/// Common spells
///*******************************************************************************************
instance ItSc_Thunderstorm (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Water05.3DS";
	spell					=	SPL_Thunderstorm;
	cond_value[2]			=	SPL_Cost_Thunderstorm*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Thunderstorm;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Thunderstorm;
	COUNT[5]				=	value;
};
instance ItSc_Whirlwind (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_Water02.3DS";
	spell					=	SPL_Whirlwind;
	cond_value[2]			=	SPL_Cost_Whirlwind*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Whirlwind;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	SPL_Time_Whirlwind;
	COUNT[5]				=	value;
};
instance ItSc_WaterFist (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_Water03.3DS";
	spell					=	SPL_WaterFist;
	cond_value[2]			=	SPL_Cost_WaterFist*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_WaterFist;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_WaterFist;
	COUNT[5]				=	value;
};
instance ItSc_IceLance (ItemPR_Scroll)
{
	value					=	50;
	
	visual					=	"ItSc_Water04.3DS";
	spell					=	SPL_IceLance;
	cond_value[2]			=	SPL_Cost_IceLance*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_IceLance;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_IceLance;
	COUNT[5]				=	value;
};
instance ItSc_Inflate (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_Water01.3DS";
	spell					=	SPL_Inflate;
	cond_value[2]			=	SPL_Cost_Inflate*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Inflate;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Geyser (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Water01.3DS";
	spell					=	SPL_Geyser;
	cond_value[2]			=	SPL_Cost_Geyser*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Geyser;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Geyser;
	COUNT[5]				=	value;
};
instance ItSc_Fireburning (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Firestorm.3DS";
	spell					=	SPL_Fireburning;
	cond_value[2]			=	SPL_Cost_Fireburning*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Fireburning;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Fireburning;
	COUNT[5]				=	value;
};
instance ItSc_ChainLightning (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_Thunderball.3DS";
	spell					=	SPL_ChainLightning;
	cond_value[2]			=	SPL_Cost_ChainLightning*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_ChainLightning;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_ChainLightning;
	COUNT[5]				=	value;
};
instance ItSc_Hurricane (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_WindFist.3DS";
	spell					=	SPL_Hurricane;
	cond_value[2]			=	SPL_Cost_Hurricane*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Hurricane;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Hurricane;
	COUNT[5]				=	value;
};
instance ItSc_LightFlash (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_LightFlash;
	cond_value[2]			=	SPL_Cost_LightFlash*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_LightFlash;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_LightFlash;
	COUNT[5]				=	value;
};
///*******************************************************************************************
instance ItSc_Plague (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Plague;
	cond_value[2]			=	SPL_Cost_Plague*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Plague;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Plague;
	COUNT[5]				=	value;
};
instance ItSc_Swarm (ItemPR_Scroll)
{
	value					=	200;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Swarm;
	cond_value[2]			=	SPL_Cost_Swarm*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Swarm;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Swarm;
	COUNT[5]				=	value;
};
instance ItSc_Greententacle (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Greententacle;
	cond_value[2]			=	SPL_Cost_Greententacle*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Greententacle;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Greententacle;
	COUNT[5]				=	value;
};
instance ItSc_Earthquake (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Earthquake;
	cond_value[2]			=	SPL_Cost_Earthquake*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Earthquake;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Earthquake;
	COUNT[5]				=	value;
};
instance ItSc_Rock (ItemPR_Scroll)
{
	value					=	50;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Rock;
	cond_value[2]			=	SPL_Cost_Rock*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Rock;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Rock;
	COUNT[5]				=	value;
};
instance ItSc_Mysticball (ItemPR_Scroll)
{
	value					=	50;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Mysticball;
	cond_value[2]			=	SPL_Cost_Mysticball*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Mysticball;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Mysticball;
	COUNT[5]				=	value;
};
instance ItSc_SuckEnergy (ItemPR_Scroll)
{
	value					=	100;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_SuckEnergy;
	cond_value[2]			=	SPL_Cost_SuckEnergy*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_SuckEnergy;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_SuckEnergy;
	COUNT[5]				=	value;
};
instance ItSc_Skull (ItemPR_Scroll)
{
	value					=	250;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Skull;
	cond_value[2]			=	SPL_Cost_Skull*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Skull;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Skull;
	COUNT[5]				=	value;
};
instance ItSc_Elevate (ItemPR_Scroll)
{
	value					=	150;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Elevate;
	cond_value[2]			=	SPL_Cost_Elevate*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Elevate;
	COUNT[1]				=	cond_value[2];
	COUNT[5]				=	value;
};
instance ItSc_Crush (ItemPR_Scroll)
{
	value					=	300;
	
	visual					=	"ItSc_Light.3DS";
	spell					=	SPL_Crush;
	cond_value[2]			=	SPL_Cost_Crush*SPL_Percent_Scroll/100;
	
	description				=	NAME_SPL_Crush;
	COUNT[1]				=	cond_value[2];
	TEXT[2]					=	NAME_Dam_Magic;
	COUNT[2]				=	SPL_Damage_Crush;
	COUNT[5]				=	value;
};
