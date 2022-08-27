///******************************************************************************************
prototype ItemPR_Armor (C_Item)
{
	mainflag 				=	ITEM_KAT_ARMOR;
	wear 					=	WEAR_TORSO;
	material				=	MAT_LEATHER;
	
	TEXT[1]					=	NAME_Prot_Physical;
	TEXT[2]					=	NAME_Prot_Magic;
	TEXT[3]					=	NAME_Prot_Fire;
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
func void SetItArAttributes (var C_Item itm, var int sr, var int pr, var int fr, var int mr, var int skin)
{
	itm.value 					=	(sr+pr+fr+mr) * 5;
	
	itm.protection[PROT_EDGE]	=	sr;
	itm.protection[PROT_BLUNT]	= 	sr;
	itm.protection[PROT_POINT]	= 	pr;
	itm.protection[PROT_FIRE] 	= 	fr;
	itm.protection[PROT_MAGIC]	= 	mr;
	
	itm.description				=	itm.name;
	itm.COUNT[1]				= 	sr;
	itm.COUNT[2]				= 	mr;
	itm.COUNT[3]				=	fr;
	itm.COUNT[5]				=	itm.value;
	
	itm.visual_skin 			=	skin;
};
///******************************************************************************************
///	OldCamp armors
///******************************************************************************************
instance ITAR_STT_L (ItemPR_Armor)
{
	name 			=	"Str�j cienia";
	visual 			=	"ItAr_Diego.3ds";
	visual_change 	=	"Armor_STT_L.asc";
	SetItArAttributes (self, 20,20,0,0,   0);	/// 4 level
};
instance ITAR_STT_H (ItemPR_Armor)
{
	name 			=	"Zbroja cienia";
	visual 			=	"ItAr_Diego.3ds";
	visual_change 	=	"Armor_STT_H.asc";
	SetItArAttributes (self, 30,30,0,0,   0);	/// 6 level
};
///******************************************************************************************
instance ITAR_GRD_L (ItemPR_Armor)
{
	name 			=	"Lekka zbroja stra�nika";
	visual 			=	"ItAr_MIL_L.3ds";
	visual_change 	=	"Armor_Grd_L.asc";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};
instance ITAR_GRD_M (ItemPR_Armor)
{
	name 			=	"�rednia zbroja stra�nika";
	visual 			=	"ItAr_MIL_M.3ds";
	visual_change 	=	"Armor_Grd_I.asc";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};
instance ITAR_GRD_H (ItemPR_Armor)
{
	name 			=	"Ci�ka zbroja stra�nika";
	visual 			=	"ItAr_MIL_M.3ds";
	visual_change 	=	"Armor_Grd_H.asc";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};
///******************************************************************************************
instance ITAR_EBR_M (ItemPR_Armor)
{
	name 			=	"Pancerz magnata";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"Armor_EBR.asc";
	SetItArAttributes (self, 130,130,65,65,   0);	/// 39 level
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_EBR_G (ItemPR_Armor)
{
	name 			=	"Pancerz Gomeza";
	visual 			=	"ITAR_CHAOS_ADDON.3ds";
	visual_change 	=	"Armor_EBR.asc";
	SetItArAttributes (self, 150,150,75,75,   1);	/// 45 level
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
///******************************************************************************************
///	NewCamp armors
///******************************************************************************************
instance ITAR_ORG_L (ItemPR_Armor)
{
	name 			=	"Lekki pancerz szkodnika";
	visual 			=	"ItAr_BDT_M.3ds";
	visual_change 	=	"Armor_ORG_L.asc";
	SetItArAttributes (self, 20,20,0,0,   0);	/// 4 level
};
instance ITAR_ORG_H (ItemPR_Armor)
{
	name 			=	"Ci�ki pancerz szkodnika";
	visual 			=	"ItAr_BDT_H.3ds";
	visual_change 	=	"Armor_ORG_M.asc";
	SetItArAttributes (self, 30,30,0,0,   0);	/// 6 level
};
/// sld armors in IT_ArmorsG2 file
///******************************************************************************************
///	PsiCamp armors
///******************************************************************************************
instance ITAR_SLN_L (ItemPR_Armor)
{
	name 			=	"Przepaska nowicjusza";
	visual 			=	"ItAr_Lester.3ds";
	visual_change 	=	"Armor_SLN_L.asc";
	SetItArAttributes (self, 4,4,0,0,   0);	/// 1 level
};
instance ITAR_SLN_M (ItemPR_Armor)
{
	name 			=	"Lekka zbroja nowicjusza";
	visual 			=	"ItAr_Lester.3ds";
	visual_change 	=	"Armor_SLN_M.asc";
	SetItArAttributes (self, 15,15,0,10,   0);	/// 4 level
};
instance ITAR_SLN_H (ItemPR_Armor)
{
	name 			=	"Zbroja nowicjusza";
	visual 			=	"ItAr_Lester.3ds";
	visual_change 	=	"Armor_SLN_H.asc";
	SetItArAttributes (self, 25,25,0,10,   0);	/// 6 level
};
instance ITAR_SLT_L (ItemPR_Armor)
{
	name 			=	"Lekka zbroja �wi�tynna";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_SLT_L.asc";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};
instance ITAR_SLT_M (ItemPR_Armor)
{
	name 			=	"�rednia zbroja �wi�tynna";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_SLT_M.asc";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};
instance ITAR_SLT_H (ItemPR_Armor)
{
	name 			=	"Ci�ka zbroja �wi�tynna";
	visual 			=	"ItAr_CorAngar.3ds";
	visual_change 	=	"Armor_SLT_H.asc";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};
instance ITAR_SLG_L (ItemPR_Armor)
{
	name 			=	"Szata Guru";
	visual 			=	"ITAR_KDW_L_ADDON.3ds";
	visual_change 	=	"Armor_SLG_L.asc";
	SetItArAttributes (self, 50,50,25,25,   0);	/// 15 level
};
instance ITAR_SLG_H (ItemPR_Armor)
{
	name 			=	"Zdobiona szata Guru";
	visual 			=	"ITAR_KDW_L_ADDON.3ds";
	visual_change 	=	"Armor_SLG_H.asc";
	SetItArAttributes (self, 70,70,35,35,   0);	/// 21 level
};
///******************************************************************************************
///	Best armors
///******************************************************************************************
instance ITAR_ORE_M (ItemPR_Armor)
{
	name 			=	"Magiczna zbroja";
	visual 			=	"ItAr_Chaos_Addon.3ds";
	visual_change 	=	"Armor_ORE.asc";
	SetItArAttributes (self, 165,165,105,105,   0);	/// 54 level
	description 	=	"Staro�ytna zbroja magiczna";
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
instance ITAR_ORE_H (ItemPR_Armor)
{
	name 			=	"Magiczna zbroja";
	visual 			=	"ItAr_Chaos_Addon.3ds";
	visual_change 	=	"Armor_ORE.asc";
	SetItArAttributes (self, 180,180,120,120,   1);	/// 60 level
	description 	=	"Wzmocniona zbroja magiczna";
	
	material 		=	MAT_METAL;
	on_equip		=	Equip_HeavyArmor;
	on_unequip		=	UnEquip_HeavyArmor;
};
