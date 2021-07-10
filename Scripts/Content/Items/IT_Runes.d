///*******************************************************************************************
prototype ItemPR_Spell (C_Item)
{
	name 					=	"Runa";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MISSION;
};
///*******************************************************************************************
/// Common spells
///*******************************************************************************************
instance ItRu_Light (ItemPR_Spell)
{
	visual			=	"ItRu_Light.3DS";
//	spell			= 	SPL_nLight;
	
	description		=	NAME_SPL_Light;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_nLight;
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_nLight;
};
instance ItRu_Heal (ItemPR_Spell)
{
	visual			=	"ItRu_MediumHeal.3DS";
//	spell			= 	SPL_nHeal;
	
	description		=	NAME_SPL_Heal;
	TEXT[1]			=	NAME_MaxManakosten;
//	COUNT[1]		=	SPL_Cost_nHeal;
	TEXT[2]			= 	NAME_Percent_HP;
//	COUNT[2]		=	SPL_Time_nHeal*10;
	TEXT[3]			=	NAME_Duration;
//	COUNT[3]		=	SPL_Time_nHeal;
};
///*******************************************************************************************
///	PAL spells
///*******************************************************************************************
instance ItRu_PalBless (ItemPR_Spell)
{
	visual			=	"ItRu_PalLight.3DS";
//	spell			= 	SPL_PalBless;
	
	description		=	NAME_SPL_PalBless;
	TEXT[1]			=	NAME_MinManakosten;
//	COUNT[1]		=	SPL_Cost_PalBless;
	TEXT[2]			=	"Dodatkowe obra¿enia równe 10% max. many.";
	TEXT[3]			=	"U¿yj ponownie by wy³¹czyæ.";
};
instance ItRu_PalProtection (ItemPR_Spell)
{
	visual			=	"ItRu_PalMediumHeal.3DS";
//	spell			= 	SPL_PalProtection;
	
	description		=	NAME_SPL_PalProtection;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_PalProtection;
	//TEXT[2]			= 	NAME_MinDamage;
	//COUNT[2]		=	SPL_Damage_PalProtection;
	//TEXT[3]			=	NAME_Duration;
	//COUNT[3]		=	SPL_Duration_PalProtection;
};
instance ItRu_PalHolyBolt (ItemPR_Spell)
{
	visual			=	"ItRu_PalHolyBolt.3DS";
	spell			= 	SPL_PalHolyBolt;
	
	description		=	NAME_SPL_PalHolyBolt;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_PalHolyBolt;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_PalHolyBolt;
};
instance ItRu_PalDivineGrace (ItemPR_Spell)
{
	visual			=	"ItRu_PalFullHeal.3DS";
//	spell			= 	SPL_PalDivineGrace;
	
	description		=	NAME_SPL_PalDivineGrace;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_PalDivineGrace;
};
instance ItRu_PalDestroyEvil (ItemPR_Spell)
{
	visual			=	"ItRu_PalDestroyEvil.3DS";
	spell			= 	SPL_PalDestroyEvil;
	
	description		=	NAME_SPL_PalDestroyEvil;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_PalDestroyEvil;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_PalDestroyEvil;
};
///*******************************************************************************************
/// Common spells
///*******************************************************************************************
instance ItRu_Telekinesis (ItemPR_Spell)
{
	visual			=	"ItRu_Water15.3ds";
//	spell			= 	SPL_Telekinesis;
	
	description		=	NAME_SPL_Telekinesis;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Telekinesis;
};
instance ItRu_SlowTime (ItemPR_Spell)
{
	visual			=	"ItRu_Shrink.3ds";
//	spell			= 	SPL_SlowTime;
	
	description		=	NAME_SPL_SlowTime;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_SlowTime;
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_SlowTime;
};
///*******************************************************************************************
instance ItRu_Sleep (ItemPR_Spell)
{
	visual			=	"ItRu_Sleep.3ds";
	spell			= 	SPL_Sleep;
	mag_circle 		=	1;
	
	description		=	NAME_SPL_Sleep;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Sleep;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Sleep;
};
instance ItRu_MassSleep (ItemPR_Spell)
{
	visual			=	"ItRu_Sleep.3ds";
//	spell			= 	SPL_MassSleep;
	mag_circle 		=	2;
	
	description		=	NAME_SPL_MassSleep;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MassSleep;
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_Sleep;
};
instance ItRu_Fear (ItemPR_Spell)
{
	visual 			=	"ItRu_Fear.3ds";
	spell			= 	SPL_Fear;
	mag_circle 		=	1;
	
	description		=	NAME_SPL_Fear;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Fear;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Fear * 60;
};
instance ItRu_MassFear (ItemPR_Spell)
{
	visual 			=	"ItRu_Fear.3ds";
//	spell			= 	SPL_MassFear;
	mag_circle 		=	2;
	
	description		=	NAME_SPL_MassFear;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MassFear;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	SPL_Time_Fear * 60;
};
instance ItRu_Rage (ItemPR_Spell)
{
	visual			=	"ItRu_Fear.3ds";
//	spell			= 	SPL_Rage;
	mag_circle 		=	2;
	
	description		=	NAME_SPL_Rage;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Rage;
};
instance ItRu_MassRage (ItemPR_Spell)
{
	visual			=	"ItRu_Fear.3ds";
//	spell			= 	SPL_MassRage;
	mag_circle 		=	4;
	
	description		=	NAME_SPL_MassRage;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MassRage;
};
instance ItRu_Shrink (ItemPR_Spell)
{
	visual			=	"ItRu_Shrink.3ds";
	spell			= 	SPL_Shrink;
	mag_circle 		=	5;
	
	description		=	NAME_SPL_Shrink;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Shrink;
};
instance ItRu_Control (ItemPR_Spell)
{
	visual			=	"ItRu_Fear.3ds";
//	spell			= 	SPL_Control;
	mag_circle 		=	3;
	
	description		=	NAME_SPL_Control;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Domination;
};
instance ItRu_Domination (ItemPR_Spell)
{
	visual			=	"ItRu_Shrink.3ds";
//	spell			= 	SPL_Shrink;
	mag_circle 		=	5;
	
	description		=	NAME_SPL_Domination;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Domination;
};
instance ItRu_Charm (ItemPR_Spell)
{
	visual			=	"ItRu_Sleep.3ds";
	spell			= 	SPL_Charm;
	mag_circle 		=	1;
	
	description		=	NAME_SPL_Charm;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Charm;
};
///*******************************************************************************************
///	Npc spells
///*******************************************************************************************
instance ItRu_DeathBolt (ItemPR_Spell)
{
	visual 			=	"ItRu_PalRepelEvil.3ds";
	spell			= 	SPL_DeathBolt;
	mag_circle 		=	1;
	
	description		=	NAME_SPL_DeathBolt;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_DeathBolt;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_DeathBolt;
};
instance ItRu_ConcussionBolt (ItemPR_Spell)
{
	visual 			=	"ItRu_PalRepelEvil.3ds";
	spell			= 	SPL_ConcussionBolt;
	mag_circle 		=	2;
	
	description		=	NAME_SPL_ConcussionBolt;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_ConcussionBolt;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_ConcussionBolt;
};
///*******************************************************************************************
instance ItRu_SkeletonSpell (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar02.3ds";
//	spell			= 	SPL_SkeletonSpell;
	
	description		=	NAME_SPL_SkeletonSpell;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_mSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_mSpells;
};
instance ItRu_GolemSpell (ItemPR_Spell)
{
	visual 			=	"ItRu_InstantFireball.3ds";
//	spell			= 	SPL_GolemSpell;
	
	description		=	NAME_SPL_GolemSpell;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_mSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_mSpells;
};
instance ItRu_OrcSpell (ItemPR_Spell)
{
	visual 			=	"ItRu_InstantFireball.3ds";
//	spell			= 	SPL_OrcSpell;
	
	description		=	NAME_SPL_OrcSpell;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_mSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_mSpells;
};
instance ItRu_DementorSpell (ItemPR_Spell)
{
	visual 			=	"ItRu_InstantFireball.3ds";
//	spell			= 	SPL_DementorSpell;
	
	description		=	NAME_SPL_DementorSpell;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_mSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_mSpells;
};
instance ItRu_DemasterSpell (ItemPR_Spell)
{
	visual 			=	"ItRu_FireStorm.3ds";
//	spell			= 	SPL_DemasterSpell;
	
	description		=	NAME_SPL_DemasterSpell;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_mSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_mSpells;
};
instance ItRu_DragonBall (ItemPR_Spell)
{
	visual 			=	"ItRu_InstantFireball.3ds";
//	spell			= 	SPL_DragonBall;
	
	description		=	NAME_SPL_DragonBall;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_DragonBall;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_DragonBall;
};
///*******************************************************************************************
instance ItRu_MasterOfDisaster (ItemPR_Spell)
{
	visual 			=	"ItRu_MasterOfDesaster.3ds";
	spell			= 	SPL_MasterOfDisaster;
	
	description		=	NAME_SPL_MasterOfDisaster;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_MasterOfDisaster;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_MasterOfDisaster;
};
instance ItRu_BeliarRage (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar02.3ds";
//	spell			= 	SPL_BeliarRage;
	
	description		=	NAME_SPL_BeliarRage;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	20+(BeliarWeapon_LastUpgradeLvl*1);
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	100+(BeliarWeapon_LastUpgradeLvl*5);
};
///*******************************************************************************************
///	MYS & GEO & ELE & PYR & NEC spells
///*******************************************************************************************
instance ItRu_MysBolt (ItemPR_Spell)
{
	visual 			=	"ItRu_FireBolt.3ds";
//	spell			= 	SPL_MysBolt;
	
	description		=	NAME_SPL_MysBolt;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MysBolt;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_MysBolt;
	TEXT[3]			=	NAME_Bonus_HP;
//	COUNT[3]		=	SPL_Heal_MysBolt;
};
instance ItRu_MysGhost (ItemPR_Spell)
{
	visual 			=	"ItRu_MediumHeal.3ds";
//	spell			= 	SPL_MysGhost;
	
	description		=	NAME_SPL_MysGhost;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MysGhost;
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_MysGhost;
	TEXT[3]			=	NAME_Bonus_HP;
//	COUNT[3]		=	SPL_Heal_MysGhost;
	//TEXT[4]			=	NAME_Prot_Fire;
	//COUNT[4]		=	SPL_Prot_MysGhost;
};
instance ItRu_MysRoot (ItemPR_Spell)
{
	visual 			=	"ItRu_IceCube.3ds";
//	spell			= 	SPL_MysRoot;
	
	description		=	NAME_SPL_MysRoot;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MysRoot;
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_MysRoot;
	TEXT[3]			=	NAME_DamagePerSec;
//	COUNT[3]		=	SPL_Damage_MysRoot;
};
instance ItRu_MysDomination (ItemPR_Spell)
{
	visual 			=	"ItRu_Sleep.3ds";
//	spell			= 	SPL_MysDomination;
	
	description		=	NAME_SPL_MysDomination;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MysDomination;
};
instance ItRu_MysEchoes (ItemPR_Spell)
{
	visual 			=	"ItRu_IceWave.3ds";
//	spell			= 	SPL_MysEchoes;
	
	description		=	NAME_SPL_MysEchoes;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_MysEchoes;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_MysEchoes;
};
///*******************************************************************************************
instance ItRu_GeoStone (ItemPR_Spell)
{
	visual 			=	"ItRu_FireBolt.3ds";
//	spell			= 	SPL_GeoStone;
	
	description		=	NAME_SPL_GeoStone;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_GeoStone;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_GeoStone;
};
instance ItRu_GeoSkin (ItemPR_Spell)
{
	visual 			=	"ItRu_MediumHeal.3ds";
//	spell			= 	SPL_GeoSkin;
	
	description		=	NAME_SPL_GeoSkin;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_GeoSkin;
	TEXT[2]			=	NAME_ManaPerSec;
//	COUNT[2]		=	SPL_Time_GeoSkin;
	TEXT[3]			=	NAME_Prot_Physical;
//	COUNT[3]		=	SPL_Prot_GeoSkin;
};
instance ItRu_GeoElevate (ItemPR_Spell)
{
	visual 			=	"ItRu_IceCube.3ds";
//	spell			= 	SPL_GeoElevate;
	
	description		=	NAME_SPL_GeoElevate;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_GeoElevate;
	TEXT[2]			=	NAME_Duration;
//	COUNT[2]		=	SPL_Time_GeoElevate;
};
instance ItRu_GeoGolem (ItemPR_Spell)
{
	visual 			=	"ItRu_SumGol.3ds";
//	spell			= 	SPL_GeoGolem;
	
	description		=	NAME_SPL_GeoGolem;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_GeoGolem;
};
instance ItRu_GeoQuake (ItemPR_Spell)
{
	visual 			=	"ItRu_IceWave.3ds";
//	spell			= 	SPL_GeoQuake;
	
	description		=	NAME_SPL_GeoQuake;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_GeoQuake;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_GeoQuake;
};
/*
///*******************************************************************************************
instance ItRu_Ele1 (ItemPR_Spell)
{
	visual 			=	"ItRu_Water04.3ds";
	spell			= 	SPL_Ele1;

	description		=	NAME_SPL_Ele1;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Ele1;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_Ele1;
};
instance ItRu_Ele2 (ItemPR_Spell)
{
	visual 			=	"ItRu_MediumHeal.3ds";
//	spell			= 	SPL_Ele2;

	description		=	NAME_SPL_Ele2;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Ele2;
};
instance ItRu_Ele3 (ItemPR_Spell)
{
	visual 			=	"ItRu_IceCube.3ds";
//	spell			= 	SPL_Ele3;

	description		=	NAME_SPL_Ele3;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Ele3;
};
instance ItRu_Ele4 (ItemPR_Spell)
{
	visual 			=	"ItRu_ThunderBall.3ds";
//	spell			= 	SPL_Ele4;

	description		=	NAME_SPL_Ele4;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Ele4;
};
instance ItRu_Ele5 (ItemPR_Spell)
{
	visual 			=	"ItRu_Water01.3ds";
//	spell			= 	SPL_Ele5;

	description		=	NAME_SPL_Ele5;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Ele5;
};
///*******************************************************************************************
instance ItRu_Pyr1 (ItemPR_Spell)
{
	visual 			=	"ItRu_InstantFireball.3ds";
	spell			= 	SPL_Pyr1;

	description		=	NAME_SPL_Pyr1;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Pyr1;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_Pyr1;
};
instance ItRu_Pyr2 (ItemPR_Spell)
{
	visual 			=	"ItRu_MediumHeal.3ds";
//	spell			= 	SPL_Pyr2;

	description		=	NAME_SPL_Pyr2;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Pyr2;
};
instance ItRu_Pyr3 (ItemPR_Spell)
{
	visual 			=	"ItRu_FireStorm.3ds";
//	spell			= 	SPL_Pyr3;

	description		=	NAME_SPL_Pyr3;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Pyr3;
};
instance ItRu_Pyr4 (ItemPR_Spell)
{
	visual 			=	"ItRu_FireBolt.3ds";
//	spell			= 	SPL_Pyr4;

	description		=	NAME_SPL_Pyr4;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Pyr4;
};
instance ItRu_Pyr5 (ItemPR_Spell)
{
	visual 			=	"ItRu_FireStorm.3ds";
//	spell			= 	SPL_Pyr5;

	description		=	NAME_SPL_Pyr5;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Pyr5;
};
///*******************************************************************************************
instance ItRu_Nec1 (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar04.3ds";
	spell			= 	SPL_Nec1;

	description		=	NAME_SPL_Nec1;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Nec1;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_Nec1;
};
instance ItRu_Nec2 (ItemPR_Spell)
{
	visual 			=	"ItRu_MediumHeal.3ds";
//	spell			= 	SPL_Nec2;

	description		=	NAME_SPL_Nec2;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Nec2;
};
instance ItRu_Nec3 (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar03.3ds";
//	spell			= 	SPL_Nec3;

	description		=	NAME_SPL_Nec3;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Nec3;
};
instance ItRu_Nec4 (ItemPR_Spell)
{
	visual 			=	"ItRu_SumSkel.3ds";
//	spell			= 	SPL_Nec4;

	description		=	NAME_SPL_Nec4;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Nec4;
};
instance ItRu_Nec5 (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar02.3ds";
//	spell			= 	SPL_Nec5;

	description		=	NAME_SPL_Nec5;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Nec5;
};
///*******************************************************************************************
instance ItRu_Lum1 (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar04.3ds";
	spell			= 	SPL_Lum1;

	description		=	NAME_SPL_Lum1;
	TEXT[1]			=	NAME_Manakosten;
	COUNT[1]		=	SPL_Cost_Lum1;
	TEXT[2]			=	NAME_Dam_Magic;
	COUNT[2]		=	SPL_Damage_Lum1;
};
instance ItRu_Lum2 (ItemPR_Spell)
{
	visual 			=	"ItRu_MediumHeal.3ds";
//	spell			= 	SPL_Lum2;

	description		=	NAME_SPL_Lum2;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Lum2;
};
instance ItRu_Lum3 (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar03.3ds";
//	spell			= 	SPL_Lum3;

	description		=	NAME_SPL_Lum3;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Lum3;
};
instance ItRu_Lum4 (ItemPR_Spell)
{
	visual 			=	"ItRu_SumSkel.3ds";
//	spell			= 	SPL_Lum4;

	description		=	NAME_SPL_Lum4;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Lum4;
};
instance ItRu_Lum5 (ItemPR_Spell)
{
	visual 			=	"ItRu_Beliar02.3ds";
//	spell			= 	SPL_Lum5;

	description		=	NAME_SPL_Lum5;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_COST_Lum5;
};
*/
///*******************************************************************************************
///	Special spells
///*******************************************************************************************
instance ItRu_Teleport (ItemPR_Spell)
{
	visual			=	"ItMi_StoneOfTeleport.3ds";
//	spell			= 	SPL_Teleport;
	description		=	NAME_SPL_Teleport;
};
instance ItRu_Transform (ItemPR_Spell)
{
	visual 			=	"ItMi_StoneOfTransform.3ds";
	spell			= 	SPL_Transform;
	description		=	NAME_SPL_Transform;
};
instance ItRu_Summon (ItemPR_Spell)
{
	visual 			=	"ItMi_StoneOfSummon.3ds";
//	spell			= 	SPL_Summon;
	description		=	NAME_SPL_Summon;
};
///*******************************************************************************************
///	WzA spells
///*******************************************************************************************
instance ItRu_cB_Fireball (ItemPR_Spell)
{
	visual			=	"ItRu_InstantFireball.3DS";
//	spell			= 	SPL_cB_Fireball;
	
	description		=	NAME_SPL_cB_Fireball;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_cSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_cSpells;
};
instance ItRu_cR_Fireball (ItemPR_Spell)
{
	visual			=	"ItRu_InstantFireball.3DS";
//	spell			= 	SPL_cR_Fireball;
	
	description		=	NAME_SPL_cR_Fireball;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_cSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_cSpells;
};
instance ItRu_cG_Fireball (ItemPR_Spell)
{
	visual			=	"ItRu_InstantFireball.3DS";
//	spell			= 	SPL_cG_Fireball;
	
	description		=	NAME_SPL_cG_Fireball;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_cSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_cSpells;
};
instance ItRu_cY_Fireball (ItemPR_Spell)
{
	visual			=	"ItRu_InstantFireball.3DS";
//	spell			= 	SPL_cY_Fireball;
	
	description		=	NAME_SPL_cY_Fireball;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_cSpells;
	TEXT[2]			=	NAME_Dam_Magic;
//	COUNT[2]		=	SPL_Damage_cSpells;
};


































