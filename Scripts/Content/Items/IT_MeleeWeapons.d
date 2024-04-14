///******************************************************************************************
prototype ItemPR_MeleeWeapon (C_Item)
{
	mainflag 				=	ITEM_KAT_NF;
	flags 					=	ITEM_SWD;
	material 				=	MAT_METAL;
	
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************

func void Equip_2H_2_StaffWeapon()		{ if (Npc_GetTalentSkill(self, NPC_TALENT_2H) >= 2) { Mdl_ApplyOverlayMDS (self, "HUMANS_2HST3.MDS"); }; };
func void UnEquip_2H_2_StaffWeapon()	{ Mdl_RemoveOverlayMDS (self, "HUMANS_2HST3.MDS"); };

var int usingForgedWeapon;
func void Equip_ForgedWeapon()		{ usingForgedWeapon = true; };
func void UnEquip_ForgedWeapon()	{ usingForgedWeapon = false; };

///******************************************************************************************
func void SetItMwAttributes (var C_Item itm, var int type, var int dmg, var int dmgType, var int cond, var int condAtr, var int rng, var int valuePercent)
{
	itm.flags				=	type;
	
	itm.value				=	(dmg*20 + rng - cond*5 + itm.change_value[0]*100) * valuePercent/100;
	if ((dmgType & DAM_FIRE) > 0)
	{
		itm.value += 500;
	};
	
	itm.damageTotal			= 	dmg;
	itm.damageType			=	dmgType;
	itm.range    			=  	rng;
	
	if (condAtr == ATR_STRENGTH)
	{
		itm.cond_atr[0]   	=	ATR_STRENGTH;
		itm.cond_atr[1]   	=	ATR_DEXTERITY;
	}
	else if (condAtr == ATR_DEXTERITY)
	{
		itm.cond_atr[0]   	=	ATR_DEXTERITY;
		itm.cond_atr[1]   	=	ATR_STRENGTH;
	}
	else if (condAtr == ATR_MANA_MAX)
	{
		itm.cond_atr[0]   	=	ATR_MANA_MAX;
		itm.cond_atr[1]   	=	ATR_STRENGTH;
	};
	itm.cond_value[0]  		=	cond;
	itm.cond_value[1]  		=	cond/5;
	
	itm.description			=	itm.name;
	itm.COUNT[1]			=	itm.damageTotal;
	itm.COUNT[2]			=	itm.cond_value[0];
	itm.COUNT[4]			=	itm.range;
	itm.COUNT[5]			=	itm.value;
	
	if		(dmgType == DAM_BLUNT)							{	itm.TEXT[1] = NAME_Dam_Blunt;	}
	else if	(dmgType == DAM_EDGE)							{	itm.TEXT[1] = NAME_Dam_Edge;	}
	else if	(dmgType == DAM_FIRE)							{	itm.TEXT[1] = NAME_Dam_Fire;	}
	else													{	itm.TEXT[1] = NAME_Damage;		};
	
	if		(condAtr == ATR_STRENGTH)						{	itm.TEXT[2] = NAME_Str_needed;	}
	else if	(condAtr == ATR_DEXTERITY)						{	itm.TEXT[2] = NAME_Dex_needed;	}
	else if	(condAtr == ATR_MANA_MAX)						{	itm.TEXT[2] = NAME_Mana_needed;	};
	
	if		(type == ITEM_DAG)								{	itm.TEXT[4] = NAME_SecHanded;	}
	else if	(type == ITEM_SWD || type == ITEM_AXE)			{	itm.TEXT[4] = NAME_OneHanded;	}
	else if	(type == ITEM_2HD_SWD || type == ITEM_2HD_AXE)	{	itm.TEXT[4] = NAME_TwoHanded;	};
	/*
	if (type == ITEM_2HD_AXE)
	{
		itm.on_equip = Equip_2H_2_StaffWeapon;
		itm.on_unequip = UnEquip_2H_2_StaffWeapon;
	};
	*/
};
///******************************************************************************************
/// Junk
///******************************************************************************************
instance ItMw_1h_Bau_Mace (ItemPR_MeleeWeapon)
{
	name 					=	"Laga";
	material				=	MAT_WOOD;
	visual 					=	"ItMw_010_1h_Club_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 1,DAM_BLUNT, 5,ATR_STRENGTH, 70, 1);
};
instance ItMw_1h_Misc_Sword (ItemPR_MeleeWeapon) 
{
	name 					=	"Zardzewia�y kr�tki miecz";
	visual 					=	"ItMw_020_1h_sword_old_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 6,DAM_EDGE, 30,ATR_STRENGTH, 70, 1);
};
instance ItMW_Addon_Hacker_1h_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Zardzewia�a maczeta";
	visual 					=	"ItMw_1H_Machete_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 7,DAM_EDGE, 35,ATR_STRENGTH, 70, 1);
};
instance ItMw_1h_Misc_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Zardzewia�y top�r";
	visual 					=	"ItMw_025_2h_Misc_Axe_old_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 8,DAM_EDGE, 40,ATR_STRENGTH, 80, 1);
};
instance ItMw_2H_Sword_M_01 (ItemPR_MeleeWeapon) 
{
	name 					=	"Zardzewia�y miecz dwur�czny";
	visual 					=	"ItMw_025_2h_Sword_old_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 10,DAM_EDGE, 50,ATR_STRENGTH, 100, 1);
};
instance ItMW_Addon_Hacker_2h_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Wielka zardzewia�a maczeta";
	visual 					=	"ItMw_2H_Machete_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 11,DAM_EDGE, 55,ATR_STRENGTH, 95, 1);
};
instance ItMw_2H_OldScythe (ItemPR_MeleeWeapon)
{
	name 					=	"Zardzewia�a kosa";
	visual 					=	"ITROX_2H_SCYTHE_OLD.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 12,DAM_EDGE, 60,ATR_STRENGTH, 130, 1);
};
///******************************************************************************************
/// NPC's weapons
///******************************************************************************************
instance ItMw_1H_Mace_L_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Pogrzebacz";
	material				=	MAT_WOOD;
	visual 					=	"Itmw_005_1h_poker_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10);
};
instance ItMw_1H_Mace_L_03 (ItemPR_MeleeWeapon)
{
	name 					=	"Pa�ka";
	material				=	MAT_WOOD;
	visual 					=	"ItMw_008_1h_mace_light_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 10,ATR_STRENGTH, 70, 10);
};
/// ------ MIL ------
instance ItMw_1h_Mil_Sword (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski szeroki miecz";
	visual 					=	"Itmw_025_1h_Mil_Sword_broad_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 40,ATR_STRENGTH, 90, 10);
};
/// ------ PAL ------
instance ItMw_1h_Pal_Sword (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz paladyna";
	visual 					=	"ItMw_030_1h_PAL_Sword_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 70,ATR_STRENGTH, 70, 10);
};
instance ItMw_2h_Pal_Sword (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz dwur�czny paladyna";
	visual 					=	"ItMw_040_2h_PAL_Sword_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 45,DAM_EDGE, 90,ATR_STRENGTH, 110, 10);
};
/// ------ VLK ------
instance ItMw_1h_Vlk_Mace (ItemPR_MeleeWeapon)
{
	name 					=	"Laska";
	material				=	MAT_WOOD;
	visual 					=	"Itmw_008_1h_pole_01.3ds";
	SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 7,ATR_STRENGTH, 70, 10);
};
instance ItMw_1h_Vlk_Dagger (ItemPR_MeleeWeapon)
{
	name 					=	"Sztylet";
	visual 					=	"Itmw_005_1h_dagger_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 10,ATR_DEXTERITY, 50, 10);
};
instance ItMw_1H_Mace_L_04 (ItemPR_MeleeWeapon)
{
	name 					=	"M�ot kowalski";
	visual 					=	"ItMw_010_1h_sledgehammer_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 10,DAM_BLUNT, 20,ATR_STRENGTH, 30, 10);
};
instance ItMw_1h_Vlk_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r";
	visual 					=	"Itmw_010_1h_vlk_hatchet_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 10,DAM_EDGE, 20,ATR_STRENGTH, 50, 10);
};
instance ItMw_1h_Vlk_Sword (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz";
	visual 					=	"ItMw_018_1h_SwordCane_01.3ds";
	SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 20,ATR_DEXTERITY, 70, 10);
};
/// ------ NOV ------
instance ItMw_1h_Nov_Mace (ItemPR_MeleeWeapon)
{
	name 					=	"Pika bojowa";
	material				=	MAT_WOOD;
	visual 					=	"ItMw_020_2h_Nov_Staff_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 15,DAM_BLUNT, 30,ATR_STRENGTH, 130, 10);
};
instance ItMw_RangerStaff_Addon (ItemPR_MeleeWeapon)
{
	name 					=	"Pika bojowa Wodnego Kr�gu";
	material				=	MAT_WOOD;
	visual 					=	"ItMw_020_2h_Nov_Staff_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 35,ATR_STRENGTH, 130, 10);
};
/// ------ SLD ------
instance ItMw_1h_Sld_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski tasak";
	visual 					=	"ItMw_025_1h_sld_axe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 20,DAM_EDGE, 40,ATR_STRENGTH, 70, 10);
};
instance ItMw_1h_Sld_Sword (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski miecz";
	visual 					=	"ItMw_025_1h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 40,ATR_STRENGTH, 70, 10);
};
instance ItMw_2h_Sld_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski top�r bojowy";
	visual 					=	"ItMw_035_2h_sld_axe_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_EDGE, 60,ATR_STRENGTH, 80, 10);
};
instance ItMw_2h_Sld_Sword (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski miecz dwur�czny";
	visual 					=	"ItMw_035_2h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 30,DAM_EDGE, 60,ATR_STRENGTH, 130, 10);
};
/// ------ BAU ------
instance ItMw_1h_Bau_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Sierp";
	visual 					=	"Itmw_007_1h_sickle_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 5,DAM_EDGE, 5,ATR_STRENGTH, 50, 10);
};
instance ItMw_Sense (ItemPR_MeleeWeapon)
{
	name 					=	"Ma�a kosa";
	visual 					=	"ItMw_012_1h_Scythe_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 10,DAM_EDGE, 15,ATR_STRENGTH, 60, 10);
};
instance ItMw_2H_Scythe (ItemPR_MeleeWeapon)
{
	name 					=	"Kosa";
	visual 					=	"ITROX_2H_SCYTHE.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_EDGE, 60,ATR_STRENGTH, 130, 10);
};
/// ------ BDT ------
instance ItMw_Nagelknueppel (ItemPR_MeleeWeapon)
{
	name 					=	"Maczuga z kolcami";
	material				=	MAT_WOOD;
	visual 					=	"ItMw_012_1h_Nailmace_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 10,DAM_BLUNT, 15,ATR_STRENGTH, 60, 10);
};
instance ItMw_Addon_BanditTrader (ItemPR_MeleeWeapon)
{
	name 					=	"Pa�asz bandyt�w";
	visual 					=	"ItMw_1h_BanditWeapon.3ds";
	SetItMwAttributes (self, ITEM_SWD, 15,DAM_EDGE, 30,ATR_DEXTERITY, 90, 10);
	TEXT[0]					= 	"Na g�owicy wyci�to liter� 'F'";
};
/// ------ STRF ------
instance ItMw_2H_Axe_L_01 (ItemPR_MeleeWeapon) 
{
	name 					=	"Kilof";
	visual 					=	"ItMw_020_2h_Pickaxe_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE|ITEM_NSPLIT, 15,DAM_EDGE, 30,ATR_STRENGTH, 60, 10);
};
/// ------ PIR ------
instance ItMw_Addon_PIR1hAxe (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r pok�adowy";
	visual 					=	"ItMw_030_1h_axe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 25,DAM_EDGE, 50,ATR_STRENGTH, 60, 10);
};
instance ItMw_Addon_PIR1hSword (ItemPR_MeleeWeapon)
{	
	name 					=	"Kordelas";
	visual 					=	"ItMw_030_1h_sword_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 50,ATR_STRENGTH, 70, 10);
};
instance ItMw_Addon_PIR2hAxe (ItemPR_MeleeWeapon)
{
	name 					=	"Mia�d�ydeska";
	visual 					=	"ItMw_070_2h_axe_heavy_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 70,ATR_STRENGTH, 80, 10);
};
instance ItMw_Addon_PIR2hSword (ItemPR_MeleeWeapon)
{	
	name 					=	"Miecz pok�adowy";
	visual 					=	"ItMw_070_2h_sword_09.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 35,DAM_EDGE, 70,ATR_STRENGTH, 120, 10);
};
/// ------ other ------
instance ItMw_1h_NordmarSword (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz nordmarczyka";
	visual 					=	"ItMw_1h_NordmarSchwert.3DS";
	SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 50,ATR_STRENGTH, 70, 10);
};
instance ItMw_Addon_Nomad (ItemPR_MeleeWeapon)
{	
	name 					=	"Szabla koczownika";
	visual 					=	"ItMw_NomadSabre.3DS";
	SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 60,ATR_STRENGTH, 75, 10);
};
///******************************************************************************************
/// Goblin weapons
///******************************************************************************************
instance ItMw_1H_Goblin_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Lagush";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_1h_Oberschenkelknochen.3DS";
	SetItMwAttributes (self, ITEM_AXE, 2,DAM_BLUNT, 10,ATR_STRENGTH, 90, 1);
};
instance ItMw_1H_Goblin_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Parush";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_1h_Oberschenkelknochen_Nagel.3DS";
	SetItMwAttributes (self, ITEM_AXE, 3,DAM_BLUNT, 15,ATR_STRENGTH, 90, 1);
};
instance ItMw_1H_Goblin_03 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Morush";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_1h_Oberschenkelknochen_Nagel_Ring.3DS";
	SetItMwAttributes (self, ITEM_AXE, 4,DAM_BLUNT, 20,ATR_STRENGTH, 90, 1);
};
instance ItMw_1H_Goblin_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Dopadush";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_1h_Oberschenkelknochen_schaedelbandage.3DS";
	SetItMwAttributes (self, ITEM_AXE, 5,DAM_BLUNT, 25,ATR_STRENGTH, 90, 1);
};
///******************************************************************************************
/// Orc weapons
///******************************************************************************************
instance ItMw_2H_Draconian (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Drak";
	visual 					=	"ItMw_2H_Draconian.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 35,DAM_EDGE, 105,ATR_STRENGTH, 100, 1);
};
/// ------ Axe ------
instance ItMw_2H_OrcAxe_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Pach";
	visual 					=	"ItMw_2H_OrcAxe_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_EDGE, 75,ATR_STRENGTH, 100, 1);
};
instance ItMw_2H_OrcAxe_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush UrRok";
	visual 					=	"ItMw_2H_OrcAxe_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_EDGE, 90,ATR_STRENGTH, 110, 1);
};
instance ItMw_2H_OrcAxe_03 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Agash";
	visual 					=	"ItMw_2H_OrcAxe_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 35,DAM_EDGE, 105,ATR_STRENGTH, 110, 1);
};
instance ItMw_2H_OrcAxe_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush BrokDar";
	visual 					=	"ItMw_2H_OrcAxe_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 45,DAM_EDGE, 135,ATR_STRENGTH, 130, 1);
};
/// ------ Mace ------
instance ItMw_2H_OrcMace_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Karrok";
	visual 					=	"ItMw_2H_OrcMace_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT, 90,ATR_STRENGTH, 110, 1);
};
instance ItMw_2H_OrcMace_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush EdRosh";
	visual 					=	"ItMw_2H_OrcMace_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_BLUNT, 120,ATR_STRENGTH, 120, 1);
};
/// ------ Staff ------
instance ItMw_2H_OrcStaff_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Nabush";
	visual 					=	"ItMw_2H_OrcStaff_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 75,ATR_STRENGTH, 100, 1);
};
/// ------ Sword ------
instance ItMw_2H_OrcSword_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Varrok";
	visual 					=	"ItMw_2H_OrcSword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 40,DAM_EDGE, 120,ATR_STRENGTH, 100, 1);
};
instance ItMw_2H_OrcSword_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush Tarrok";
	visual 					=	"ItMw_2H_OrcSword_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 45,DAM_EDGE, 135,ATR_STRENGTH, 100, 1);
};
/// ------ Elite ------
instance ItMw_2H_OrcElite_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Krush BrokRosh";
	visual 					=	"ItMw_2H_OrcElite_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 50,DAM_EDGE, 150,ATR_STRENGTH, 140, 1);
};
///******************************************************************************************
/// Chapter 1 - trader
///******************************************************************************************
instance ItMw_1H_Sword_L_03 (ItemPR_MeleeWeapon)
{
	name 					=	"N� na wilki";
	visual 					=	"ItMw_012_1h_Knife_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 20,DAM_EDGE, 10,ATR_STRENGTH, 50, 100);
};
instance ItMw_ShortSword1 (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski kr�tki miecz";
	visual 					=	"ItMw_010_1h_Sword_short_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 12,ATR_STRENGTH, 50, 100);
};
instance ItMw_ShortSword2 (ItemPR_MeleeWeapon)
{
	name 					=	"Kr�tki miecz str�a";
	visual 					=	"ItMw_012_1h_Sword_short_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 25,DAM_EDGE, 15,ATR_STRENGTH, 50, 100);
};
instance ItMw_1h_Dyaebl (ItemPR_MeleeWeapon)
{
	name 					=	"Dyaebl";
	visual 					=	"ItMw_1h_Dyaebl.3DS";
	SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 25,ATR_DEXTERITY, 50, 100);
};
instance ItMw_ShortSword3 (ItemPR_MeleeWeapon)
{
	name 					=	"Kr�tki miecz";
	visual 					=	"ItMw_016_1h_Sword_short_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 30,DAM_EDGE, 18,ATR_STRENGTH, 50, 100);
};
instance ItMw_2h_Bau_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r drwala";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_020_2h_Axe_Lumberjack_01.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 40,DAM_EDGE, 40,ATR_STRENGTH, 70, 100);
};
instance ItMw_Nagelkeule (ItemPR_MeleeWeapon)
{
	name 					=	"Pa�ka z kolcami";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_018_1h_Mace_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 40,DAM_BLUNT, 35,ATR_STRENGTH, 70, 100);
};
instance ItMw_ShortSword4 (ItemPR_MeleeWeapon)
{
	name 					=	"Wilczy kie�";
	visual 					=	"ItMw_020_1h_Sword_short_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 35,DAM_EDGE, 21,ATR_STRENGTH, 50, 100);
};
instance ItMw_ShortSword5 (ItemPR_MeleeWeapon)
{
	name 					=	"Dobry kr�tki miecz";
	visual 					=	"ItMw_025_1h_Sword_short_05.3DS";
	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 24,ATR_STRENGTH, 50, 100);
};
instance ItMw_Kriegskeule (ItemPR_MeleeWeapon)
{
	name 					=	"Pa�ka bojowa";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_022_1h_mace_war_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 50, 100);
};
instance ItMw_Richtstab (ItemPR_MeleeWeapon)
{
	name 					=	"Kostur s�dziego";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_025_2h_Staff_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_EDGE, 40,ATR_STRENGTH, 110, 100);
};
instance ItMw_Kriegshammer1 (ItemPR_MeleeWeapon) 
{
	name 					=	"M�ot wojenny";
	visual 					=	"ItMw_028_1h_warhammer_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 55,DAM_BLUNT, 55,ATR_STRENGTH, 40, 100);
};
instance ItMw_Hellebarde (ItemPR_MeleeWeapon) 
{
	name 					=	"Halabarda";
	visual 					=	"itmw_028_2h_halberd_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 55,DAM_EDGE, 55,ATR_STRENGTH, 80, 100);
};
instance ItMw_Nagelkeule2 (ItemPR_MeleeWeapon)
{
	name 					=	"Ci�ka pa�ka z kolcami";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_018_1h_Mace_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 60,DAM_BLUNT, 60,ATR_STRENGTH, 60, 100);
};
instance ItMw_Schiffsaxt (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r marynarski";
	visual 					=	"ItMw_030_1h_axe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 60,DAM_EDGE, 60,ATR_STRENGTH, 70, 100);
};
///******************************************************************************************
/// Chapter 1 - made by player
///******************************************************************************************
instance ItMw_1H_Common_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz";
	visual 					=	"ItMw_030_1h_Common_Sword_01.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE, 30,ATR_STRENGTH, 90, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_Schwert1 (ItemPR_MeleeWeapon)
{
	name 					=	"Dobry miecz";
	visual 					=	"ItMw_035_1h_Sword_04.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 50,ATR_STRENGTH, 70, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
///******************************************************************************************
/// Chapter 2 - trader
///******************************************************************************************
instance ItMw_Schwert (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski d�ugi miecz";
	visual 					=	"ItMw_030_1h_sword_long_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 65,ATR_STRENGTH, 90, 100);
};
instance ItMw_2H_WarScythe (ItemPR_MeleeWeapon)
{
	name 					=	"Kosa bojowa";
	visual 					=	"ITROX_2H_SCYTHE_WAR.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 65,DAM_EDGE, 65,ATR_STRENGTH, 130, 100);
};
instance ItMw_Piratensaebel (ItemPR_MeleeWeapon)
{
	name 					=	"Piracki kordelas";
	visual 					=	"ItMw_030_1h_sword_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 65,DAM_EDGE, 60,ATR_STRENGTH, 70, 100);
};
instance ItMw_Stabkeule (ItemPR_MeleeWeapon) 
{
	name 					=	"Bu�awa drzewcowa";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_032_2h_staff_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_BLUNT, 70,ATR_STRENGTH, 130, 100);
};
instance ItMw_FaustSchwert (ItemPR_MeleeWeapon)
{
	name 					=	"Szpony";
	visual 					=	"ITROX_FAUSTSCHWERT.3DS";
	SetItMwAttributes (self, ITEM_SWD, 70,DAM_EDGE, 55,ATR_DEXTERITY, 60, 100);
};
instance ItMw_Steinbrecher (ItemPR_MeleeWeapon)
{
	name 					=	"Oskard";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_035_1h_mace_war_02.3DS";
	SetItMwAttributes (self, ITEM_AXE, 75,DAM_BLUNT, 75,ATR_STRENGTH, 50, 100);
};
instance ItMW_Addon_Hacker_1h_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Maczeta";
	visual 					=	"ItMw_1H_Machete_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 75, 100);
};
instance ItMw_Zweihaender1 (ItemPR_MeleeWeapon) 
{
	name 					=	"Lekki miecz dwur�czny";
	visual 					=	"ItMw_032_2h_sword_light_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 75,ATR_STRENGTH, 110, 100);
};
instance ItMw_Spicker (ItemPR_MeleeWeapon)
{
	name 					=	"R�biczerep";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_035_1h_mace_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 80,DAM_BLUNT, 80,ATR_STRENGTH, 60, 100);
};
instance ItMw_Streitaxt1 (ItemPR_MeleeWeapon) 
{
	name 					=	"Lekki top�r bojowy";
	visual 					=	"ItMw_035_2h_Axe_light_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 80,DAM_EDGE, 80,ATR_STRENGTH, 70, 100);
};
instance ItMw_GoldenSabre (ItemPR_MeleeWeapon)
{
	name 					=	"Szabla";
	visual 					=	"ItMw_1h_GoldenSabre.3DS";
	SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 75,ATR_STRENGTH, 130, 100);
};
instance ItMw_KriegsSense (ItemPR_MeleeWeapon)
{
	name 					=	"Kosa wojenna";
	visual 					=	"ItMw_2h_KriegsSense.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 85,DAM_EDGE, 85,ATR_STRENGTH, 130, 100);
};
instance ItMw_Schwert2 (ItemPR_MeleeWeapon)
{
	name 					=	"D�ugi miecz";
	visual 					=	"ItMw_037_1h_sword_long_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 85,DAM_EDGE, 80,ATR_STRENGTH, 90, 100);
};
instance ItMw_Doppelaxt (ItemPR_MeleeWeapon) 
{
	name 					=	"Top�r obosieczny";
	visual 					=	"ItMw_040_1h_Axe_02.3DS";
	SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100);
};
instance ItMw_Bartaxt (ItemPR_MeleeWeapon) 
{
	name 					=	"Wielki top�r";
	visual 					=	"ItMw_040_1h_axe_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 90,DAM_EDGE, 90,ATR_STRENGTH, 70, 100);
};
///******************************************************************************************
/// Chapter 2 - made by player
///******************************************************************************************
instance ItMw_Schwert4 (ItemPR_MeleeWeapon)
{
	name 					=	"Dobry d�ugi miecz";
	visual 					=	"ItMw_045_1h_Sword_long_04.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 80,DAM_EDGE, 70,ATR_STRENGTH, 90, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_1h_Special_01 (ItemPR_MeleeWeapon)
{
	name 					=	"D�ugi miecz magiczny";
	visual 					=	"ItMw_045_1h_Sword_smith_02.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 60,DAM_EDGE, 40,ATR_STRENGTH, 90, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Special_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Magiczny miecz dwur�czny";
	visual 					=	"ItMw_050_2h_Sword_smith_02.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 75,DAM_EDGE, 55,ATR_STRENGTH, 100, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_1h_Ignite_01 (ItemPR_MeleeWeapon)
{
	name 					=	"D�ugi miecz podpalaj�cy";
	visual 					=	"ItMw_1h_Ignite_01.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 40,DAM_EDGE|DAM_FIRE, 40,ATR_STRENGTH, 90, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Ignite_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Podpalaj�cy miecz dwur�czny";
	visual 					=	"ItMw_2h_Ignite_01.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 55,DAM_EDGE|DAM_FIRE, 55,ATR_STRENGTH, 100, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
///******************************************************************************************
/// Chapter 3 - trader
///******************************************************************************************
instance ItMw_Morgenstern (ItemPR_MeleeWeapon)
{
	name 					=	"Bu�awa i �a�cuch";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_045_1h_mace_04.3DS";
	SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 95,ATR_STRENGTH, 60, 100);
};
instance ItMw_Zweihaender2 (ItemPR_MeleeWeapon) 
{
	name 					=	"Miecz dwur�czny";
	visual 					=	"ItMw_055_2h_sword_light_05.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 105,DAM_EDGE, 95,ATR_STRENGTH, 100, 100);
};
instance ItMw_Schwert3 (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepski miecz p�torar�czny";
	visual 					=	"ItMw_045_1h_Sword_Bastard_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 105,DAM_EDGE, 90,ATR_STRENGTH, 100, 100);
};
instance ItMw_Streitkolben (ItemPR_MeleeWeapon)
{
	name 					=	"Bu�awa";
	visual 					=	"ItMw_050_1h_mace_war_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 100,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100);
};
instance ItMw_Rapier (ItemPR_MeleeWeapon) 
{
	name 					=	"Rapier";
	visual 					=	"ItMw_050_1h_Sword_Rapier_01.3ds";
	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 75,ATR_DEXTERITY, 70, 100);
};
instance ItMW_Addon_Hacker_2h_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Wielka maczeta";
	visual 					=	"ItMw_2H_Machete_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 100,DAM_EDGE, 100,ATR_STRENGTH, 105, 100);
};
instance ItMw_Rabenschnabel (ItemPR_MeleeWeapon)
{
	name 					=	"Kruczy Dzi�b";
	visual 					=	"ItMw_058_1h_warhammer_02.3DS";
	SetItMwAttributes (self, ITEM_AXE, 105,DAM_BLUNT, 100,ATR_STRENGTH, 60, 100);
};
instance ItMw_Runenschwert (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz runiczny";
	visual 					=	"ItMw_055_1h_sword_long_05.3DS";
	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 110,ATR_STRENGTH, 90, 100);
};
instance ItMw_Inquisitor (ItemPR_MeleeWeapon)
{
	name 					=	"Inkwizytor";
	visual 					=	"ItMw_060_1h_mace_war_04.3DS";
	SetItMwAttributes (self, ITEM_AXE, 110,DAM_EDGE, 110,ATR_STRENGTH, 100, 100);
};
instance ItMw_Schwert5 (ItemPR_MeleeWeapon)
{
	name 					=	"Dobry miecz p�torar�czny";
	visual 					=	"ItMw_058_1h_Sword_Bastard_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE, 105,ATR_STRENGTH, 100, 100);
};
instance ItMw_Streitaxt2 (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r bojowy";
	visual 					=	"ItMw_060_2h_axe_heavy_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 115,DAM_EDGE, 115,ATR_STRENGTH, 100, 100);
};
instance ItMw_Zweihaender3 (ItemPR_MeleeWeapon)
{
	name 					=	"Wzmocniony miecz dwur�czny";
	visual 					=	"ItMw_060_2h_sword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 115,DAM_EDGE, 115,ATR_STRENGTH, 120, 100);
};
instance ItMw_Kriegshammer2 (ItemPR_MeleeWeapon)
{
	name 					=	"Ci�ki m�ot wojenny";
	visual 					=	"ItMw_065_1h_warhammer_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 120,DAM_BLUNT, 120,ATR_STRENGTH, 60, 100);
};
instance ItMw_Meisterdegen (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz mistrzowski";
	visual 					=	"ItMw_065_1h_SwordCane_02.3ds";
	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 90,ATR_DEXTERITY, 100, 100);
};
///******************************************************************************************
/// Chapter 3 - made by player
///******************************************************************************************
instance ItMw_Rubinklinge (ItemPR_MeleeWeapon) 
{
	name 					=	"Rubinowe ostrze";
	visual 					=	"ItMw_050_1h_sword_05.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 90,ATR_STRENGTH, 70, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_ElBastardo (ItemPR_MeleeWeapon)
{
	name 					=	"El Bastardo";
	visual 					=	"ItMw_1h_MatteoSchwert_03.3DS";	//ItMw_065_1h_sword_bastard_03.3DS
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 120,DAM_EDGE, 110,ATR_STRENGTH, 100, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_1h_Special_02 (ItemPR_MeleeWeapon) 
{
	name 					=	"Magiczny miecz p�torar�czny";
	visual 					=	"ItMw_060_1h_Sword_smith_03.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 95,DAM_EDGE, 75,ATR_STRENGTH, 90, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Special_02 (ItemPR_MeleeWeapon) 
{
	name 					=	"Ci�ki magiczny miecz dwur�czny";
	visual 					=	"ItMw_070_2h_Sword_smith_03.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 110,DAM_EDGE, 90,ATR_STRENGTH, 110, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_1h_Ignite_02 (ItemPR_MeleeWeapon) 
{
	name 					=	"Podpalaj�cy miecz p�torar�czny";
	visual 					=	"ItMw_1h_Ignite_02.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE|DAM_FIRE, 75,ATR_STRENGTH, 90, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Ignite_02 (ItemPR_MeleeWeapon) 
{
	name 					=	"Ci�ki podpalaj�cy miecz dwur�czny";
	visual 					=	"ItMw_2h_Ignite_02.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 90,DAM_EDGE|DAM_FIRE, 90,ATR_STRENGTH, 110, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
///******************************************************************************************
/// Chapter 4 - trader
///******************************************************************************************
instance ItMw_Folteraxt (ItemPR_MeleeWeapon)
{
	name 					=	"Katowski top�r";
	visual 					=	"ItMw_065_2h_greataxe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 125,DAM_EDGE, 125,ATR_STRENGTH, 80, 100);
};
instance ItMw_Orkschlaechter (ItemPR_MeleeWeapon)
{
	name 					=	"Orkowa Zguba";
	visual 					=	"ItMw_065_1h_sword_bastard_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 130,ATR_STRENGTH, 100, 100);
};
instance ItMw_Zweihaender4 (ItemPR_MeleeWeapon)
{
	name 					=	"Ci�ki miecz dwur�czny";
	visual 					=	"ItMw_068_2h_sword_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 135,DAM_EDGE, 135,ATR_STRENGTH, 120, 100);
};
instance ItMw_Schlachtaxt (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r wojenny";
	visual 					=	"ItMw_070_2h_axe_heavy_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 140,DAM_EDGE, 140,ATR_STRENGTH, 100, 100);
};
instance ItMw_Barbarenstreitaxt (ItemPR_MeleeWeapon)
{
	name 					=	"Barbarzy�ski top�r bojowy";
	visual 					=	"ItMw_075_2h_axe_heavy_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 145,DAM_EDGE, 145,ATR_STRENGTH, 90, 100);
};
instance ItMw_Krummschwert (ItemPR_MeleeWeapon)
{
	name 					=	"Kordelas";
	visual 					=	"ItMw_070_2h_sword_09.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 150,ATR_STRENGTH, 120, 100);
};
///******************************************************************************************
/// Chapter 4 - made by player
///******************************************************************************************
instance ItMw_Avalon (ItemPR_MeleeWeapon) 
{
	name 					=	"Avalon";
	visual 					=	"ITMW_2H_AVALON.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 140,DAM_EDGE, 130,ATR_STRENGTH, 130, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_1h_Special_03 (ItemPR_MeleeWeapon)
{
	name 					=	"Magiczne ostrze bojowe";
	visual 					=	"ItMw_075_1h_sword_smith_04.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 110,ATR_STRENGTH, 100, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Special_03 (ItemPR_MeleeWeapon) 
{
	name 					=	"Ci�kie magiczne ostrze bojowe";
	visual 					=	"ItMw_090_2h_sword_smith_04.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 145,DAM_EDGE, 125,ATR_STRENGTH, 130, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_1h_Ignite_03 (ItemPR_MeleeWeapon)
{
	name 					=	"Podpalaj�ce ostrze bojowe";
	visual 					=	"ItMw_1h_Ignite_03.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 110,DAM_EDGE|DAM_FIRE, 110,ATR_STRENGTH, 100, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Ignite_03 (ItemPR_MeleeWeapon) 
{
	name 					=	"Ci�kie podpalaj�ce ostrze bojowe";
	visual 					=	"ItMw_2h_Ignite_03.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 125,DAM_EDGE|DAM_FIRE, 125,ATR_STRENGTH, 130, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
///******************************************************************************************
/// Chapter 5 - trader
///******************************************************************************************
instance ItMw_Sturmbringer (ItemPR_MeleeWeapon)
{
	name 					=	"Ostrze Burzy";
	visual 					=	"ItMw_075_2h_sword_heavy_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 155,DAM_EDGE, 155,ATR_STRENGTH, 130, 100);
};
instance ItMw_Drachenschneide (ItemPR_MeleeWeapon)
{
	name 					=	"Smocza Zguba";
	visual 					=	"itMw_080_2h_sword_heavy_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 175,DAM_EDGE, 160,ATR_STRENGTH, 120, 100);
};
instance ItMw_Berserkeraxt (ItemPR_MeleeWeapon)
{
	name 					=	"Top�r berserkera";
	visual 					=	"ItMw_080_2h_axe_heavy_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 180,DAM_EDGE, 170,ATR_STRENGTH, 90, 100);
};
///******************************************************************************************
/// Chapter 5 - made by player
///******************************************************************************************
instance ItMw_1h_Special_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Magiczne ostrze na smoki";
	visual 					=	"ItMw_090_1h_sword_smith_05.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 165,DAM_EDGE, 145,ATR_STRENGTH, 120, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Special_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Du�e magiczne ostrze na smoki";
	visual 					=	"ItMw_110_2h_sword_smith_05.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 180,DAM_EDGE, 160,ATR_STRENGTH, 140, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_1h_Ignite_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Podpalaj�ce smocze ostrze";
	visual 					=	"ItMw_1h_Ignite_04.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD, 145,DAM_EDGE|DAM_FIRE, 145,ATR_STRENGTH, 120, 100);
	TEXT[4]					=	NAME_Bonus_1H;
};
instance ItMw_2h_Ignite_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Du�e podpalaj�ce smocze ostrze";
	visual 					=	"ItMw_2h_Ignite_04.3DS";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD, 160,DAM_EDGE|DAM_FIRE, 160,ATR_STRENGTH, 140, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
///******************************************************************************************
/// Other weapons
///******************************************************************************************
instance ItMw_1h_Keule (ItemPR_MeleeWeapon)
{
	name 					=	"S�uga Wiatru";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_Club_1H_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 50,DAM_BLUNT, 60,ATR_STRENGTH, 65, 50);
};
instance ItMw_2h_Keule (ItemPR_MeleeWeapon)
{
	name 					=	"S�uga Burzy";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_Club_2H_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 100,DAM_BLUNT, 120,ATR_STRENGTH, 130, 50);
};
instance ItMw_Addon_Betty (ItemPR_MeleeWeapon)
{
	name 					=	"Betty";
	visual 					=	"ItMw_065_1h_sword_bastard_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 130,DAM_EDGE, 115,ATR_DEXTERITY, 100, 50);
};
///******************************************************************************************
/// Dragon hunter weapons
///******************************************************************************************
instance ItMw_1h_Special_05 (ItemPR_MeleeWeapon)
{
	name 					=	"Pot�ne ostrze magiczne";
	visual 					=	"ItMw_1H_Sword_Sleeper_02.3ds";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 200,DAM_EDGE, 180,ATR_STRENGTH, 120, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_2h_Special_05 (ItemPR_MeleeWeapon)
{
	name 					=	"Du�e pot�ne ostrze magiczne";
	visual 					=	"ItMw_2H_Sword_Sleeper_02.3ds";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 215,DAM_EDGE, 195,ATR_STRENGTH, 140, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_1h_Ignite_05 (ItemPR_MeleeWeapon)
{
	name 					=	"Pot�ne ostrze podpalaj�ce";
	visual 					=	"ItMw_1h_Ignite_05.3ds";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 180,DAM_EDGE|DAM_FIRE, 180,ATR_STRENGTH, 120, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
instance ItMw_2h_Ignite_05 (ItemPR_MeleeWeapon)
{
	name 					=	"Du�e pot�ne ostrze podpalaj�ce";
	visual 					=	"ItMw_2h_Ignite_05.3ds";
	on_equip				=	Equip_ForgedWeapon;
	on_unequip				=	UnEquip_ForgedWeapon;
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 195,DAM_EDGE|DAM_FIRE, 195,ATR_STRENGTH, 140, 100);
	TEXT[4]					=	NAME_Bonus_2H;
};
///******************************************************************************************
/// Mage weapons
///******************************************************************************************
instance ItMw_Stab_L_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Lekki kostur mocy maga";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_MageStaff_Good_2H_01.3DS";
	mag_circle 				=	1;
	effect					=	"SPELLFX_MAGESTAFF1";
	SetItMwAttributes (self, ITEM_2HD_AXE, 30,DAM_BLUNT|DAM_MAGIC, 30,ATR_STRENGTH, 110, 100);
	TEXT[0]					=	NAME_Mag_Circle;
	COUNT[0]				=	mag_circle;
};
instance ItMw_Stab_M_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Kostur mocy maga";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_MageStaff_Good_2H_01.3DS";
	mag_circle 				=	2;
	effect					=	"SPELLFX_MAGESTAFF2";
	SetItMwAttributes (self, ITEM_2HD_AXE, 60,DAM_BLUNT|DAM_MAGIC, 60,ATR_STRENGTH, 120, 100);
	TEXT[0]					=	NAME_Mag_Circle;
	COUNT[0]				=	mag_circle;
};
instance ItMw_Stab_M_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Kostur bojowy maga";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_MageStaff_Blades_2H_02.3DS";
	mag_circle 				=	2;
	effect					=	"SPELLFX_MAGESTAFF3";
	SetItMwAttributes (self, ITEM_2HD_AXE, 70,DAM_EDGE|DAM_MAGIC, 60,ATR_STRENGTH, 120, 100);
	TEXT[0]					=	NAME_Mag_Circle;
	COUNT[0]				=	mag_circle;
};
instance ItMw_Stab_H_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Ci�ki kostur mocy maga";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_MageStaff_Good_2H_01.3DS";
	mag_circle 				=	3;
	effect					=	"SPELLFX_MAGESTAFF4";
	SetItMwAttributes (self, ITEM_2HD_AXE, 90,DAM_BLUNT|DAM_MAGIC, 90,ATR_STRENGTH, 130, 100);
	TEXT[0]					=	NAME_Mag_Circle;
	COUNT[0]				=	mag_circle;
};
instance ItMw_Stab_H_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Ci�ki kostur bojowy maga";
	material 				=	MAT_WOOD;
	visual 					=	"ItMW_MageStaff_Blades_2H_02.3DS";
	mag_circle 				=	3;
	effect					=	"SPELLFX_MAGESTAFF5";
	SetItMwAttributes (self, ITEM_2HD_AXE, 100,DAM_EDGE|DAM_MAGIC, 90,ATR_STRENGTH, 130, 100);
	TEXT[0]					=	NAME_Mag_Circle;
	COUNT[0]				=	mag_circle;
};
///******************************************************************************************
/// Paladin weapons
///******************************************************************************************
instance ItMw_1H_Blessed_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Kiepskie ostrze magiczne";
	visual 					=	"itmw_030_1h_PAL_sword_bastard_RAW_01.3ds";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE|DAM_MAGIC, 100,ATR_MANA_MAX, 100, 100);
};
instance ItMw_2H_Blessed_01 (ItemPR_MeleeWeapon) 
{
	name 					=	"Kiepskie ostrze magiczne";
	visual 					=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 120,DAM_EDGE|DAM_MAGIC, 120,ATR_MANA_MAX, 130, 100);
};
instance ItMw_1H_Blessed_02 (ItemPR_MeleeWeapon)
{
	name 					=	"B�ogos�awione ostrze magiczne";
	visual 					=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 120,DAM_EDGE|DAM_MAGIC, 100,ATR_MANA_MAX, 100, 100);
};
instance ItMw_2H_Blessed_02 (ItemPR_MeleeWeapon) 
{
	name 					=	"Miecz Zakonu";
	visual 					=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 140,DAM_EDGE|DAM_MAGIC, 120,ATR_MANA_MAX, 130, 100);
};
instance ItMw_1H_Blessed_03 (ItemPR_MeleeWeapon)
{
	name 					=	"�wi�ty Gniew";
	visual 					=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 140,DAM_EDGE|DAM_MAGIC, 100,ATR_MANA_MAX, 100, 100);
};
instance ItMw_2H_Blessed_03 (ItemPR_MeleeWeapon) 
{
	name 					=	"�wi�ty Kat";
	visual 					=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 160,DAM_EDGE|DAM_MAGIC, 120,ATR_MANA_MAX, 130, 100);
};
///******************************************************************************************
instance ItMw_1H_Innos (ItemPR_MeleeWeapon)
{
	name 					=	"Gniew Innosa";
	visual 					=	"ItMw_InnosWeapon_1H.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 160,DAM_EDGE|DAM_MAGIC, 100,ATR_MANA_MAX, 90, 100);
};
instance ItMw_2H_Innos (ItemPR_MeleeWeapon) 
{
	name 					=	"Gniew Innosa";
	visual 					=	"ItMw_InnosWeapon_2H.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 180,DAM_EDGE|DAM_MAGIC, 120,ATR_MANA_MAX, 140, 100);
};
///******************************************************************************************
/// Assassin weapons
///******************************************************************************************
instance ItMw_Assassin_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Kr�tki miecz zab�jcy";
	visual 					=	"ahktrah_shortsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 50,DAM_EDGE, 30,ATR_DEXTERITY, 70, 100);
};
instance ItMw_Assassin_02 (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz zab�jcy";
	visual 					=	"akhtrah_sword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 75,DAM_EDGE, 45,ATR_DEXTERITY, 90, 100);
};
instance ItMw_Assassin_03 (ItemPR_MeleeWeapon)
{
	name 					=	"D�ugi miecz zab�jcy";
	visual 					=	"ahktrah_longsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 100,DAM_EDGE, 60,ATR_DEXTERITY, 100, 100);
};
instance ItMw_Assassin_04 (ItemPR_MeleeWeapon)
{
	name 					=	"Szeroki miecz zab�jcy";
	visual 					=	"ahktrah_broadsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 125,DAM_EDGE, 75,ATR_DEXTERITY, 90, 100);
};
instance ItMw_Assassin_05 (ItemPR_MeleeWeapon)
{
	name 					=	"Dwur�czny miecz zab�jcy";
	visual 					=	"ahktrah_claymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 150,DAM_EDGE, 90,ATR_DEXTERITY, 125, 100);
};
///******************************************************************************************
/// Beliar weapon
///******************************************************************************************
func void SetBeliarWeaponAttributes (var C_Item itm, var int kap)
{
	itm.material 			=	MAT_METAL;
	itm.damagetype			=	DAM_EDGE;
	itm.effect				= 	"SPELLFX_FIRESWORDBLACK";
	
	if (hero.hitchance[NPC_TALENT_1H] >= hero.hitchance[NPC_TALENT_2H])
	{
		itm.flags			=	ITEM_SWD|ITEM_MISSION;
		itm.visual			=	"ItMw_BeliarWeapon_1H.3DS";
		itm.range			=	100;
		itm.damageTotal		=	20+kap;
		itm.TEXT[4]			=	NAME_OneHanded;
	}
	else
	{
		itm.flags			=	ITEM_2HD_SWD|ITEM_MISSION;
		itm.visual			=	"ItMw_BeliarWeapon_2H.3DS";
		itm.range			=	120;
		itm.damageTotal		=	30+kap;
		itm.TEXT[4]			=	NAME_TwoHanded;
	};
	
	itm.cond_atr[2]   		=	COND_LEVEL;
	itm.cond_value[2]		=	kap;
	
	itm.TEXT[0] 			=	NAME_Lev_needed;
	itm.COUNT[0]			=	itm.cond_value[2];
	itm.TEXT[2]				=	NAME_Damage;
	itm.COUNT[2]			=	itm.damageTotal;
	itm.TEXT[3] 			=	"Szansa na dodatkowe obra�enia:";
	itm.COUNT[3]			=	(kap/2);
};

