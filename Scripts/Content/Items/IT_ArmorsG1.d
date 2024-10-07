///******************************************************************************************
prototype ItemPR_Armor (C_Item)
{
	mainflag					=	ITEM_KAT_ARMOR;
	wear						=	WEAR_TORSO;
	material					=	MAT_LEATHER;
	
	TEXT[1]						=	NAME_Prot_Melee;
	TEXT[2]						=	NAME_Prot_Point;
	TEXT[3]						=	NAME_Prot_Fire;
	TEXT[4]						=	NAME_Prot_Magic;
	TEXT[5]						=	NAME_Value;
	inv_rotx					=	INVCAM_X_ARMOR_STANDARD;
};

///******************************************************************************************
func void SetItArAttributes (var C_Item itm, var int sr, var int pr, var int fr, var int mr, var int skin)
{
	itm.value = 5 + (sr+pr+fr+mr-1) / 50 * 5;
	
	itm.protection[PROT_BLUNT]		=	sr;
	itm.protection[PROT_EDGE]		=	sr;
	itm.protection[PROT_POINT]		=	pr;
	itm.protection[PROT_FIRE]		=	fr;
	itm.protection[PROT_MAGIC]		=	mr;
	itm.protection[PROT_BARRIER]	=	mr;
	
	itm.description				=	itm.name;
	itm.COUNT[1]				=	sr;
	itm.COUNT[2]				=	pr;
	itm.COUNT[3]				=	fr;
	itm.COUNT[4]				=	mr;
	itm.COUNT[5]				=	itm.value;
	
	itm.visual_skin				=	skin;
};

///******************************************************************************************
/// OldCamp
///******************************************************************************************
instance ITAR_STT_L (ItemPR_Armor)
{
	name						=	"Strój cienia";
	visual						=	"ItAr_STT_L.3ds";
	visual_change				=	"Armor_STT_L.asc";
	SetItArAttributes (self, 20,20,0,0,   0);	/// 4 level
};