// Runen
// Paladin Runen 	

//********************************************************************************************
//Joly: Macht die Runen nicht zu teuer, es sind Produktionsitems -> EXPLOID!!!!!!!!!!!
//********************************************************************************************

const 	string 	Name_PaladinSpell		=	"Czar Paladyna"; 	
const	int	Value_Ru_PalLight			=	500;	
const	int	Value_Ru_PalLightHeal		=	500;
const	int	Value_Ru_PalHolyBolt		=	500;
const	int	Value_Ru_PalMediumHeal		=	2000;
const	int	Value_Ru_PalRepelEvil		=	2000;
const	int	Value_Ru_PalFullHeal		=	3000;
const	int	Value_Ru_PalDestroyEvil		=	3000;

//********************************************************************************************
//Joly: Macht die Runen nicht zu teuer, es sind Produktionsitems -> EXPLOID!!!!!!!!!!!
//********************************************************************************************

// Kreis 1
const	int	Value_Ru_Light				=	500;// Lehrer Parlan
const	int	Value_Ru_Firebolt			=	500;// Lehrer Hyglas 
const	int	Value_Ru_Zap				=	500;// Lehrer Marduk
const	int	Value_Ru_LightHeal			=	500;// Lehrer Parlan
const	int	Value_Ru_SumGobSkel			=	500;// Lehrer Karras
// Kreis 2	
const	int	Value_Ru_InstantFireball	=	1000;// Lehrer Hyglas
const	int	Value_Ru_Icebolt			=	1000;// Lehrer Marduk
const	int	Value_Ru_SumWolf			=	1000;// Lehrer Karras
const	int	Value_Ru_Windfist			=	1000;
const	int	Value_Ru_Sleep				=	1000;
// Kreis 3
const	int	Value_Ru_MediumHeal			=	1500;// Lehrer Parlan
const	int	Value_Ru_SumSkel			=	1500;// Lehrer Karras
const	int	Value_Ru_Fear				=	1500;
const	int	Value_Ru_IceCube			=	1500;// Lehrer Marduk
const	int	Value_Ru_ThunderBall		=	1500;// Lehrer Marduk
const	int	Value_Ru_Firestorm			=	1500;// Lehrer Hyglas
// Kreis 4
const	int	Value_Ru_SumGol				=	2000;// Lehrer Karras
const	int	Value_Ru_HarmUndead			=	2000;
const	int	Value_Ru_LightningFlash		=	2000;// Lehrer Marduk
const	int	Value_Ru_ChargeFireball		=	2000;// Lehrer Hyglas 
// Kreis 5
const	int	Value_Ru_IceWave			=	2500;// Lehrer Marduk
const	int	Value_Ru_SumDemon			=	2500;// Lehrer Karras
const	int	Value_Ru_FullHeal			=	2500;// Lehrer Parlan
const	int	Value_Ru_Pyrokinesis		=	2500;// Lehrer Hyglas
// Kreis 6 		
const	int	Value_Ru_Firerain			=	3000;// Lehrer Hyglas
const	int	Value_Ru_BreathOfDeath		=	3000;
const	int	Value_Ru_MassDeath			=	3000;
const	int	Value_Ru_MasterOfDisaster	=	3000;
const	int	Value_Ru_ArmyOfDarkness		=	3000;// Lehrer Karras
const	int	Value_Ru_Shrink				=	3000;

