//******************************************************************************************
prototype ItemPR_MeleeWeapon (C_Item)
{
	mainflag 				=	ITEM_KAT_NF;
	flags 					=	ITEM_SWD;
	material 				=	MAT_METAL;
	
	cond_atr[1]   			=	ATR_STRENGTH;
	cond_atr[2]   			=	ATR_DEXTERITY;
	
	TEXT[1]					=	NAME_Damage;
	TEXT[2] 				=	NAME_Str_needed;
	TEXT[3] 				=	NAME_Dex_needed;
	TEXT[5]					= 	NAME_Value;
};
//******************************************************************************************
FUNC VOID Equip_2H_2_AxeWeapon()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_2H) >= 2)
	{	Mdl_ApplyOverlayMDS (self, "HUMANS_2HST3.MDS");	};
};
FUNC VOID UnEquip_2H_2_AxeWeapon()
{
	Mdl_RemoveOverlayMDS (self, "HUMANS_2HST3.MDS");
};
//******************************************************************************************
func void SetItMwAttributes (var C_ITEM itm, var int type, var int value, var int str, var int dex, var int dmg, var int dmgType, var int rng)
{
	itm.flags			=	type;
	
	itm.value 			=	value;
	
	itm.damageTotal		= 	dmg;
	itm.damageType		=	dmgType;
	itm.range    		=  	rng;
	
	itm.cond_value[1]  	=	str;
	itm.cond_value[2]  	=	dex;
	
	itm.description		=	itm.name;
	itm.COUNT[1]		=	itm.damageTotal;
	itm.COUNT[2]		=	itm.cond_value[1];
	itm.COUNT[3]		=	itm.cond_value[2];
	itm.COUNT[5]		=	itm.value;
	
	if (type == ITEM_SWD && type == ITEM_AXE)				{	itm.TEXT[4] = NAME_OneHanded;	}
	else if (type == ITEM_DAG)								{	itm.TEXT[4] = NAME_SecHanded;	}
	else if (type == ITEM_2HD_SWD && type == ITEM_2HD_AXE)	{	itm.TEXT[4] = NAME_TwoHanded;	};
	/*
	if (type == ITEM_2HD_AXE)
	{
		itm.on_equip		=	Equip_2H_2_AxeWeapon;
		itm.on_unequip		=	UnEquip_2H_2_AxeWeapon;
	};
	*/
};
//******************************************************************************************
//	Kapitel 1 - junk or NPC's weapons
//******************************************************************************************
instance ItMw_1h_Bau_Mace (ItemPR_MeleeWeapon)
{
	name 			=	"Laga";
	material		=	MAT_WOOD;
	visual 			=	"ItMw_010_1h_Club_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 0,   6,3,   6,DAM_BLUNT,   70);
};
instance ItMw_1h_Vlk_Mace (ItemPR_MeleeWeapon)
{
	name 			=	"Laska";
	material		=	MAT_WOOD;
	visual 			=	"Itmw_008_1h_pole_01.3ds";
	SetItMwAttributes (self, ITEM_AXE, 4,   8,4,   8,DAM_BLUNT,   70);
};
instance ItMw_1H_Mace_L_03 (ItemPR_MeleeWeapon)
{
	name 			=	"Pa³ka";
	material		=	MAT_WOOD;
	visual 			=	"ItMw_008_1h_mace_light_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 5,   10,5,   10,DAM_BLUNT,   70);
};
instance ItMw_Nagelknueppel (ItemPR_MeleeWeapon)
{
	name 			=	"Maczuga z kolcami";
	material		=	MAT_WOOD;
	visual 			=	"ItMw_012_1h_Nailmace_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 6,   12,6,   12,DAM_BLUNT,   60);
};
//******************************************************************************************
instance ItMw_1h_Vlk_Dagger (ItemPR_MeleeWeapon)
{
	name 			=	"Sztylet";
	visual 			=	"Itmw_005_1h_dagger_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 11,   15,15,   20,DAM_EDGE,   50);
};
instance ItMw_1h_Vlk_Axe (ItemPR_MeleeWeapon)
{
	name 			=	"Topór";
	visual 			=	"Itmw_010_1h_vlk_hatchet_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 11,   20,10,   20,DAM_EDGE,   50);
};
instance ItMw_1H_Mace_L_04 (ItemPR_MeleeWeapon)
{
	name 			=	"M³ot kowalski";
	visual 			=	"ItMw_010_1h_sledgehammer_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 10,   20,10,   20,DAM_BLUNT,   30);
};
//******************************************************************************************
instance ItMw_Addon_BanditTrader (ItemPR_MeleeWeapon)
{
	name 			=	"Pa³asz bandytów";
	visual 			=	"ItMw_018_1h_SwordCane_01.3ds";
	SetItMwAttributes (self, ITEM_SWD, 13,   24,12,   24,DAM_EDGE,   70);
};
instance ItMw_1h_Vlk_Sword (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz";
	visual 			=	"ItMw_018_1h_SwordCane_01.3ds";
	SetItMwAttributes (self, ITEM_SWD, 13,   18,18,   24,DAM_EDGE,   70);
};
//******************************************************************************************
instance ItMw_2H_Axe_L_01 (ItemPR_MeleeWeapon) 
{
	name 			=	"Kilof";
	visual 			=	"ItMw_020_2h_Pickaxe_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE|ITEM_NSPLIT, 16,   30,15,   30,DAM_EDGE,   60);
};
//******************************************************************************************
instance ItMw_2h_Nov_Mace (ItemPR_MeleeWeapon)
{
	name 			=	"Pika bojowa";
	material		=	MAT_WOOD;
	visual 			=	"ItMw_020_2h_Nov_Staff_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 17,   30,15,   30,DAM_BLUNT,   130);
};
instance ItMw_RangerStaff_Addon (ItemPR_MeleeWeapon)
{
	name 			=	"Pika bojowa Wodnego Krêgu";
	material		=	MAT_WOOD;
	visual 			=	"ItMw_020_2h_Nov_Staff_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 23,   30,15,   35,DAM_BLUNT,   130);
};
//******************************************************************************************
instance ItMw_1h_MISC_Sword (ItemPR_MeleeWeapon) 
{
	name 			=	"Zardzewia³y krótki miecz";
	visual 			=	"ItMw_020_1h_sword_old_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 0,   40,20,   40,DAM_EDGE,   70);
};
instance ItMw_1h_Misc_Axe (ItemPR_MeleeWeapon)
{
	name 			=	"Zardzewia³y topór";
	visual 			=	"ItMw_025_2h_Misc_Axe_old_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 0,   50,25,   50,DAM_EDGE,   80);
};
instance ItMw_2H_Sword_M_01 (ItemPR_MeleeWeapon) 
{
	name 			=	"Zardzewia³y miecz dwurêczny";
	visual 			=	"ItMw_025_2h_Sword_old_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,   60,30,   60,DAM_EDGE,   100);
};
instance ItMw_2H_Scythe_Old (ItemPR_MeleeWeapon)
{
	name 			=	"Zardzewia³a kosa";
	visual 			=	"ITROX_2H_SCYTHE_OLD.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 0,   70,35,   70,DAM_EDGE,   130);
};
instance ItMW_Addon_Hacker_1h_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Stara maczeta";
	visual 			=	"ItMw_1H_Machete_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 0,   50,25,   50,DAM_EDGE,   70);
};
instance ItMW_Addon_Hacker_2h_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Wielka, stara maczeta";
	visual 			=	"ItMw_2H_Machete_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,   80,40,   80,DAM_EDGE,   95);
};
//******************************************************************************************
instance ItMw_1h_Mil_Sword (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski szeroki miecz";
	visual 			=	"Itmw_025_1h_Mil_Sword_broad_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 16,   50,25,   40,DAM_EDGE,   90);
};
instance ItMw_1h_Sld_Sword (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski miecz";
	visual 			=	"ItMw_025_1h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 16,   50,25,   40,DAM_EDGE,   70);
};
instance ItMw_1h_Sld_Axe (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski tasak";
	visual 			=	"ItMw_025_1h_sld_axe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 16,   50,25,   40,DAM_EDGE,   70);
};
instance ItMw_2h_Sld_Sword (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski miecz dwurêczny";
	visual 			=	"ItMw_035_2h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 28,   70,35,   60,DAM_EDGE,   130);
};
instance ItMw_2h_Sld_Axe (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski topór bojowy";
	visual 			=	"ItMw_035_2h_sld_axe_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 27,   70,35,   60,DAM_EDGE,   80);
};
instance ItMw_Addon_PIR1hSword (ItemPR_MeleeWeapon)
{	
	name 			=	"Kordelas";
	visual 			=	"ItMw_030_1h_sword_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 21,   60,30,   50,DAM_EDGE,   70);
};
instance ItMw_Addon_PIR1hAxe (ItemPR_MeleeWeapon)
{
	name 			=	"Topór pok³adowy";
	visual 			=	"ItMw_030_1h_axe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 21,   60,30,   50,DAM_EDGE,   60);
};
instance ItMw_Addon_PIR2hSword (ItemPR_MeleeWeapon)
{	
	name 			=	"Miecz pok³adowy";
	visual 			=	"ItMw_070_2h_sword_09.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 37,   80,40,   70,DAM_EDGE,   120);
};
instance ItMw_Addon_PIR2hAxe (ItemPR_MeleeWeapon)
{
	name 			=	"Mia¿d¿ydeska";
	visual 			=	"ItMw_070_2h_axe_heavy_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 32,   80,40,   70,DAM_EDGE,   80);
};
instance ItMW_Addon_Nomad (ItemPR_MeleeWeapon)
{	
	name 			=	"Szabla koczownika";
	visual 			=	"ItMw_NomadSabre.3DS";
	SetItMwAttributes (self, ITEM_SWD, 27,   70,35,   60,DAM_EDGE,   75);
};
instance ItMw_1h_Pal_Sword (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz paladyna";
	visual 			=	"ItMw_030_1h_PAL_Sword_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 27,   70,35,   60,DAM_EDGE,   70);
};
instance ItMw_2h_Pal_Sword (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz dwurêczny paladyna";
	visual 			=	"ItMw_040_2h_PAL_Sword_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 39,   90,45,   80,DAM_EDGE,   110);
};
//******************************************************************************************
//	Orc weapons
//******************************************************************************************
instance ItMw_2H_Draconian (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Drak";
	visual 			=	"ItMw_2H_Draconian.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 15,   140,0,   84,DAM_EDGE,   100);
};
//******************************************************************************************
instance ItMw_2H_OrcAxe_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Pach";
	visual 			=	"ItMw_2H_OrcAxe_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 9,   80,0,   48,DAM_EDGE,   100);
};
instance ItMw_2H_OrcAxe_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush UrRok";
	visual 			=	"ItMw_2H_OrcAxe_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 11,   100,0,   60,DAM_EDGE,   110);
};
instance ItMw_2H_OrcAxe_03 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Agash";
	visual 			=	"ItMw_2H_OrcAxe_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 13,   120,0,   72,DAM_EDGE,   110);
};
instance ItMw_2H_OrcAxe_04 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush BrokDar";
	visual 			=	"ItMw_2H_OrcAxe_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 18,   160,0,   96,DAM_EDGE,   130);
};
//******************************************************************************************
instance ItMw_2H_OrcMace_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Karrok";
	visual 			=	"ItMw_2H_OrcMace_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 16,   140,0,   84,DAM_BLUNT,   110);
};
instance ItMw_2H_OrcMace_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush EdRosh";
	visual 			=	"ItMw_2H_OrcMace_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 22,   200,0,   120,DAM_BLUNT,   120);
};
//******************************************************************************************
instance ItMw_2H_OrcSword_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Varrok";
	visual 			=	"ItMw_2H_OrcSword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 13,   120,0,   72,DAM_EDGE,   100);
};
instance ItMw_2H_OrcSword_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Tarrok";
	visual 			=	"ItMw_2H_OrcSword_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 15,   140,0,   84,DAM_EDGE,   100);
};
//******************************************************************************************
instance ItMw_2H_OrcStaff_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Nabush";
	visual 			=	"ItMw_2H_OrcStaff_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 13,   120,0,   72,DAM_BLUNT,   100);
};
//******************************************************************************************
instance ItMw_2H_OrcElite_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Krush BrokRosh";
	visual 			=	"ItMw_2H_OrcElite_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 21,   180,0,   108,DAM_EDGE,   140);
};
instance ItMw_2H_OrcElite_Raam (ItemPR_MeleeWeapon)
{
	name 			=	"Krush Raam";
	visual 			=	"ItMw_2H_OrcElite_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 23,   200,0,   120,DAM_EDGE,   140);
};
//******************************************************************************************
// Kapitel 1 - handler
//******************************************************************************************
instance ItMw_1H_Sword_L_03 (ItemPR_MeleeWeapon)
{
	name 			=	"Nó¿ na wilki";
	visual 			=	"ItMw_012_1h_Knife_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 210,   10,5,   25,DAM_EDGE,   50);
};
instance ItMw_ShortSword1 (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski krótki miecz";
	visual 			=	"ItMw_010_1h_Sword_short_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 263,   20,10,   35,DAM_EDGE,   50);
};
instance ItMw_2h_Bau_Axe (ItemPR_MeleeWeapon)
{
	name 			=	"Topór drwala";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_020_2h_Axe_Lumberjack_01.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 268,   30,15,   40,DAM_EDGE,   70);
};
instance ItMw_ShortSword2 (ItemPR_MeleeWeapon)
{
	name 			=	"Krótki miecz stra¿y";
	damagetype 		=	DAM_EDGE;
	visual 			=	"ItMw_012_1h_Sword_short_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 263,   40,20,   45,DAM_EDGE,   50);
};
instance ItMw_Nagelkeule (ItemPR_MeleeWeapon)
{
	name 			=	"Pa³ka z kolcami";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_018_1h_Mace_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 375,   50,25,   60,DAM_BLUNT,   70);
};
instance ItMw_ShortSword3 (ItemPR_MeleeWeapon)
{
	name 			=	"Krótki miecz";
	visual 			=	"ItMw_016_1h_Sword_short_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 473,   30,15,   60,DAM_EDGE,   50);
};
instance ItMw_ShortSword4 (ItemPR_MeleeWeapon)
{
	name 			=	"Wilczy kie³";
	visual 			=	"ItMw_020_1h_Sword_short_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 473,   40,20,   65,DAM_EDGE,   50);
};
instance ItMw_Kriegskeule (ItemPR_MeleeWeapon)
{
	name 			=	"Pa³ka bojowa";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_022_1h_mace_war_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 420,   70,35,   75,DAM_BLUNT,   50);
};
instance ItMw_ShortSword5 (ItemPR_MeleeWeapon)
{
	name 			=	"Dobry krótki miecz";
	visual 			=	"ItMw_025_1h_Sword_short_05.3DS";
	SetItMwAttributes (self, ITEM_SWD, 578,   40,20,   75,DAM_EDGE,   50);
};
instance ItMw_Kriegshammer1 (ItemPR_MeleeWeapon) 
{
	name 			=	"M³ot wojenny";
	visual 			=	"ItMw_028_1h_warhammer_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 416,   80,40,   80,DAM_BLUNT,   40);
};
instance ItMw_Hellebarde (ItemPR_MeleeWeapon) 
{
	name 			=	"Halabarda";
	visual 			=	"itmw_028_2h_halberd_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 432,   80,40,   80,DAM_EDGE,   80);
};
instance ItMw_Richtstab (ItemPR_MeleeWeapon)
{
	name 			=	"Kostur sêdziego";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_025_2h_Staff_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 500,   80,40,   85,DAM_EDGE,   110);
};
instance ItMw_Nagelkeule2 (ItemPR_MeleeWeapon)
{
	name 			=	"Ciê¿ka pa³ka z kolcami";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_018_1h_Mace_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 477,   90,45,   90,DAM_BLUNT,   60);
};
instance ItMw_Schiffsaxt (ItemPR_MeleeWeapon)
{
	name 			=	"Topór marynarski";
	visual 			=	"ItMw_030_1h_axe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 482,   90,45,   90,DAM_EDGE,   70);
};
instance ItMw_Piratensaebel (ItemPR_MeleeWeapon)
{
	name 			=	"Piracki kordelas";
	visual 			=	"ItMw_030_1h_sword_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 589,   90,45,   100,DAM_EDGE,   70);
};
instance ItMw_1H_Claws (ItemPR_MeleeWeapon)
{
	name 			=	"Szpony";
	visual 			=	"ITROX_FAUSTSCHWERT.3DS";
	SetItMwAttributes (self, ITEM_SWD, 601,   65,65,   100,DAM_EDGE,   60);
};
instance ItMw_Schwert (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski d³ugi miecz";
	visual 			=	"ItMw_030_1h_sword_long_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 545,   100,50,   100,DAM_EDGE,   90);
};
//******************************************************************************************
//	Kapitel 1 - made by player
//******************************************************************************************
instance ItMw_1H_Common_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz";
	visual 			=	"ItMw_030_1h_Common_Sword_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 382+100,   50,25,   60,DAM_EDGE,   90);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_Schwert1 (ItemPR_MeleeWeapon)
{
	name 			=	"Dobry miecz";
	visual 			=	"ItMw_035_1h_Sword_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 535+100,   80,40,   90,DAM_EDGE,   70);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
//******************************************************************************************
// Kapitel 2 - handler
//******************************************************************************************
instance ItMw_Stabkeule (ItemPR_MeleeWeapon) 
{
	name 			=	"Bu³awa drzewcowa";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_032_2h_staff_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 622,   100,50,   105,DAM_BLUNT,   130);
};
instance ItMw_Zweihaender1 (ItemPR_MeleeWeapon) 
{
	name 			=	"Lekki miecz dwurêczny";
	visual 			=	"ItMw_032_2h_sword_light_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 611,   110,55,   110,DAM_EDGE,   110);
};
instance ItMw_2H_Scythe (ItemPR_MeleeWeapon)
{
	name 			=	"Kosa";
	visual 			=	"ITROX_2H_SCYTHE.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 678,   110,55,   115,DAM_EDGE,   130);
};
instance ItMw_Steinbrecher (ItemPR_MeleeWeapon)
{
	name 			=	"Oskard";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_035_1h_mace_war_02.3DS";
	SetItMwAttributes (self, ITEM_AXE, 630,   120,60,   120,DAM_BLUNT,   50);
};
instance ItMw_Spicker (ItemPR_MeleeWeapon)
{
	name 			=	"Rêbiczerep";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_035_1h_mace_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 636,   120,60,   120,DAM_BLUNT,   60);
};
instance ItMw_Streitaxt1 (ItemPR_MeleeWeapon) 
{
	name 			=	"Lekki topór bojowy";
	visual 			=	"ItMw_035_2h_Axe_light_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 642,   120,60,   120,DAM_EDGE,   70);
};
instance ItMw_2H_Scythe_War (ItemPR_MeleeWeapon)
{
	name 			=	"Kosa wojenna";
	visual 			=	"ITROX_2H_SCYTHE_WAR.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 735,   120,60,   125,DAM_EDGE,   130);
};
instance ItMw_Schwert2 (ItemPR_MeleeWeapon)
{
	name 			=	"D³ugi miecz";
	visual 			=	"ItMw_037_1h_sword_long_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 709,   130,65,   130,DAM_EDGE,   90);
};
instance ItMw_Doppelaxt (ItemPR_MeleeWeapon) 
{
	name 			=	"Topór obosieczny";
	visual 			=	"ItMw_040_1h_Axe_02.3DS";
	SetItMwAttributes (self, ITEM_AXE, 749,   130,65,   135,DAM_EDGE,   70);
};
instance ItMw_Bartaxt (ItemPR_MeleeWeapon) 
{
	name 			=	"Wielki topór";
	visual 			=	"ItMw_040_1h_axe_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 749,   130,65,   135,DAM_EDGE,   70);
};
instance ItMW_Addon_Hacker_1h_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Maczeta";
	visual 			=	"ItMw_1H_Machete_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 753,   130,65,   135,DAM_EDGE,   75);
};
instance ItMw_Morgenstern (ItemPR_MeleeWeapon)
{
	name 			=	"Bu³awa i ³añcuch";
	material 		=	MAT_WOOD;
	visual 			=	"ItMW_045_1h_mace_04.3DS";
	SetItMwAttributes (self, ITEM_AXE, 742,   130,65,   135,DAM_BLUNT,   60);
};
instance ItMw_Schwert3 (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepski miecz pó³torarêczny";
	visual 			=	"ItMw_045_1h_Sword_Bastard_01.3DS";
	SetItMwAttributes (self, ITEM_SWD, 770,   130,65,   135,DAM_EDGE,   100);
};
//******************************************************************************************
//	Kapitel 2 - made by player
//******************************************************************************************
instance ItMw_Schwert4 (ItemPR_MeleeWeapon)
{
	name 			=	"Dobry d³ugi miecz";
	visual 			=	"ItMw_045_1h_Sword_long_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 709+100,   110,55,   120,DAM_EDGE,   90);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_1H_Special_01 (ItemPR_MeleeWeapon)
{
	name 			=	"D³ugi miecz magiczny";
	visual 			=	"ItMw_045_1h_Sword_smith_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 600+100,   70,35,   90,DAM_EDGE,   90);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_2H_Special_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Magiczny miecz dwurêczny";
	visual 			=	"ItMw_050_2h_Sword_smith_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 770+100,   100,50,   120,DAM_EDGE,   100);
	change_atr[2]	=	10;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_2H;
};
//******************************************************************************************
//	Kapitel 3 - handler
//******************************************************************************************
instance ItMw_Rapier (ItemPR_MeleeWeapon) 
{
	name 			=	"Rapier";
	visual 			=	"ItMw_050_1h_Sword_Rapier_01.3ds";
	SetItMwAttributes (self, ITEM_SWD, 963,   90,90,   150,DAM_EDGE,   70);
};
instance ItMw_Streitkolben (ItemPR_MeleeWeapon)
{
	name 			=	"Bu³awa";
	visual 			=	"ItMw_050_1h_mace_war_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 795,   150,75,   150,DAM_BLUNT,   60);
};
instance ItMw_Runenschwert (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz runiczny";
	visual 			=	"ItMw_055_1h_sword_long_05.3DS";
	SetItMwAttributes (self, ITEM_SWD, 872,   160,80,   160,DAM_EDGE,   90);
};
instance ItMw_Zweihaender2 (ItemPR_MeleeWeapon) 
{
	name 			=	"Miecz dwurêczny";
	visual 			=	"ItMw_055_2h_sword_light_05.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 880,   160,80,   160,DAM_EDGE,   100);
};
instance ItMw_Rabenschnabel (ItemPR_MeleeWeapon)
{
	name 			=	"Kruczy Dziób";
	visual 			=	"ItMw_058_1h_warhammer_02.3DS";
	SetItMwAttributes (self, ITEM_AXE, 901,   160,80,   165,DAM_BLUNT,   60);
};
instance ItMw_Schwert5 (ItemPR_MeleeWeapon)
{
	name 			=	"Dobry miecz pó³torarêczny";
	visual 			=	"ItMw_058_1h_Sword_Bastard_02.3DS";
	SetItMwAttributes (self, ITEM_SWD, 935,   160,80,   165,DAM_EDGE,   100);
};
instance ItMw_Inquisitor (ItemPR_MeleeWeapon)
{
	name 			=	"Inkwizytor";
	visual 			=	"ItMw_060_1h_mace_war_04.3DS";
	SetItMwAttributes (self, ITEM_AXE, 935,   160,80,   165,DAM_EDGE,   100);
};
instance ItMw_Streitaxt2 (ItemPR_MeleeWeapon)
{
	name 			=	"Topór bojowy";
	visual 			=	"ItMw_060_2h_axe_heavy_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 935,   160,80,   165,DAM_EDGE,   100);
};
instance ItMW_Addon_Hacker_2h_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Wielka maczeta";
	visual 			=	"ItMw_2H_Machete_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 939,   160,80,   165,DAM_EDGE,   105);
};
instance ItMw_Zweihaender3 (ItemPR_MeleeWeapon)
{
	name 			=	"Runa mocy";
	visual 			=	"ItMw_060_2h_sword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 952,   170,85,   170,DAM_EDGE,   120);
};
//******************************************************************************************
//	Kapitel 3 - made by player
//******************************************************************************************
instance ItMw_Rubinklinge (ItemPR_MeleeWeapon) 
{
	name 			=	"Rubinowe ostrze";
	visual 			=	"ItMw_050_1h_sword_05.3DS";
	SetItMwAttributes (self, ITEM_SWD, 856+100,   140,70,   150,DAM_EDGE,   70);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_ElBastardo (ItemPR_MeleeWeapon)
{
	name 			=	"El Bastardo";
	visual 			=	"ItMw_065_1h_sword_bastard_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 1045+100,   170,85,   180,DAM_EDGE,   100);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_1H_Special_02 (ItemPR_MeleeWeapon) 
{
	name 			=	"Magiczny miecz pó³torarêczny";
	visual 			=	"ItMw_060_1h_Sword_smith_03.3DS";
	SetItMwAttributes (self, ITEM_SWD, 927+100,   130,65,   150,DAM_EDGE,   90);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_2H_Special_02 (ItemPR_MeleeWeapon) 
{
	name 			=	"Ciê¿ki magiczny miecz dwurêczny";
	visual 			=	"ItMw_070_2h_Sword_smith_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1110+100,   160,80,   180,DAM_EDGE,   110);
	change_atr[2]	=	10;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_2H;
};
//******************************************************************************************
//	Kapitel 4 - handler
//******************************************************************************************
instance ItMw_Meisterdegen (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz mistrzowski";
	visual 			=	"ItMw_065_1h_SwordCane_02.3ds";
	SetItMwAttributes (self, ITEM_SWD, 1155,   105,105,   175,DAM_EDGE,   100);
};
instance ItMw_Kriegshammer2 (ItemPR_MeleeWeapon)
{
	name 			=	"Ciê¿ki m³ot wojenny";
	visual 			=	"ItMw_065_1h_warhammer_03.3DS";
	SetItMwAttributes (self, ITEM_AXE, 954,   180,90,   180,DAM_BLUNT,   60);
};
instance ItMw_Folteraxt (ItemPR_MeleeWeapon)
{
	name 			=	"Katowski topór";
	visual 			=	"ItMw_065_2h_greataxe_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 1026,   190,95,   190,DAM_EDGE,   80);
};
instance ItMw_Orkschlaechter (ItemPR_MeleeWeapon)
{
	name 			=	"Orkowa Zguba";
	visual 			=	"ItMw_065_1h_sword_bastard_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 1100,   190,95,   195,DAM_EDGE,   100);
};
instance ItMw_Zweihaender4 (ItemPR_MeleeWeapon)
{
	name 			=	"Ciê¿ki miecz dwurêczny";
	visual 			=	"ItMw_068_2h_sword_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1120,   200,100,   200,DAM_EDGE,   120);
};
instance ItMw_Schlachtaxt (ItemPR_MeleeWeapon)
{
	name 			=	"Topór wojenny";
	visual 			=	"ItMw_070_2h_axe_heavy_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 1155,   210,105,   210,DAM_EDGE,   100);
};
instance ItMw_Barbarenstreitaxt (ItemPR_MeleeWeapon)
{
	name 			=	"Barbarzyñski topór bojowy";
	visual 			=	"ItMw_075_2h_axe_heavy_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 1254,   210,105,   220,DAM_EDGE,   90);
};
instance ItMw_Krummschwert (ItemPR_MeleeWeapon)
{
	name 			=	"Kordelas";
	visual 			=	"ItMw_070_2h_sword_09.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1344,   220,110,   230,DAM_EDGE,   120);
};
instance ItMw_Sturmbringer (ItemPR_MeleeWeapon)
{
	name 			=	"Ostrze Burzy";
	visual 			=	"ItMw_075_2h_sword_heavy_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1469,   220,110,   240,DAM_EDGE,   130);
};
//******************************************************************************************
//	Kapitel 4 - made by player
//******************************************************************************************
instance ItMw_1H_Special_03 (ItemPR_MeleeWeapon)
{
	name 			=	"Magiczne ostrze bojowe";
	visual 			=	"ItMw_075_1h_sword_smith_04.3DS";
	SetItMwAttributes (self, ITEM_SWD, 1265+100,   190,95,   210,DAM_EDGE,   100);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_2H_Special_03 (ItemPR_MeleeWeapon) 
{
	name 			=	"Ciê¿kie magiczne ostrze bojowe";
	visual 			=	"ItMw_090_2h_sword_smith_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1469+100,   220,110,   240,DAM_EDGE,   130);
	change_atr[2]	=	10;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_2H;
};
//******************************************************************************************
//	Kapitel 5 - handler
//******************************************************************************************
instance ItMw_Drachenschneide (ItemPR_MeleeWeapon)
{
	name 			=	"Smocza Zguba";
	visual 			=	"itMw_080_2h_sword_heavy_04.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1792,   240,120,   280,DAM_EDGE,   120);
};
instance ItMw_Berserkeraxt (ItemPR_MeleeWeapon)
{
	name 			=	"Topór berserkera";
	visual 			=	"ItMw_080_2h_axe_heavy_02.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 1744,   260,130,   290,DAM_EDGE,   90);
};
//******************************************************************************************
//	Kapitel 5 - made by player
//******************************************************************************************
instance ItMw_1H_Special_04 (ItemPR_MeleeWeapon)
{
	name 			=	"Magiczne ostrze na smoki";
	visual 			=	"ItMw_090_1h_sword_smith_05.3DS";
	SetItMwAttributes (self, ITEM_SWD, 1624+100,   250,125,   270,DAM_EDGE,   120);
	change_atr[2]	=	9;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_1H;
};
instance ItMw_2H_Special_04 (ItemPR_MeleeWeapon)
{
	name 			=	"Du¿e magiczne ostrze na smoki";
	visual 			=	"ItMw_110_2h_sword_smith_05.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1824+100,   280,140,   300,DAM_EDGE,   140);
	change_atr[2]	=	10;
	change_value[2]	=	2;
	TEXT[4]			=	NAME_dBonus_2H;
};
//******************************************************************************************
//	Paladin weapons
//******************************************************************************************
instance ItMw_1H_Blessed_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Kiepskie ostrze magiczne";
	visual 			=	"itmw_030_1h_PAL_sword_bastard_RAW_01.3ds";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 880,   150,60,   150,DAM_EDGE|DAM_MAGIC,   100);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
instance ItMw_2H_Blessed_01 (ItemPR_MeleeWeapon) 
{
	name 			=	"Kiepskie ostrze magiczne";
	visual 			=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 1130,   180,60,   180,DAM_EDGE|DAM_MAGIC,   130);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
//******************************************************************************************
instance ItMw_1H_Blessed_02 (ItemPR_MeleeWeapon)
{
	name 			=	"B³ogos³awione ostrze magiczne";
	visual 			=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 1100,   150,90,   180,DAM_EDGE|DAM_MAGIC,   100);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
instance ItMw_2H_Blessed_02 (ItemPR_MeleeWeapon) 
{
	name 			=	"Miecz Zakonu";
	visual 			=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 1356,   180,90,   210,DAM_EDGE|DAM_MAGIC,   130);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
//******************************************************************************************
instance ItMw_1H_Blessed_03 (ItemPR_MeleeWeapon)
{
	name 			=	"Gniew Innosa";
	visual 			=	"ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 1320,   150,120,   210,DAM_EDGE|DAM_MAGIC,   100);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
instance ItMw_2H_Blessed_03 (ItemPR_MeleeWeapon) 
{
	name 			=	"Œwiêty Kat";
	visual 			=	"ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 1582,   180,120,   240,DAM_EDGE|DAM_MAGIC,   130);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
//******************************************************************************************
instance ItMw_1H_Blessed_04 (ItemPR_MeleeWeapon)
{
	name 			=	"Œwiêty Gniew";
	visual 			=	"ItMw_InnosWeapon_1H.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 1526,   150,150,   240,DAM_EDGE|DAM_MAGIC,   90);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
instance ItMw_2H_Blessed_04 (ItemPR_MeleeWeapon) 
{
	name 			=	"Œwiêta Furia";
	visual 			=	"ItMw_InnosWeapon_2H.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 1824,   180,150,   270,DAM_EDGE|DAM_MAGIC,   140);
	
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
};
//******************************************************************************************
//	Mage weapons
//******************************************************************************************
instance ItMw_Stab_Nov (ItemPR_MeleeWeapon)
{
	name 			=	"Kostur nowicjusza";
	material 		=	MAT_WOOD;
	mag_circle 		=	1;
	visual 			=	"ItMW_MageStaff_Good_2H_02.3DS";
	effect			=	"SPELLFX_MAGESTAFF2";
	SetItMwAttributes (self, ITEM_2HD_AXE, 185,   30,40,   40,DAM_BLUNT|DAM_MAGIC,   110);
	
	TEXT[0]			=	NAME_Mag_Circle;
	COUNT[0]		=	mag_circle;
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
	
	on_equip		=	Equip_Zauberstab;
	on_unequip		=	UnEquip_Zauberstab;
};
FUNC VOID Equip_Zauberstab()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute (self, ATR_MANA_MAX, 10);
		Npc_ChangeAttribute (self, ATR_MANA, 10);
	};
};
FUNC VOID UnEquip_Zauberstab()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute (self, ATR_MANA_MAX, -10);
		
		if (self.attribute[ATR_MANA] >= 10)
		{	Npc_ChangeAttribute (self, ATR_MANA, -10);	}
		else
		{	self.attribute[ATR_MANA] = 0;	};
	};
};
//******************************************************************************************
instance ItMw_Stab_L_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Kostur maga";
	material 		=	MAT_WOOD;
	mag_circle 		=	2;
	visual 			=	"ItMW_MageStaff_Good_2H_01.3DS";
	effect			=	"SPELLFX_MAGESTAFF1";
	SetItMwAttributes (self, ITEM_2HD_AXE, 523,   60,80,   80,DAM_BLUNT|DAM_MAGIC,   120);
	
	TEXT[0]			=	NAME_Mag_Circle;
	COUNT[0]		=	mag_circle;
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
	
	on_equip		=	Equip_Zauberstab2;
	on_unequip		=	UnEquip_Zauberstab2;
};
FUNC VOID Equip_Zauberstab2()
{
	if Npc_IsPlayer(self)
	{ 
		Npc_ChangeAttribute (self, ATR_MANA_MAX, 20);
		Npc_ChangeAttribute (self, ATR_MANA, 20);
	};
};
FUNC VOID UnEquip_Zauberstab2()
{
	if Npc_IsPlayer(self)
	{ 
		Npc_ChangeAttribute (self, ATR_MANA_MAX, -20);
		
		if (self.attribute[ATR_MANA] >= 20)
		{	Npc_ChangeAttribute (self, ATR_MANA, -20);	}
		else
		{	self.attribute[ATR_MANA] = 0;	};
	};
};
//******************************************************************************************
instance ItMw_Stab_L_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Kostur bojowy";
	material 		=	MAT_WOOD;
	mag_circle 		=	2;
	visual 			=	"ItMW_MageStaff_Blades_2H_01.3DS";
	effect			=	"SPELLFX_MAGESTAFF3";
	SetItMwAttributes (self, ITEM_2HD_AXE, 784,   60,30,   100,DAM_EDGE|DAM_MAGIC,   120);
	
	TEXT[0]			=	NAME_Mag_Circle;
	COUNT[0]		=	mag_circle;
};
//******************************************************************************************
instance ItMw_Stab_H_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Kostur arcymaga";
	material 		=	MAT_WOOD;
	mag_circle 		=	3;
	visual 			=	"ItMW_MageStaff_Good_2H_02.3DS"; 
	effect			=	"SPELLFX_MAGESTAFF4";
	SetItMwAttributes (self, ITEM_2HD_AXE, 565,   90,120,   120,DAM_BLUNT|DAM_MAGIC,   130);
	
	TEXT[0]			=	NAME_Mag_Circle;
	COUNT[0]		=	mag_circle;
	TEXT[3] 		=	NAME_Mana_needed;
	cond_atr[2]		=	ATR_MANA_MAX;
	
	on_equip		=	Equip_Zauberstab4;
	on_unequip		=	UnEquip_Zauberstab4;
};
FUNC VOID Equip_Zauberstab4()
{
	if Npc_IsPlayer(self)
	{ 
		Npc_ChangeAttribute (self, ATR_MANA_MAX, 30);
		Npc_ChangeAttribute (self, ATR_MANA, 30);
	};
};
FUNC VOID UnEquip_Zauberstab4()
{
	if Npc_IsPlayer(self)
	{ 
		Npc_ChangeAttribute (self, ATR_MANA_MAX, -30);
		
		if (self.attribute[ATR_MANA] >= 30)
		{	Npc_ChangeAttribute (self, ATR_MANA, -30);	}
		else
		{	self.attribute[ATR_MANA] = 0;	};
	};
};
//******************************************************************************************
instance ItMw_Stab_H_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Kostur bojowy arcymaga";
	material 		=	MAT_WOOD;
	mag_circle 		=	3;
	visual 			=	"ItMW_MageStaff_Blades_2H_01.3DS";
	effect			=	"SPELLFX_MAGESTAFF5";
	SetItMwAttributes (self, ITEM_2HD_AXE, 1074,   90,45,   140,DAM_EDGE|DAM_MAGIC,   130);
	
	TEXT[0]			=	NAME_Mag_Circle;
	COUNT[0]		=	mag_circle;
};
//******************************************************************************************
//	Other weapons
//******************************************************************************************
instance ItMw_1h_Keule (ItemPR_MeleeWeapon)
{
	name 			=	"S³uga Wiatru";
	material 		=	MAT_WOOD;
	visual 			=	"ItMW_Club_1H_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 533,   100,50,   100,DAM_BLUNT,   65);
};
instance ItMw_2h_Keule (ItemPR_MeleeWeapon)
{
	name 			=	"S³uga Burzy";
	material 		=	MAT_WOOD;
	visual 			=	"ItMW_Club_2H_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 848,   150,75,   150,DAM_BLUNT,   130);
};
//******************************************************************************************
//	Assassin weapons
//******************************************************************************************
instance ItMw_Assassin_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Krótki miecz zabójcy";
	visual 			=	"ahktrah_shortsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 428,   30,30,   60,DAM_EDGE,   70);
};
instance ItMw_Assassin_02 (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz zabójcy";
	visual 			=	"akhtrah_sword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 642,   45,45,   90,DAM_EDGE,   90);
};
instance ItMw_Assassin_03 (ItemPR_MeleeWeapon)
{
	name 			=	"D³ugi miecz zabójcy";
	visual 			=	"ahktrah_longsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 880,   60,60,   120,DAM_EDGE,   100);
};
instance ItMw_Assassin_04 (ItemPR_MeleeWeapon)
{
	name 			=	"Szeroki miecz zabójcy";
	visual 			=	"ahktrah_broadsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 1090,   75,75,   150,DAM_EDGE,   90);
};
instance ItMw_Assassin_05 (ItemPR_MeleeWeapon)
{
	name 			=	"Dwurêczny miecz zabójcy";
	visual 			=	"ahktrah_claymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1350,   90,90,   180,DAM_EDGE,   125);
};
//******************************************************************************************
//	Iron weapons
//******************************************************************************************
instance ItMw_Iron_Axe (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny topór";
	visual 			=	"iron_axe.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_EDGE,   50);
};
instance ItMw_Iron_BroadSword (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny szeroki miecz";
	visual 			=	"iron_broadsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   70);
};
instance ItMw_Iron_Claymore (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny Claymore";
	visual 			=	"iron_claymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,   0,0,   0,DAM_EDGE,   110);
};
instance ItMw_Iron_Club (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazna bu³awa";
	visual 			=	"iron_club.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_BLUNT,   70);
};
instance ItMw_Iron_Dagger (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny sztylet";
	visual 			=	"iron_dagger.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   55);
};
instance ItMw_Iron_HeavyClaymore (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny ciê¿ki Claymore";
	visual 			=	"iron_heavyclaymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,   0,0,   0,DAM_EDGE,   115);
};
instance ItMw_Iron_LongSword (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny d³ugi miecz";
	visual 			=	"iron_longsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   90);
};
instance ItMw_Iron_Mace (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazna pa³ka";
	visual 			=	"iron_mace.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_BLUNT,   70);
};
instance ItMw_Iron_MasterSword (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny mistrzowski miecz";
	visual 			=	"iron_mastersword.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,   0,0,   0,DAM_EDGE,   95);
};
instance ItMw_Iron_ShortSword (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny krótki miecz";
	visual 			=	"iron_shortsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   50);
};
instance ItMw_Iron_WarAxe (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny topór wojenny";
	visual 			=	"iron_waraxe.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 0,   0,0,   0,DAM_EDGE,   90);
};
instance ItMw_Iron_WarHammer (ItemPR_MeleeWeapon)
{
	name 			=	"¯elazny m³ot wojenny";
	visual 			=	"iron_warhammer.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_BLUNT,   50);
};
//******************************************************************************************
//	Steel weapons
//******************************************************************************************
instance ItMw_Steel_Axe (C_Item)
{
	name 			=	"Stalowy topór";
	visual 			=	"Steel_axe.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_EDGE,   70);
};
instance ItMw_Steel_BroadSword (C_Item)
{
	name 			=	"Stalowy szeroki miecz";
	visual 			=	"Steel_broadsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_Claymore (C_Item)
{
	name 			=	"Stalowy Claymore";
	visual 			=	"Steel_claymore.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_Club (C_Item)
{
	name 			=	"Stalowa bu³awa";
	visual 			=	"Steel_club.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_BLUNT,   0);
};
instance ItMw_Steel_Dagger (C_Item)
{
	name 			=	"Stalowy sztylet";
	visual 			=	"Steel_dagger.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_HeavyClaymore (C_Item)
{
	name 			=	"Stalowy ciê¿ki Claymore";
	visual 			=	"Steel_heavyclaymore.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_LongSword (C_Item)
{
	name 			=	"Stalowy d³ugi miecz";
	visual 			=	"Steel_longsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_Mace (C_Item)
{
	name 			=	"Stalowa pa³ka";
	visual 			=	"Steel_mace.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_BLUNT,   0);
};
instance ItMw_Steel_MasterSword (C_Item)
{
	name 			=	"Stalowy mistrzowski miecz";
	visual 			=	"Steel_mastersword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_ShortSword (C_Item)
{
	name 			=	"Stalowy krótki miecz";
	visual 			=	"Steel_shortsword.3ds";
	SetItMwAttributes (self, ITEM_SWD, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_WarAxe (C_Item)
{
	name 			=	"Stalowy topór wojenny";
	visual 			=	"Steel_waraxe.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 0,   0,0,   0,DAM_EDGE,   0);
};
instance ItMw_Steel_WarHammer (C_Item)
{
	name 			=	"Stalowy m³ot wojenny";
	visual 			=	"Steel_warhammer.3ds";
	SetItMwAttributes (self, ITEM_AXE, 0,   0,0,   0,DAM_BLUNT,   0);
};
//******************************************************************************************
//	Mission weapons
//******************************************************************************************
instance ItMw_AlriksSword_Mis (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz Alrika";
	visual 			=	"ItMw_025_1h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_SWD|ITEM_MISSION, 80,   30,15,   30,DAM_EDGE,   70);
};
instance ItMw_2h_Rod (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz dwurêczny Roda";
	visual 			=	"ItMw_035_2h_sld_sword_01.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 141,   50,25,   50,DAM_EDGE,   130);
};
instance Holy_Hammer_MIS (ItemPR_MeleeWeapon)
{
	name 			=	"Œwiêty m³ot";
	owner			=	Nov_608_Garwig;
	visual 			=	"ItMw_030_2h_kdf_hammer_01.3DS";
	SetItMwAttributes (self, ITEM_AXE|ITEM_MISSION, 0,   0,0,   100,DAM_BLUNT,   100);
};
//******************************************************************************************
//	Special weapons
//******************************************************************************************
instance ItMw_1H_Club_01 (ItemPR_MeleeWeapon)
{
	name 			=	"Stara pa³ka";
	material 		=	MAT_WOOD;
	visual 			=	"ItMw_1H_Club_01.3DS";
	SetItMwAttributes (self, ITEM_AXE, 9,   16,8,   16,DAM_BLUNT,   100);
};
instance ItMw_Addon_Betty (ItemPR_MeleeWeapon)
{
	name 			=	"Betty";
	visual 			=	"ItMw_065_1h_sword_bastard_03.3DS";
	SetItMwAttributes (self, ITEM_2HD_SWD, 1008,   125,125,   175,DAM_EDGE,   100);
};
instance ItMw_MagicSword (ItemPR_MeleeWeapon)
{
	name 			=	"Staro¿ytny miecz";
	visual 			=	"ItMw_2H_Sword_Sleeper_02.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD|ITEM_MISSION, 2052+100,   280,140,   320,DAM_EDGE,   140);
	change_atr[2]	=	10;
	change_value[2]	=	2;
	TEXT[0]			=	"Staro¿ytny miecz. Na³adowany potê¿n¹ moc¹ magiczn¹.";
	TEXT[4]			=	NAME_dBonus_2H;
};
//******************************************************************************************
instance ItMw_Spade (ItemPR_MeleeWeapon)
{
	name 			=	"£opata";
	visual 			=	"ITMI_SPADE.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 11,   20,10,   20,DAM_BLUNT,   130);
};
instance ItMw_Pan (ItemPR_MeleeWeapon)
{
	name 			=	"Patelnia";
	visual 			=	"ITMI_PAN.3DS";
	SetItMwAttributes (self, ITEM_AXE, 10,   20,10,   20,DAM_BLUNT,   60);
};
instance ItMw_MegaPan (ItemPR_MeleeWeapon)
{
	name 			=	"Mega patelnia";
	visual 			=	"ItroX_Blutpfanne.3DS";
	SetItMwAttributes (self, ITEM_2HD_AXE, 57,   100,50,   100,DAM_BLUNT,   130);
};
instance ItMw_2H_Buster (ItemPR_MeleeWeapon)
{
	name 			=	"Ogromny miecz";
	visual 			=	"ItMw_Buster_Sword.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 2360,   400,200,   400,DAM_EDGE,   180);
};
instance ItMw_ChainSaw (ItemPR_MeleeWeapon)
{
	name 			=	"Pi³a ³añcuchowa";
	visual 			=	"itmw_1h_chainsaw.3ds";
	SetItMwAttributes (self, ITEM_SWD, 2200,   200,100,   300,DAM_EDGE,   100);
};
//******************************************************************************************
instance ItMw_LightSaber (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz œwietlny";
	material 		=	MAT_GLAS;
	visual 			=	"itmw_lightsaber_notactive.3ds";
	SetItMwAttributes (self, ITEM_SWD, 4760,   0,0,   0,DAM_POINT,   0);
	COUNT[1]		=	500;
};
instance ItMw_LightSaber_Blue (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz œwietlny";
	material 		=	MAT_GLAS;
	visual			=	"itmw_lightsaber_blue.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 4760,   75,75,   500,DAM_POINT,   120);
};
instance ItMw_LightSaber_Green (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz œwietlny";
	material 		=	MAT_GLAS;
	visual			=	"itmw_lightsaber_green.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 4760,   75,75,   500,DAM_POINT,   120);
};
instance ItMw_LightSaber_Red (ItemPR_MeleeWeapon)
{
	name 			=	"Miecz œwietlny";
	material 		=	MAT_GLAS;
	visual			=	"itmw_lightsaber_red.3ds";
	SetItMwAttributes (self, ITEM_2HD_SWD, 4760,   75,75,   500,DAM_POINT,   120);
};