var int BeliarWeapon_LastUpgradeLvl;

instance ItMw_BeliarWeapon (C_Item)
{
	name 					=	"Szpon Beliara";
	mainflag 				=	ITEM_KAT_NF;
	
	description				=	name;
	SetBeliarWeaponAttributes (self, BeliarWeapon_LastUpgradeLvl);
};
///******************************************************************************************
/// Mission weapons
///******************************************************************************************
instance ItMw_AlriksSword_Mis (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz Alrika";
	visual 					=	"ItMw_025_1h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 30,DAM_EDGE, 30,ATR_STRENGTH, 70, 20);
};
instance ItMw_2h_Rod (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz dwur�czny Roda";
	visual 					=	"ItMw_035_2h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 50,DAM_EDGE, 50,ATR_STRENGTH, 130, 20);
};
instance Holy_Hammer_MIS (ItemPR_MeleeWeapon)
{
	name 					=	"�wi�ty m�ot";
	owner					=	Nov_608_Garwig;
	visual 					=	"ItMw_030_2h_kdf_hammer_01.3DS";
	SetItMwAttributes (self, ITEM_AXE|ITEM_MISSION, 50,DAM_BLUNT, 0,ATR_STRENGTH, 100, 0);
};
instance ItMw_1H_FerrosSword_Mis (ItemPR_MeleeWeapon) 
{
	name 					=	"Miecz Ferosa";
	visual 					=	"ItMw_060_1h_Sword_smith_03.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 100,DAM_EDGE, 90,ATR_STRENGTH, 90, 20);
};
instance ItMw_BeliarWeapon_Raven (ItemPR_MeleeWeapon)
{
	name 					=	"Szpon Beliara";
	visual					=	"ItMw_BeliarWeapon_2H.3DS";
	effect					= 	"SPELLFX_FIRESWORDBLACK";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 50,DAM_BLUNT, 0,ATR_STRENGTH, 120, 0);
	cond_atr[2]   			=	ATR_MANA_MAX;
	cond_value[2]  			=	666666;
	TEXT[2]					=	"";
	TEXT[3]					=	"";
	TEXT[5]					=	"";
};
///******************************************************************************************
/// Iron weapons
///******************************************************************************************
instance ItMw_Iron_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny top�r";
	visual 					=	"iron_axe.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 50, 10);
};
instance ItMw_Iron_BroadSword (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny szeroki miecz";
	visual 					=	"iron_broadsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 70, 10);
};
instance ItMw_Iron_Claymore (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny Claymore";
	visual 					=	"iron_claymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 110, 10);
};
instance ItMw_Iron_Club (ItemPR_MeleeWeapon)
{
	name 					=	"�elazna bu�awa";
	visual 					=	"iron_club.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 70, 10);
};
instance ItMw_Iron_Dagger (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny sztylet";
	visual 					=	"iron_dagger.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 55, 10);
};
instance ItMw_Iron_HeavyClaymore (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny ci�ki Claymore";
	visual 					=	"iron_heavyclaymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 115, 10);
};
instance ItMw_Iron_LongSword (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny d�ugi miecz";
	visual 					=	"iron_longsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 90, 10);
};
instance ItMw_Iron_Mace (ItemPR_MeleeWeapon)
{
	name 					=	"�elazna pa�ka";
	visual 					=	"iron_mace.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 70, 10);
};
instance ItMw_Iron_MasterSword (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny mistrzowski miecz";
	visual 					=	"iron_mastersword.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 95, 10);
};
instance ItMw_Iron_ShortSword (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny kr�tki miecz";
	visual 					=	"iron_shortsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 50, 10);
};
instance ItMw_Iron_WarAxe (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny top�r wojenny";
	visual 					=	"iron_waraxe.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 90, 10);
};
instance ItMw_Iron_WarHammer (ItemPR_MeleeWeapon)
{
	name 					=	"�elazny m�ot wojenny";
	visual 					=	"iron_warhammer.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 50, 10);
};
///******************************************************************************************
/// Steel weapons
///******************************************************************************************
instance ItMw_Steel_Axe (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy top�r";
	visual 					=	"Steel_axe.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 70, 10);
};
instance ItMw_Steel_BroadSword (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy szeroki miecz";
	visual 					=	"Steel_broadsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_Claymore (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy Claymore";
	visual 					=	"Steel_claymore.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_Club (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowa bu�awa";
	visual 					=	"Steel_club.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_Dagger (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy sztylet";
	visual 					=	"Steel_dagger.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_HeavyClaymore (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy ci�ki Claymore";
	visual 					=	"Steel_heavyclaymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_LongSword (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy d�ugi miecz";
	visual 					=	"Steel_longsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_Mace (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowa pa�ka";
	visual 					=	"Steel_mace.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_MasterSword (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy mistrzowski miecz";
	visual 					=	"Steel_mastersword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_ShortSword (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy kr�tki miecz";
	visual 					=	"Steel_shortsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_WarAxe (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy top�r wojenny";
	visual 					=	"Steel_waraxe.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 0,DAM_EDGE, 0,ATR_STRENGTH, 0, 10);
};
instance ItMw_Steel_WarHammer (ItemPR_MeleeWeapon)
{
	name 					=	"Stalowy m�ot wojenny";
	visual 					=	"Steel_warhammer.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,DAM_BLUNT, 0,ATR_STRENGTH, 0, 10);
};
///******************************************************************************************
/// WzA weapons
///******************************************************************************************
instance ItMw_Broom (ItemPR_MeleeWeapon)
{
	name 					=	"Miot�a";
	visual 					=	"ItMi_Broom.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 10,DAM_BLUNT, 10,ATR_STRENGTH, 130, 10);
};
instance ItMw_Pan (ItemPR_MeleeWeapon)
{
	name 					=	"Patelnia";
	visual 					=	"ITMI_PAN.3DS";
	SetItMwAttributes (self, ITEM_AXE, 15,DAM_BLUNT, 15,ATR_STRENGTH, 60, 10);
};
instance ItMw_1H_Club_01 (ItemPR_MeleeWeapon)
{
	name 					=	"Stara pa�ka Wrzoda";
	material 				=	MAT_WOOD;
	visual 					=	"ItMw_1H_Club_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 20,ATR_STRENGTH, 100, 10);
};
instance ItMw_Spade (ItemPR_MeleeWeapon)
{
	name 					=	"�opata";
	visual 					=	"ITMI_SPADE.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 25,DAM_BLUNT, 25,ATR_STRENGTH, 130, 10);
};
instance ItMw_MegaPan (ItemPR_MeleeWeapon)
{
	name 					=	"Mega patelnia";
	visual 					=	"ItroX_Blutpfanne.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 50,DAM_BLUNT, 50,ATR_STRENGTH, 130, 10);
};
instance ItMw_FireSword (ItemPR_MeleeWeapon)
{
	name 					=	"Ognisty miecz";
	visual 					=	"ItMw_FireSword_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 150,DAM_FIRE, 150,ATR_STRENGTH, 130, 100);
};
instance ItMw_BusterSword (ItemPR_MeleeWeapon)
{
	name 					=	"Ogromny tasak";
	visual 					=	"ItMw_Buster_Sword.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 200,DAM_EDGE, 200,ATR_STRENGTH, 180, 100);
};
instance ItMw_ChainSaw (ItemPR_MeleeWeapon)
{
	name 					=	"Pi�a �a�cuchowa";
	visual 					=	"itmw_1h_chainsaw.3ds";
	SetItMwAttributes (self, ITEM_SWD, 250,DAM_EDGE, 150,ATR_STRENGTH, 100, 100);
};
///******************************************************************************************
instance ItMw_LightSaber (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz �wietlny";
	material 				=	MAT_GLAS;
	visual 					=	"itmw_lightsaber_notactive.3ds";
	SetItMwAttributes (self, ITEM_SWD, 300,DAM_INVALID, 150,ATR_DEXTERITY, 0, 100);
};
instance ItMw_LightSaber_Blue (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz �wietlny";
	material 				=	MAT_GLAS;
	visual					=	"itmw_lightsaber_blue.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 300,DAM_POINT, 150,ATR_DEXTERITY, 120, 100);
};
instance ItMw_LightSaber_Green (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz �wietlny";
	material 				=	MAT_GLAS;
	visual					=	"itmw_lightsaber_green.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 300,DAM_POINT, 150,ATR_DEXTERITY, 120, 100);
};
instance ItMw_LightSaber_Red (ItemPR_MeleeWeapon)
{
	name 					=	"Miecz �wietlny";
	material 				=	MAT_GLAS;
	visual					=	"itmw_lightsaber_red.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 300,DAM_POINT, 150,ATR_DEXTERITY, 120, 100);
};