//TeleportRunen
const int	Value_Ru_PalTeleportSecret		=	500;
const int	Value_Ru_TeleportSeaport		=	500;
const int	Value_Ru_TeleportMonastery		=	500;
const int	Value_Ru_TeleportFarm			=	500;
const int	Value_Ru_TeleportXardas			=	500;
const int	Value_Ru_TeleportPassNW			=	500;
const int	Value_Ru_TeleportPassOW			=	500;
const int	Value_Ru_TeleportOC				=	500;
const int	Value_Ru_TeleportOWDemonTower	=	500;
const int	Value_Ru_TeleportTaverne		=	500;

// Kreis des Wassers
const	int	Value_Ru_Icelance			=	1000;
const	int	Value_Ru_Whirlwind			=	1000;
const	int	Value_Ru_Thunderstorm		=	1500;
const	int	Value_Ru_Geyser				=	1500;
const	int	Value_Ru_Waterfist			=	2000;


// Maya Magic
const	int	Value_Ru_Greententacle		=	2500;
const	int	Value_Ru_Swarm				=	1500;
const	int	Value_Ru_Energyball			=	3500;
const	int	Value_Ru_SuckEnergy			=	3500;
const	int	Value_Ru_Skull				=	2000;
const 	int Value_Ru_SummonGuardian		=	2000;
const 	int Value_Ru_SummonZombie		=	2000;

