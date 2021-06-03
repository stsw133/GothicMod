///******************************************************************************************
prototype ItemPR_Armor (C_Item)
{
	mainflag 				=	ITEM_KAT_ARMOR;
	wear 					=	WEAR_TORSO;
	material				=	MAT_LEATHER;
	
//	cond_atr[2]   			=	COND_LEVEL;
	
//	TEXT[0] 				=	NAME_Lev_needed;
	TEXT[1]					=	NAME_Prot_Physical;
	TEXT[3]					=	NAME_Prot_Magic;
	TEXT[2]					=	NAME_Prot_Fire;
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
func void SetItArAttributes (var C_ITEM itm, var int ar, var int fr, var int mr, var int skin)
{
//	itm.cond_value[2]  			=	kap;
	
	itm.value 					=	(ar*2+fr+mr) * 5;	//kap*50
	
	itm.protection[PROT_EDGE]	=	ar;	//kap*AR_PER_LEVEL
	itm.protection[PROT_BLUNT]	= 	ar;	//kap*AR_PER_LEVEL
	itm.protection[PROT_POINT]	= 	ar;	//kap*AR_PER_LEVEL
	itm.protection[PROT_FIRE] 	= 	fr;	//kap*MR_PER_LEVEL
	itm.protection[PROT_MAGIC]	= 	mr;	//kap*MR_PER_LEVEL
	
	itm.description				=	itm.name;
//	itm.COUNT[0]				=	itm.cond_value[2];
	itm.COUNT[1]				= 	itm.protection[PROT_EDGE];
	itm.COUNT[2]				= 	itm.protection[PROT_MAGIC];
	itm.COUNT[3]				=	itm.protection[PROT_FIRE];
	itm.COUNT[5]				=	itm.value;
	
	itm.visual_skin 			=	skin;
};
///******************************************************************************************
///	G1 Armors
///******************************************************************************************
instance ITAR_STT_L (ItemPR_Armor)
{
	name 			=	"Strój cienia";
	visual 			=	"ItAr_Diego.3ds";
	visual_change 	=	"Armor_STT_L.asc";
	SetItArAttributes (self, 20,0,0,   0);	/// 4 level
};
instance ITAR_STT_H (ItemPR_Armor)
{
	name 			=	"Zbroja cienia";
	visual 			=	"ItAr_Diego.3ds";
	visual_change 	=	"Armor_STT_H.asc";
	SetItArAttributes (self, 30,0,0,   0);	/// 6 level
};
instance ITAR_GRD_L (ItemPR_Armor)
{
	name 			=	"Lekka zbroja stra¿nika";
	visual 			=	"ItAr_MIL_L.3ds";
	visual_change 	=	"Armor_Grd_L.asc";
	SetItArAttributes (self, 50,10,10,   0);	/// 12 level
};
instance ITAR_GRD_M (ItemPR_Armor)
{
	name 			=	"Œrednia zbroja stra¿nika";
	visual 			=	"ItAr_MIL_M.3ds";
	visual_change 	=	"Armor_Grd_I.asc";
	SetItArAttributes (self, 70,20,20,   0);	/// 18 level
};
instance ITAR_GRD_H (ItemPR_Armor)
{
	name 			=	"Ciê¿ka zbroja stra¿nika";
	visual 			=	"ItAr_MIL_M.3ds";
	visual_change 	=	"Armor_Grd_H.asc";
	SetItArAttributes (self, 90,30,30,   0);	/// 24 level
};
instance ITAR_EBR_M (ItemPR_Armor)
{
	name 			=	"Pancerz magnata";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"Armor_EBR.asc";
	SetItArAttributes (self, 120,80,80,   0);	/// 40 level
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_EBR_G (ItemPR_Armor)
{
	name 			=	"Pancerz Gomeza";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"Armor_EBR.asc";
	SetItArAttributes (self, 135,90,90,   1);	/// 45 level
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
///******************************************************************************************
instance ITAR_ORG_L (ItemPR_Armor)
{
	name 			=	"Lekki pancerz szkodnika";
	visual 			=	"ItAr_BDT_M.3ds";
	visual_change 	=	"Armor_ORG_L.asc";
	SetItArAttributes (self, 20,0,0,   0);	/// 4 level
};
instance ITAR_ORG_H (ItemPR_Armor)
{
	name 			=	"Ciê¿ki pancerz szkodnika";
	visual 			=	"ItAr_BDT_H.3ds";
	visual_change 	=	"Armor_ORG_M.asc";
	SetItArAttributes (self, 30,0,0,   0);	/// 6 level
};
/// sld armors in IT_ArmorG2 file
///******************************************************************************************
instance ITAR_SLN_L (ItemPR_Armor)
{
	name 			=	"Przepaska nowicjusza";
	visual 			=	"ItAr_Lester.3ds";
	visual_change 	=	"Armor_SLN_L.asc";
	SetItArAttributes (self, 5,0,0,   0);	/// 1 level
};
instance ITAR_SLN_M (ItemPR_Armor)
{
	name 			=	"Lekka zbroja nowicjusza";
	visual 			=	"ItAr_Lester.3ds";
	visual_change 	=	"Armor_SLN_M.asc";
	SetItArAttributes (self, 20,0,10,   0);	/// 5 level
};
instance ITAR_SLN_H (ItemPR_Armor)
{
	name 			=	"Zbroja nowicjusza";
	visual 			=	"ItAr_Lester.3ds";
	visual_change 	=	"Armor_SLN_H.asc";
	SetItArAttributes (self, 25,0,10,   0);	/// 6 level
};
instance ITAR_SLT_L (ItemPR_Armor)
{
	name 			=	"Lekka zbroja œwi¹tynna";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_SLT_L.asc";
	SetItArAttributes (self, 50,10,10,   0);	/// 12 level
};
instance ITAR_SLT_M (ItemPR_Armor)
{
	name 			=	"Œrednia zbroja œwi¹tynna";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_SLT_M.asc";
	SetItArAttributes (self, 70,20,20,   0);	/// 18 level
};
instance ITAR_SLT_H (ItemPR_Armor)
{
	name 			=	"Ciê¿ka zbroja œwi¹tynna";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_SLT_H.asc";
	SetItArAttributes (self, 90,30,30,   0);	/// 24 level
};
instance ITAR_SLG_L (ItemPR_Armor)
{
	name 			=	"Szata Guru";
	visual 			=	"ITAR_KDW_L_ADDON.3ds";
	visual_change 	=	"Armor_SLG_L.asc";
	SetItArAttributes (self, 40,20,20,   0);	/// 12 level
};
instance ITAR_SLG_H (ItemPR_Armor)
{
	name 			=	"Zdobiona szata Guru";
	visual 			=	"ITAR_KDW_L_ADDON.3ds";
	visual_change 	=	"Armor_SLG_H.asc";
	SetItArAttributes (self, 60,30,30,   0);	/// 18 level
};
///******************************************************************************************
instance ITAR_ORE_M (ItemPR_Armor)
{
	name 			=	"Magiczna zbroja";
	visual 			=	"ItAr_Chaos_Addon.3ds";
	visual_change 	=	"Armor_ORE.asc";
	SetItArAttributes (self, 150,100,100,   0);	/// 50 level
	description 	=	"Staro¿ytna zbroja magiczna";
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_ORE_H (ItemPR_Armor)
{
	name 			=	"Magiczna zbroja";
	visual 			=	"ItAr_Chaos_Addon.3ds";
	visual_change 	=	"Armor_ORE.asc";
	SetItArAttributes (self, 180,120,120,   1);	/// 60 level
	description 	=	"Wzmocniona zbroja magiczna";
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
