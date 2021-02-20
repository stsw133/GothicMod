//******************************************************************************************
//	Acrona Armors
//******************************************************************************************
instance ITAR_ACRONA_BAU_00 (ItemPR_Armor)
{
	name 			=	"Akroñski strój farmera";
	visual 			=	"ItAr_Bau_L.3DS";
	visual_change 	=	"Armor_Acrona_Bau.asc";
	SetItArAttributes (self, 2,   10,10,0,0,   0);	//level_1
};
instance ITAR_ACRONA_BAU_01 (ItemPR_Armor)
{
	name 			=	"Akroñski strój farmera";
	visual 			=	"ItAr_Bau_L.3DS";
	visual_change 	=	"Armor_Acrona_Bau.asc";
	SetItArAttributes (self, 2,   10,10,0,0,   1);	//level_1
};
instance ITAR_ACRONA_WORKER (ItemPR_Armor)
{
	name 			=	"Akroñski strój robotnika";
	visual 			=	"ItAr_Bau_L.3DS";
	visual_change 	=	"Armor_Acrona_Bau.asc";
	SetItArAttributes (self, 2,   10,10,0,0,   2);	//level_1
};
//******************************************************************************************
instance ITAR_ACRONA_PIR_L (ItemPR_Armor)
{
	name 			=	"Akroñskie ubranie pirata";
	visual 			=	"ItAr_PIR_L_ADDON.3ds";
	visual_change 	=	"Armor_Acrona_PIR_L.ASC";
	SetItArAttributes (self, 6,   30,30,0,0,   0);	//level_3
};
instance ITAR_ACRONA_PIR_M (ItemPR_Armor)
{
	name 			=	"Akroñska zbroja pirata";
	visual 			=	"ItAr_PIR_M_ADDON.3ds";
	visual_change 	=	"Armor_Acrona_PIR_M.asc";
	SetItArAttributes (self, 12,   50,50,10,10,   0);	//level_5
};
//******************************************************************************************
instance ITAR_ACRONA_SOLDIER_M (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz ¿o³nierza";
	visual 			=	"ItAr_SLD_H.3DS";
	visual_change 	=	"Armor_Acrona_Soldier.asc";
	SetItArAttributes (self, 18,   70,70,20,20,   0);	//level_7
};
instance ITAR_ACRONA_SOLDIER_H (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz ¿o³nierza";
	visual 			=	"ItAr_SLD_H.3DS";
	visual_change 	=	"Armor_Acrona_Soldier.asc";
	SetItArAttributes (self, 24,   90,90,30,30,   1);	//level_9
};
instance ITAR_ACRONA_KNIGHT (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz rycerza";
	visual 			=	"ItAr_Pal_M3.3ds";
	visual_change 	=	"Armor_Acrona_Knight.asc";
	SetItArAttributes (self, 41,   125,125,80,80,   0);	//level_12

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
//******************************************************************************************
instance ITAR_ACRONA_TEMPLER_M (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz stra¿y œwi¹tynnej";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_Acrona_Templer.asc";
	SetItArAttributes (self, 18,   70,70,20,20,   0);	//level_7
};
instance ITAR_ACRONA_TEMPLER_H (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz stra¿y œwi¹tynnej";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_Acrona_Templer.asc";
	SetItArAttributes (self, 24,   90,90,30,30,   1);	//level_9
};
instance ITAR_ACRONA_MAGE (ItemPR_Armor)
{
	name 			=	"Akroñska szata arcymaga";
	visual 			=	"ItAr_KdF_H.3ds";
	visual_change 	=	"Armor_Acrona_Mage.asc";
	SetItArAttributes (self, 40,   100,100,100,100,   0);	//level_12
};
//******************************************************************************************
instance ITAR_ACRONA_EBR_M (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz szlachecki";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"ARMOR_ACRONA_EBR.asc";
	SetItArAttributes (self, 40,   120,120,80,80,   0);	//level_12

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_ACRONA_EBR_H (ItemPR_Armor)
{
	name 			=	"Akroñski pancerz bojowy";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"ARMOR_ACRONA_EBR.asc";
	SetItArAttributes (self, 50,   150,150,100,100,   1);	//level_15

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_ACRONA_KING (ItemPR_Armor)
{
	name 			=	"Akroñska zbroja królewska";
	visual 			=	"ITAR_KING.3ds";
	visual_change 	=	"ARMOR_ACRONA_KING.asc";
	SetItArAttributes (self, 60,   180,180,120,120,   0);	//level_18

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
//******************************************************************************************
//	Chaos Armors
//******************************************************************************************
instance ITAR_iChaos_Blue (ItemPR_Armor)
{
	name 			=	"P³aszcz Setrona";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 70,   175,175,175,175,   0);	//level_21
};
instance ITAR_aChaos_Blue (ItemPR_Armor)
{
	name 			=	"P³aszcz Setrona";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 80,   200,200,200,200,   0);	//level_24
	effect			=	"SPELLFX_ACHAOS_BLUE";
};
instance ITAR_iChaos_Red (ItemPR_Armor)
{
	name 			=	"P³aszcz Azazela";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 70,   175,175,175,175,   1);	//level_21
};
instance ITAR_aChaos_Red (ItemPR_Armor)
{
	name 			=	"P³aszcz Azazela";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 80,   200,200,200,200,   1);	//level_24
	effect			=	"SPELLFX_ACHAOS_RED";
};
instance ITAR_iChaos_Green (ItemPR_Armor)
{
	name 			=	"P³aszcz Methiona";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 70,   175,175,175,175,   2);	//level_21
};
instance ITAR_aChaos_Green (ItemPR_Armor)
{
	name 			=	"P³aszcz Methiona";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 80,   200,200,200,200,   2);	//level_24
	effect			=	"SPELLFX_ACHAOS_GREEN";
};
instance ITAR_iChaos_Yellow (ItemPR_Armor)
{
	name 			=	"P³aszcz Yataru";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos_Inactive.asc";
	SetItArAttributes (self, 70,   175,175,175,175,   3);	//level_21
};
instance ITAR_aChaos_Yellow (ItemPR_Armor)
{
	name 			=	"P³aszcz Yataru";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 80,   200,200,200,200,   3);	//level_24
	effect			=	"SPELLFX_ACHAOS_YELLOW";
};
instance ITAR_aChaos_Pink (ItemPR_Armor)
{
	name 			=	"P³aszcz Pedofilesa";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   6);	//level_30
};
//******************************************************************************************
instance ITAR_Chaos_Dark (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   7);	//level_30
};
instance ITAR_Chaos_Evil (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   8);	//level_30
};
instance ITAR_Chaos_Blue (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   9);	//level_30
};
instance ITAR_Chaos_Yellow (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   10);	//level_30
};
instance ITAR_Chaos_Purple (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   11);	//level_30
};
instance ITAR_Chaos_Green (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   12);	//level_30
};
instance ITAR_Chaos_Gray (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   13);	//level_30
};
instance ITAR_Chaos_Orange (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   14);	//level_30
};
instance ITAR_Chaos_Brown (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   15);	//level_30
};
instance ITAR_Chaos_White (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   16);	//level_30
};
instance ITAR_Chaos_Black (ItemPR_Armor)
{
	name 			=	"P³aszcz maga chaosu";
	visual 			=	"ItAr_Dementor.3ds";
	visual_change 	=	"Armor_Chaos.asc";
	SetItArAttributes (self, 100,   250,250,250,250,   17);	//level_30
};
instance ITAR_PolskaZbroja (ItemPR_Armor)
{
	name 			=	"Polska Zbroja";
	visual 			=	"ItAr_Pal_H3.3ds";
	visual_change 	=	"Armor_PAL_H.asc";
	SetItArAttributes (self, 60,   175,175,105,140,   8);	//level_18

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
//******************************************************************************************
//	NewAge Armors
//******************************************************************************************
instance ITAR_NA_JaJ (ItemPR_Armor)
{
	name 			=	"Kurtka i d¿insy";
	visual 			=	"ItAr_Leather_L.3ds";
	visual_change 	=	"Armor_NewAge.asc";
	SetItArAttributes (self, 12,   50,50,10,10,   0);	//level_5
};
instance ITAR_NA_JP (ItemPR_Armor)
{
	name 			=	"Strój dresiarza";
	visual 			=	"ItAr_Leather_L.3ds";
	visual_change 	=	"Armor_NewAge.asc";
	SetItArAttributes (self, 12,   50,50,10,10,   1);	//level_5
};
instance ITAR_NA_Vest (ItemPR_Armor)
{
	name 			=	"Kamizelka";
	visual 			=	"ItAr_Leather_L.3ds";
	visual_change 	=	"Armor_NewAge.asc";
	SetItArAttributes (self, 12,   50,50,10,10,   2);	//level_5
};
instance ITAR_NA_SaT (ItemPR_Armor)
{
	name 			=	"Garnitur z krawatem";
	visual 			=	"ItAr_Ranger_Addon.3ds";
	visual_change 	=	"Armor_Agent.asc";
	SetItArAttributes (self, 12,   50,50,10,10,   0);	//level_5
};
//******************************************************************************************
instance ITAR_NA_SuperHero (ItemPR_Armor)
{
	name 			=	"Zbroja Supermana";
	visual 			=	"ItAr_PAL_H3.3ds";
	visual_change 	=	"Armor_Hero.asc";
	SetItArAttributes (self, 54,   160,160,110,110,   0);	//level_16

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_NA_IronHero (ItemPR_Armor)
{
	name 			=	"Zbroja Ironmana";
	visual 			=	"ItAr_PAL_H3.3ds";
	visual_change 	=	"Armor_Hero.asc";
	SetItArAttributes (self, 54,   160,160,110,110,   1);	//level_16

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
//******************************************************************************************
//	StarWars Armors
//******************************************************************************************
instance ITAR_SW_Jedi_L (ItemPR_Armor)
{
	name 			=	"Lekka szata Jedi";
	visual 			=	"ITAR_KDF_L.3ds";
	visual_change 	=	"ARMOR_SW_Jedi_L.asc";
	SetItArAttributes (self, 12,   40,40,20,20,   0);	//level_5
};
instance ITAR_SW_Jedi_M (ItemPR_Armor)
{
	name 			=	"Œrednia szata Jedi";
	visual 			=	"ITAR_KDF_L.3ds";
	visual_change 	=	"ARMOR_SW_Jedi_M.asc";
	SetItArAttributes (self, 18,   60,60,30,30,   1);	//level_7
};
instance ITAR_SW_Jedi_H (ItemPR_Armor)
{
	name 			=	"Ciê¿ka szata Jedi";
	visual 			=	"ITAR_KDF_H.3ds";
	visual_change 	=	"ARMOR_SW_Jedi_H.asc";
	SetItArAttributes (self, 40,   100,100,100,100,   2);	//level_12
};
instance ITAR_SW_Sith (ItemPR_Armor)
{
	name 			=	"Szata Sitha";
	visual 			=	"ITAR_XARDAS.3ds";
	visual_change 	=	"ARMOR_SW_SITH.asc";
	SetItArAttributes (self, 40,   100,100,100,100,   0);	//level_12
};
instance ITAR_SW_Vader (ItemPR_Armor)
{
	name 			=	"Pancerz Vadera";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"ARMOR_SW_VADER.asc";
	SetItArAttributes (self, 46,   140,140,90,90,   0);	//level_14

	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