//Dummies
const int Value_Ru_Beliar					= 100;
const int Value_Ru_Water					= 200;

/*******************************************************************************************/
INSTANCE ItRu_PalLight (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_PalLight;

	visual				=	"ItRu_PalLight.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_PalLight;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalLight;
	
	TEXT	[0]			=	Name_PaladinSpell	;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_PalLight;
	
	TEXT	[2]			=	NAME_Duration;		
	COUNT	[2]			=	SPL_Duration_PalLIGHT;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
}; 
/*******************************************************************************************/
INSTANCE ItRu_PalLightHeal (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_PalLightHeal;

	visual				=	"ItRu_PalLightHeal.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_PalLightHeal;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalLightHeal;
	
	TEXT	[0]			=	Name_PaladinSpell	;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_PalLightHeal;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_PalLightHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_PalMediumHeal (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_PalMediumHeal;

	visual				=	"ItRu_PalMediumHeal.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_PalMediumHeal;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalMediumHeal;
	
	TEXT	[0]			=	Name_PaladinSpell	;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_PalMediumHeal;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_PalMediumHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_PalFullHeal (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_PalFullHeal;

	visual				=	"ItRu_PalFullHeal.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_PalFullHeal;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalFullHeal;
	
	TEXT	[0]			=	Name_PaladinSpell	;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_PalFullHeal;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_PalFullHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/

INSTANCE ItRu_PalRepelEvil (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_PalRepelEvil;

	visual				=	"ItRu_PalRepelEvil.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_PalRepelEvil;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_PalRepelEvil;

	TEXT	[0]			=	Name_PaladinSpell	;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_PalRepelEvil;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_Damage_PalRepelEvil;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_PalTeleportSecret (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value				=	Value_Ru_PalTeleportSecret;
	
	visual				=	"ItRu_PalTeleportSecret.3DS";	
	material			=	MAT_STONE;

	spell				= 	SPL_PalTeleportSecret;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_PalTeleportSecret;
	
	TEXT	[0]			=	Name_PaladinSpell	;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportSeaport (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportSeaport;
	
	visual				=	"ItRu_TeleportSeaport.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportSeaport;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportSeaport;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportMonastery (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportMonastery;

	
	visual				=	"ItRu_TeleportMonastery.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportMonastery;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportMonastery;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportFarm (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportFarm;
	
	visual				=	"ItRu_TeleportFarm.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportFarm;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportFarm;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportXardas (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportXardas;
	
	visual				=	"ItRu_TeleportXardas.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportXardas;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportXardas;
	

	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportPassNW (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportPassNW;
	
	visual				=	"ItRu_TeleportPassNW.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportPassNW;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportPassNW;
	
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportPassOW (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportPassOW;
	
	visual				=	"ItRu_TeleportPassOW.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportPassOW;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportPassOW;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_TeleportOC (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value 				=	Value_Ru_TeleportOC;
	
	visual				=	"ItRu_TeleportOC.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportOC;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOC;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/

INSTANCE ItRu_TeleportOWDemonTower (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value				=	Value_Ru_TeleportOWDemonTower;
	
	visual				=	"ItRu_Teleport_2.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportOWDemonTower;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportOWDemonTower;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

INSTANCE ItRu_TeleportTaverne (C_Item) 
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;
	
	value				=	Value_Ru_TeleportTaverne;
	
	visual				=	"ItRu_Teleport_2.3ds";	
	material			=	MAT_STONE;

	spell				= 	SPL_TeleportTaverne;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			= 	NAME_SPL_TeleportTaverne;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_TELEPORT;
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_FireBolt (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Firebolt;

	visual				=	"ItRu_FireBolt.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_FIREBOLT;
	mag_circle			=	1;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Firebolt;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
			
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_COST_FIREBOLT;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_DAMAGE_FIREBOLT;
	
	TEXT	[5]			=	NAME_Value;				
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Zap (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Zap;

	visual				=	"ItRu_Zap.3DS";
	material			=	MAT_STONE;
	
	mag_circle			=	1;
	spell				= 	SPL_Zap;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_Zap;
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Zap;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_DAMAGE_ZAP;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_LightHeal (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_LightHeal;

	visual				=	"ItRu_LightHeal.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_LightHeal;
	mag_circle			= 	1;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_LightHeal;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;		
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_LightHeal;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_LightHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_SumGobSkel (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SumGobSkel;

	visual				=	"ItRu_SumGobSkel.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SummonGoblinSkeleton;
	mag_circle			= 	1;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonGoblinSkeleton;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_SummonGoblinSkeleton;
	
	TEXT 	[2]			=   "Niespokojne koœci";
	TEXT 	[3]			=   "martwych goblinów.";
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
// Kreis 2	
INSTANCE ItRu_InstantFireball (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_InstantFireball;

	visual				=	"ItRu_InstantFireball.3DS";
	material			=	MAT_STONE;
	
	mag_circle			= 	2;
	spell				= 	SPL_InstantFireball;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_InstantFireball;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;		
	
	TEXT	[1]			=	NAME_Manakosten;							
	COUNT	[1]			=	SPL_COST_InstantFireball;
	
	TEXT	[2]			=	NAME_Dam_Magic;	
	COUNT	[2]			=	SPL_DAMAGE_InstantFireball;
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Icebolt (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Icebolt;

	visual				=	"ItRu_Icebolt.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_Icebolt;
	mag_circle 			=	2;


	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Icebolt;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_Icebolt;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_Icebolt;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_SumWolf (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SumWolf;

	visual				=	"ItRu_SumWolf.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SummonWolf;
	mag_circle			= 	2;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonWolf;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;		
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_SummonWolf;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Windfist (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Windfist;

	visual				=	"ItRu_Windfist.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_WINDFIST;
	mag_circle 			=	2;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_WINDFIST;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;						
	
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
// Kreis 3
INSTANCE ItRu_MediumHeal (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_MediumHeal;

	visual				=	"ItRu_MediumHeal.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_MediumHeal;
	mag_circle			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_MediumHeal;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_MediumHeal;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_MediumHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_LightningFlash (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_LightningFlash;

	visual				=	"ItRu_LightningFlash.3DS";
	material			=	MAT_STONE;
	
	mag_circle			=	4;
	spell				= 	SPL_LightningFlash;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			=	NAME_SPL_LightningFlash;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_LightningFlash;
	
	TEXT	[2]			=	NAME_Dam_Magic;			
	COUNT	[2]			=	SPL_Damage_LightningFlash;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/	
INSTANCE ItRu_ChargeFireball (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_ChargeFireball;

	visual				=	"ItRu_ChargeFireball.3DS";
	material			=	MAT_STONE;
	
	mag_circle			= 	4;
	
	spell				= 	SPL_ChargeFireball;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";
	
	description			= 	NAME_SPL_ChargeFireball;
	
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;						
	
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
INSTANCE ItRu_SumSkel (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SumSkel;

	visual				=	"ItRu_SumSkel.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SUMMONSKELETON;
	mag_circle			= 	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonSkeleton;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_SUMMONSKELETON;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/	
INSTANCE ItRu_IceCube (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_IceCube;

	visual				=	"ItRu_IceCube.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_ICECUBE;
	mag_circle 			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_IceCube;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_ICECUBE;
	
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
// Kreis 4
INSTANCE ItRu_ThunderBall (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_ThunderBall;

	visual				=	"ItRu_ThunderBall.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_ChargeZap;
	mag_circle 			=	3;		

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_ChargeZap;
	
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;						
	
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
INSTANCE ItRu_SumGol (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SumGol;

	visual				=	"ItRu_SumGol.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SummonGolem;
	mag_circle			= 	4;
	

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonGolem;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_SummonGolem;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_HarmUndead (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_HarmUndead;

	visual				=	"ItRu_HarmUndead.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_DESTROYUNDEAD;
	mag_circle			= 	4;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_DestroyUndead;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_DESTROYUNDEAD;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_DESTROYUNDEAD;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Pyrokinesis (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Pyrokinesis;

	visual				=	"ItRu_Pyrokinesis.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_PYROKINESIS;
	mag_circle 			=	5;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Pyrokinesis;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;						
	
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
// Kreis 5
INSTANCE ItRu_Firestorm (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Firestorm;

	visual				=	"ItRu_Firestorm.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_FIRESTORM;
	mag_circle 			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			= 	NAME_SPL_Firestorm;
	
	TEXT	[0]			=	NAME_Mag_Circle;							
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;							
	COUNT	[1]			=	SPL_Cost_FireStorm;
	
	TEXT	[2]			=	NAME_Dam_Magic;	
	COUNT	[2]			=	SPL_Damage_FireStorm;
	
	TEXT	[5]			=	NAME_Value;									
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_IceWave (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_IceWave;

	visual				=	"ItRu_IceWave.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_ICEWAVE;
	mag_circle 			=	5;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_IceWave;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_IceWave;
	
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
INSTANCE ItRu_SumDemon (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SumDemon;

	visual				=	"ItRu_SumDemon.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SUMMONDEMON;
	mag_circle			=	5;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_SummonDemon;
	
	TEXT	[0]			=	NAME_Mag_Circle;
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_SUMMONDEMON;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_FullHeal (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_FullHeal;

	visual				=	"ItRu_FullHeal.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_FullHeal;
	mag_circle			=	5;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	NAME_SPL_FullHeal;
	
	TEXT	[0]			=	NAME_Mag_Circle;
	COUNT	[0]			=	mag_circle;	
	
	TEXT	[1]			=	NAME_Manakosten;		
	COUNT	[1]			=	SPL_Cost_FullHeal;
	
	TEXT	[2]			=	NAME_HealingPerCast;		
	COUNT	[2]			=	SPL_Heal_FullHeal;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
// Kreis 6
INSTANCE ItRu_Firerain (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Firerain;

	visual				=	"ItRu_Firerain.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_FIRERAIN;
	mag_circle 			= 	6;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_YELLOW";

	description			=	NAME_SPL_Firerain;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_FIRERAIN;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_FIRERAIN;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_BreathOfDeath (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_BreathOfDeath;

	visual				=	"ItRu_BreathOfDeath.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_BREATHOFDEATH;
	mag_circle 			=	6;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_BreathOfDeath;
	
	TEXT	[0]			=	NAME_Mag_Circle;			
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_BREATHOFDEATH;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_BREATHOFDEATH;
		
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/

INSTANCE ItRu_MassDeath (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Ru_MassDeath;

	visual				=	"ItRu_MassDeath.3ds";
	material			=	MAT_STONE;

	spell				= 	SPL_MASSDEATH;
	mag_circle 			=	6;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_MassDeath;
	
	TEXT	[0]			=	NAME_Mag_Circle;
	COUNT	[0]			=	mag_circle;

	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_MASSDEATH;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_MASSDEATH;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_ArmyOfDarkness (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_ArmyofDarkness;

	visual				=	"ItRu_ArmyOfDarkness.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_ARMYOFDARKNESS;
	mag_circle			=	6;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_ArmyOfDarkness;
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_ARMYOFDARKNESS;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

//#########################
//NPC Spell
//#########################

INSTANCE ItRu_Deathball	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	0;

	visual				=	"ItRu_PalRepelEvil.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Deathball;
	mag_circle 			=	6;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";

	description			=	"Œmiertelna kula";
	
	TEXT	[0]			=	NAME_Mag_Circle;
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_COST_Deathball;
	
	TEXT	[2]			=	NAME_Dam_Magic;				
	COUNT	[2]			=	SPL_DAMAGE_Deathball;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Thunderstorm (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Thunderstorm;

	visual				=	"ItRu_Water05.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Thunderstorm;
	mag_circle			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Thunderstorm;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Thunderstorm;
	
	TEXT	[2]			=	NAME_Damage;				
	COUNT	[2]			=	SPL_DAMAGE_Thunderstorm;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;

};
/*******************************************************************************************/
INSTANCE ItRu_Whirlwind (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Whirlwind;

	visual				=	"ItRu_Water02.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Whirlwind;
	mag_circle			=	2;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Whirlwind;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Whirlwind;
	
	TEXT	[2]			=	NAME_Duration;				
	COUNT	[2]			=	SPL_TIME_WHIRLWIND;
	
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Geyser (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Geyser;

	visual				=	"ItRu_Water01.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Geyser;
	mag_circle			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Geyser;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Geyser;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Geyser;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
/*******************************************************************************************/
INSTANCE ItRu_Waterfist	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Waterfist;

	visual				=	"ItRu_Water03.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Waterfist;
	mag_circle			=	4;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Waterfist;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Waterfist;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Waterfist;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_Icelance	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Icelance;

	visual				=	"ItRu_Water04.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Icelance;
	mag_circle			=	2;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_BLUE";

	description			=	NAME_SPL_Icelance;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Icelance;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Icelance;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

//#############################################
//		Beliar
//#############################################


/*******************************************************************************************/
INSTANCE ItRu_BeliarsRage	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Energyball;

	visual				=	"ItRu_Beliar04.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Energyball;
	mag_circle			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_BeliarsRage;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Energyball;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_DAMAGE_Energyball;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_SuckEnergy	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SuckEnergy;

	visual				=	"ItRu_Beliar01.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SuckEnergy;
	mag_circle			=	2;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_SuckEnergy;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_SuckEnergy;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_Damage_SuckEnergy;
	
	TEXT	[3]			=	NAME_Duration;				
	COUNT	[3]			=	SPL_TIME_SuckEnergy;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_GreenTentacle (C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Greententacle;

	visual				=	"ItRu_Beliar03.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Greententacle;
	mag_circle			=	1;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_GreenTentacle;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Greententacle;
	
	TEXT	[2]			=	NAME_Duration;				
	COUNT	[2]			=	SPL_TIME_Greententacle;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_Swarm	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Swarm;

	visual				=	"ItRu_Beliar02.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Swarm;
	mag_circle			=	4;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_Swarm;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_Swarm;
	
	TEXT	[2]			=	NAME_Damage;			
	COUNT	[2]			=	SPL_Swarm_Damage;
	
	TEXT	[3]			=	NAME_Duration;				
	COUNT	[3]			=	SPL_TIME_Swarm;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_Skull	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_Skull;

	visual				=	"ItRu_Beliar05.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_Skull;
	mag_circle			=	5;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_Skull;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_MinManakosten;			
	COUNT	[1]			=	SPL_Cost_Skull;
	
	TEXT	[2]			=	"Potrzebuje ca³ej many.";
	
	
	TEXT	[4]			=	NAME_Damage;			
	COUNT	[4]			=	SPL_Damage_Skull;		
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_SummonZombie	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SummonZombie;

	visual				=	"ItRu_Beliar07.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SummonZombie;
	mag_circle			=	4;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_SummonZombie;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_SummonZombie;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};

/*******************************************************************************************/
INSTANCE ItRu_SummonGuardian	(C_Item)
{
	name 				=	"Runa";

	mainflag 			=	ITEM_KAT_RUNE;
	flags 				=	0;

	value 				=	Value_Ru_SummonGuardian;

	visual				=	"ItRu_Beliar06.3DS";
	material			=	MAT_STONE;

	spell				= 	SPL_SummonGuardian;
	mag_circle			=	3;

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER_RED";

	description			=	NAME_SPL_SummonGuardian;
	
	TEXT	[0]			=	NAME_Mag_Circle;		
	COUNT	[0]			=	mag_circle;
	
	TEXT	[1]			=	NAME_Manakosten;			
	COUNT	[1]			=	SPL_Cost_SummonGuardian;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};