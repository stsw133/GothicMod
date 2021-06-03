///*******************************************************************************************
prototype ItemPR_Spell (C_Item)
{
	name 					=	"Zaklêcie";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MISSION;
};
///*******************************************************************************************
/// common spells
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
//	COUNT[2]		=	SPL_Heal_nHeal;
	TEXT[3]			=	NAME_Duration;
//	COUNT[3]		=	SPL_Heal_nHeal/10;
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
/// common spells
///*******************************************************************************************
instance ItRu_Teleport (ItemPR_Spell)
{
	visual			=	"ITRU_TELEPORT_3.3ds";
//	spell			= 	SPL_Teleport;
	
	description		=	NAME_SPL_Teleport;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Teleport;
	TEXT[2]			=	"Aby runa dzia³a³a nale¿y";
	TEXT[3]			=	"wybraæ kamieñ teleportacji.";
};
instance ItRu_Telekinesis (ItemPR_Spell)
{
	visual			=	"ItRu_Water15.3ds";
//	spell			= 	SPL_Telekinesis;
	
	description		=	NAME_SPL_Telekinesis;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Telekinesis;
};
instance ItRu_Transform (ItemPR_Spell)
{
	visual 			=	"ITRU_TELEPORT_3.3ds";
//	spell			= 	SPL_Transform;
	
	description		=	NAME_SPL_Transform;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Transform;
	TEXT[2]			=	"Aby runa dzia³a³a nale¿y";
	TEXT[3]			=	"wybraæ kamieñ transformacji.";
};
instance ItRu_Summon (ItemPR_Spell)
{
	visual 			=	"ITRU_TELEPORT_3.3ds";
//	spell			= 	SPL_Summon;
	
	description		=	NAME_SPL_Summon;
	TEXT[1]			=	NAME_Manakosten;
//	COUNT[1]		=	SPL_Cost_Summon;
	TEXT[2]			=	"Aby runa dzia³a³a nale¿y";
	TEXT[3]			=	"wybraæ kamieñ przyzwania.";
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
///	npc spells
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
///	Special Spells
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