instance ITAR_STT_H (ItemPR_Armor)
{
	name						=	"Zbroja cienia";
	visual						=	"ItAr_STT_H.3ds";
	visual_change				=	"Armor_STT_H.asc";
	SetItArAttributes (self, 35,35,5,5,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_GRD_L (ItemPR_Armor)
{
	name						=	"Pancerz stra¿nika";
	visual						=	"ItAr_GRD_L.3ds";
	visual_change				=	"Armor_GRD_L.asc";
	description					=	"Lekki pancerz stra¿nika";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_GRD_M (ItemPR_Armor)
{
	name						=	"Pancerz stra¿nika";
	visual						=	"ItAr_GRD_M.3ds";
	visual_change				=	"Armor_GRD_M.asc";
	description					=	"Œredni pancerz stra¿nika";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};

instance ITAR_GRD_H (ItemPR_Armor)
{
	name						=	"Pancerz stra¿nika";
	visual						=	"ItAr_GRD_H.3ds";
	visual_change				=	"Armor_GRD_H.asc";
	description					=	"Ciê¿ki pancerz stra¿nika";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_EBR_M (ItemPR_Armor)
{
	name						=	"Pancerz magnata";
	visual						=	"ItAr_EBR_M.3ds";
	visual_change				=	"Armor_EBR.asc";
	SetItArAttributes (self, 115,115,45,45,   0);	/// 32 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

instance ITAR_EBR_G (ItemPR_Armor)
{
	name						=	"Pancerz Gomeza";
	visual						=	"ItAr_EBR_G.3ds";
	visual_change				=	"Armor_EBR.asc";
	SetItArAttributes (self, 140,140,60,60,   1);	/// 40 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

///******************************************************************************************
/// OldCamp (BABE)
///******************************************************************************************
instance ITAR_Babe_STT_L (ItemPR_Armor)
{
	name						=	"Strój cienia";
	visual						=	"ItAr_STT_L.3ds";
	visual_change				=	"Armor_Babe_STT_L.asc";
	SetItArAttributes (self, 20,20,0,0,   0);	/// 4 level
};

instance ITAR_Babe_STT_H (ItemPR_Armor)
{
	name						=	"Zbroja cienia";
	visual						=	"ItAr_STT_H.3ds";
	visual_change				=	"Armor_Babe_STT_H.asc";
	SetItArAttributes (self, 35,35,5,5,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_Babe_GRD_L (ItemPR_Armor)
{
	name						=	"Pancerz stra¿nika";
	visual						=	"ItAr_GRD_L.3ds";
	visual_change				=	"Armor_Babe_GRD_L.asc";
	description					=	"Lekki pancerz stra¿nika";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_Babe_GRD_M (ItemPR_Armor)
{
	name						=	"Pancerz stra¿nika";
	visual						=	"ItAr_GRD_M.3ds";
	visual_change				=	"Armor_Babe_GRD_M.asc";
	description					=	"Œredni pancerz stra¿nika";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};

instance ITAR_Babe_GRD_H (ItemPR_Armor)
{
	name						=	"Pancerz stra¿nika";
	visual						=	"ItAr_GRD_H.3ds";
	visual_change				=	"Armor_Babe_GRD_H.asc";
	description					=	"Ciê¿ki pancerz stra¿nika";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
/// NewCamp
///******************************************************************************************
instance ITAR_ORG_L (ItemPR_Armor)
{
	name						=	"Pancerz szkodnika";
	visual						=	"ItAr_ORG_L.3ds";
	visual_change				=	"Armor_ORG_L.asc";
	description					=	"Lekki pancerz szkodnika";
	SetItArAttributes (self, 20,20,0,0,   0);	/// 4 level
};

instance ITAR_ORG_H (ItemPR_Armor)
{
	name						=	"Pancerz szkodnika";
	visual						=	"ItAr_ORG_H.3ds";
	visual_change				=	"Armor_ORG_H.asc";
	description					=	"Ciê¿ki pancerz szkodnika";
	SetItArAttributes (self, 35,35,5,5,   0);	/// 8 level
};

/// sld armors in IT_ArmorsG2 file

///******************************************************************************************
/// NewCamp (BABE)
///******************************************************************************************
instance ITAR_Babe_ORG_L (ItemPR_Armor)
{
	name						=	"Pancerz szkodnika";
	visual						=	"ItAr_ORG_L.3ds";
	visual_change				=	"Armor_Babe_ORG_L.asc";
	description					=	"Lekki pancerz szkodnika";
	SetItArAttributes (self, 20,20,0,0,   0);	/// 4 level
};

instance ITAR_Babe_ORG_H (ItemPR_Armor)
{
	name						=	"Pancerz szkodnika";
	visual						=	"ItAr_ORG_H.3ds";
	visual_change				=	"Armor_Babe_ORG_H.asc";
	description					=	"Ciê¿ki pancerz szkodnika";
	SetItArAttributes (self, 35,35,5,5,   0);	/// 8 level
};

/// sld armors in IT_ArmorsG2 file

///******************************************************************************************
/// PsiCamp
///******************************************************************************************
instance ITAR_SLN_L (ItemPR_Armor)
{
	name						=	"Przepaska nowicjusza";
	visual						=	"ItAr_SLN_L.3ds";
	visual_change				=	"Armor_SLN_L.asc";
	SetItArAttributes (self, 5,5,0,10,   0);	/// 2 level
};

instance ITAR_SLN_M (ItemPR_Armor)
{
	name						=	"Szata nowicjusza";
	visual						=	"ItAr_SLN_M.3ds";
	visual_change				=	"Armor_SLN_M.asc";
	SetItArAttributes (self, 15,15,0,10,   0);	/// 4 level
};

instance ITAR_SLN_H (ItemPR_Armor)
{
	name						=	"Zbroja nowicjusza";
	visual						=	"ItAr_SLN_H.3ds";
	visual_change				=	"Armor_SLN_H.asc";
	SetItArAttributes (self, 30,30,10,10,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_SLT_L (ItemPR_Armor)
{
	name						=	"Pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_L.3ds";
	visual_change				=	"Armor_SLT_L.asc";
	description					=	"Lekki pancerz œwi¹tynny";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_SLT_M (ItemPR_Armor)
{
	name						=	"Pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_M.3ds";
	visual_change				=	"Armor_SLT_M.asc";
	description					=	"Œredni pancerz œwi¹tynny";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};

instance ITAR_SLT_H (ItemPR_Armor)
{
	name						=	"Pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_H.3ds";
	visual_change				=	"Armor_SLT_H.asc";
	description					=	"Ciê¿ki pancerz œwi¹tynny";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_SLG_L (ItemPR_Armor)
{
	name						=	"Szata Guru";
	visual						=	"ItAr_SLG_L.3ds";
	visual_change				=	"Armor_SLG_L.asc";
	SetItArAttributes (self, 50,50,30,30,   0);	/// 16 level
};

instance ITAR_SLG_H (ItemPR_Armor)
{
	name						=	"Zdobiona szata Guru";
	visual						=	"ItAr_SLG_H.3ds";
	visual_change				=	"Armor_SLG_H.asc";
	SetItArAttributes (self, 75,75,45,45,   0);	/// 24 level
};

///******************************************************************************************
/// PsiCamp (BABE)
///******************************************************************************************
instance ITAR_Babe_SLN_L (ItemPR_Armor)
{
	name						=	"Przepaska nowicjusza";
	visual						=	"ItAr_SLN_L.3ds";
	visual_change				=	"Armor_Babe_SLN_L.asc";
	SetItArAttributes (self, 5,5,0,10,   0);	/// 2 level
};

instance ITAR_Babe_SLN_M (ItemPR_Armor)
{
	name						=	"Szata nowicjusza";
	visual						=	"ItAr_SLN_M.3ds";
	visual_change				=	"Armor_Babe_SLN_M.asc";
	SetItArAttributes (self, 15,15,0,10,   0);	/// 4 level
};

instance ITAR_Babe_SLN_H (ItemPR_Armor)
{
	name						=	"Zbroja nowicjusza";
	visual						=	"ItAr_SLN_H.3ds";
	visual_change				=	"Armor_Babe_SLN_H.asc";
	SetItArAttributes (self, 30,30,10,10,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_Babe_SLT_L (ItemPR_Armor)
{
	name						=	"Pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_L.3ds";
	visual_change				=	"Armor_Babe_SLT_L.asc";
	description					=	"Lekki pancerz œwi¹tynny";
	SetItArAttributes (self, 50,50,10,10,   0);	/// 12 level
};

instance ITAR_Babe_SLT_M (ItemPR_Armor)
{
	name						=	"Pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_M.3ds";
	visual_change				=	"Armor_Babe_SLT_M.asc";
	description					=	"Œredni pancerz œwi¹tynny";
	SetItArAttributes (self, 70,70,20,20,   0);	/// 18 level
};

instance ITAR_Babe_SLT_H (ItemPR_Armor)
{
	name						=	"Pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_H.3ds";
	visual_change				=	"Armor_Babe_SLT_H.asc";
	description					=	"Ciê¿ki pancerz œwi¹tynny";
	SetItArAttributes (self, 90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_Babe_SLG_L (ItemPR_Armor)
{
	name						=	"Szata Guru";
	visual						=	"ItAr_SLG_L.3ds";
	visual_change				=	"Armor_Babe_SLG_L.asc";
	SetItArAttributes (self, 50,50,30,30,   0);	/// 16 level
};

instance ITAR_Babe_SLG_H (ItemPR_Armor)
{
	name						=	"Zdobiona szata Guru";
	visual						=	"ItAr_SLG_H.3ds";
	visual_change				=	"Armor_Babe_SLG_H.asc";
	SetItArAttributes (self, 75,75,45,45,   0);	/// 24 level
};

///******************************************************************************************
/// Magic armors
///******************************************************************************************
instance ITAR_ORE_M (ItemPR_Armor)
{
	name						=	"Magiczna zbroja";
	visual						=	"ItAr_ORE_M.3ds";
	visual_change				=	"Armor_ORE.asc";
	description					=	"Staro¿ytna zbroja magiczna";
	SetItArAttributes (self, 165,165,105,105,   0);	/// 54 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};

instance ITAR_ORE_H (ItemPR_Armor)
{
	name						=	"Magiczna zbroja";
	visual						=	"ItAr_ORE_H.3ds";
	visual_change				=	"Armor_ORE.asc";
	description					=	"Wzmocniona zbroja magiczna";
	SetItArAttributes (self, 180,180,120,120,   1);	/// 60 level
	
	material					=	MAT_METAL;
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
};
