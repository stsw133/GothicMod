///******************************************************************************************
prototype ItemPR_Armor (C_Item)
{
	mainflag					=	ITEM_KAT_ARMOR;
	wear						=	WEAR_TORSO;
	material					=	MAT_LEATHER;
	
	TEXT[0]						=	NAME_Prot_Blunt;
	TEXT[1]						=	NAME_Prot_Edge;
	TEXT[2]						=	NAME_Prot_Point;
	TEXT[3]						=	NAME_Prot_Fire;
	TEXT[4]						=	NAME_Prot_Magic;
	TEXT[5]						=	NAME_Value;
	inv_rotx					=	INVCAM_X_ARMOR_STANDARD;
};

prototype ItemPR_HeavyArmor (C_Item)
{
	mainflag					=	ITEM_KAT_ARMOR;
	wear						=	WEAR_TORSO;
	material					=	MAT_METAL;
	
	on_equip					=	Equip_HeavyArmor;
	on_unequip					=	UnEquip_HeavyArmor;
	
	TEXT[0]						=	PRINT_HeavyArmor;
	TEXT[1]						=	NAME_Prot_Edge;
	TEXT[2]						=	NAME_Prot_Point;
	TEXT[3]						=	NAME_Prot_Fire;
	TEXT[4]						=	NAME_Prot_Magic;
	TEXT[5]						=	NAME_Value;
	inv_rotx					=	INVCAM_X_ARMOR_STANDARD;
};

///******************************************************************************************
func void SetItArAttributes (var C_Item itm, var int br, var int er, var int pr, var int fr, var int mr, var int skin)
{
	itm.value = ((br+er)/2 + pr + fr + mr + 4) / 5 * 50;
	
	itm.protection[PROT_BLUNT]		=	br;
	itm.protection[PROT_EDGE]		=	er;
	itm.protection[PROT_POINT]		=	pr;
	itm.protection[PROT_FIRE]		=	fr;
	itm.protection[PROT_MAGIC]		=	mr;
	itm.protection[PROT_BARRIER]	=	mr;
	
	itm.description				=	itm.name;
	itm.COUNT[0]				=	br;
	itm.COUNT[1]				=	er;
	itm.COUNT[2]				=	pr;
	itm.COUNT[3]				=	fr;
	itm.COUNT[4]				=	mr;
	itm.COUNT[5]				=	itm.value;
	
	itm.visual_skin				=	skin;
};

///******************************************************************************************
/// Bodies (BABE)
///******************************************************************************************
instance ITAR_Babe_Body_Warrior (ItemPR_Armor)
{
	name						=	"Strój wojowniczki";
	visual						=	"ItAr_SLT_L.3ds";
	visual_change				=	"Armor_Babe_Body_Warrior.asc";
	SetItArAttributes (self, 15,15,5,0,10,   0);	/// 3 level
};

///******************************************************************************************
/// Prisoner armors: STRF
///******************************************************************************************
instance ITAR_STRF_L (ItemPR_Armor)
{
	name						=	"£achy skazañca";
	visual						=	"ItAr_STRF_L.3ds";
	visual_change				=	"Armor_STRF_L.asc";
	SetItArAttributes (self, 4,4,4,0,0,   0);	/// 0.8 level
};

instance ITAR_STRF_S (ItemPR_Armor)
{
	name						=	"£achy skazañca";
	visual						=	"ItAr_STRF_L.3ds";
	visual_change				=	"Armor_STRF_L.asc";
	SetItArAttributes (self, 4,4,4,0,0,   1);	/// 0.8 level
};

instance ITAR_STRF_B (ItemPR_Armor)
{
	name						=	"£achmany";
	visual						=	"ItAr_STRF_L.3ds";
	visual_change				=	"Armor_STRF_L.asc";
	SetItArAttributes (self, 4,4,4,0,0,   2);	/// 0.8 level
};

instance ITAR_STRF_H (ItemPR_Armor)
{
	name						=	"£achy skazañca";
	visual						=	"ItAr_STRF_H.3ds";
	visual_change				=	"Armor_STRF_H.asc";
	SetItArAttributes (self, 8,8,8,0,0,   0);	/// 1.6 level
};

///******************************************************************************************
/// Prisoner armors: STRF (BABE)
///******************************************************************************************
instance ITAR_Babe_STRF_L (ItemPR_Armor)
{
	name						=	"£achy skazañca";
	visual						=	"ItAr_STRF_L.3ds";
	visual_change				=	"Armor_Babe_STRF_L.asc";
	SetItArAttributes (self, 4,4,4,0,0,   0);	/// 0.8 level
};

instance ITAR_Babe_STRF_S (ItemPR_Armor)
{
	name						=	"£achy skazañca";
	visual						=	"ItAr_STRF_L.3ds";
	visual_change				=	"Armor_Babe_STRF_L.asc";
	SetItArAttributes (self, 4,4,4,0,0,   1);	/// 0.8 level
};

instance ITAR_Babe_STRF_B (ItemPR_Armor)
{
	name						=	"£achmany";
	visual						=	"ItAr_STRF_L.3ds";
	visual_change				=	"Armor_Babe_STRF_L.asc";
	SetItArAttributes (self, 4,4,4,0,0,   2);	/// 0.8 level
};

instance ITAR_Babe_STRF_H (ItemPR_Armor)
{
	name						=	"£achy skazañca";
	visual						=	"ItAr_STRF_H.3ds";
	visual_change				=	"Armor_Babe_STRF_H.asc";
	SetItArAttributes (self, 8,8,8,0,0,   0);	/// 1.6 level
};

///******************************************************************************************
/// OldCamp
///******************************************************************************************
instance ITAR_STT_P (ItemPR_Armor)
{
	name						=	"Spodnie cienia";
	visual						=	"ItAr_STT_P.3ds";
	visual_change				=	"Armor_STT_P.asc";
	SetItArAttributes (self, 8,8,8,0,0,   0);	/// 1.6 level
};

instance ITAR_STT_L (ItemPR_Armor)
{
	name						=	"Strój cienia";
	visual						=	"ItAr_STT_L.3ds";
	visual_change				=	"Armor_STT_L.asc";
	SetItArAttributes (self, 20,20,20,0,0,   0);	/// 4 level
};

instance ITAR_STT_H (ItemPR_Armor)
{
	name						=	"Zbroja cienia";
	visual						=	"ItAr_STT_H.3ds";
	visual_change				=	"Armor_STT_H.asc";
	SetItArAttributes (self, 35,35,35,5,5,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_GRD_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz stra¿nika";
	visual						=	"ItAr_GRD_L.3ds";
	visual_change				=	"Armor_GRD_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
};

instance ITAR_GRD_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz stra¿nika";
	visual						=	"ItAr_GRD_M.3ds";
	visual_change				=	"Armor_GRD_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
};

instance ITAR_GRD_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz stra¿nika";
	visual						=	"ItAr_GRD_H.3ds";
	visual_change				=	"Armor_GRD_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_EBR_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz magnata";
	visual						=	"ItAr_EBR.3ds";
	visual_change				=	"Armor_EBR.asc";
	SetItArAttributes (self, 120,120,120,40,40,   0);	/// 32 level
};

instance ITAR_EBR_G (ItemPR_HeavyArmor)
{
	name						=	"Pancerz Gomeza";
	visual						=	"ItAr_EBR.3ds";
	visual_change				=	"Armor_EBR.asc";
	SetItArAttributes (self, 140,140,140,60,60,   1);	/// 40 level
};

instance ITAR_EBR_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz magnata";
	visual						=	"ItAr_EBR.3ds";
	visual_change				=	"Armor_EBR.asc";
	SetItArAttributes (self, 160,160,160,80,80,   2);	/// 48 level
};

///******************************************************************************************
/// OldCamp (BABE)
///******************************************************************************************
instance ITAR_Babe_STT_P (ItemPR_Armor)
{
	name						=	"Spodnie cienia";
	visual						=	"ItAr_STT_P.3ds";
	visual_change				=	"Armor_Babe_STT_P.asc";
	SetItArAttributes (self, 8,8,8,0,0,   0);	/// 1.6 level
};

instance ITAR_Babe_STT_L (ItemPR_Armor)
{
	name						=	"Strój cienia";
	visual						=	"ItAr_STT_L.3ds";
	visual_change				=	"Armor_Babe_STT_L.asc";
	SetItArAttributes (self, 20,20,20,0,0,   0);	/// 4 level
};

instance ITAR_Babe_STT_H (ItemPR_Armor)
{
	name						=	"Zbroja cienia";
	visual						=	"ItAr_STT_H.3ds";
	visual_change				=	"Armor_Babe_STT_H.asc";
	SetItArAttributes (self, 35,35,35,5,5,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_Babe_GRD_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz stra¿nika";
	visual						=	"ItAr_GRD_L.3ds";
	visual_change				=	"Armor_Babe_GRD_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
};

instance ITAR_Babe_GRD_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz stra¿nika";
	visual						=	"ItAr_GRD_M.3ds";
	visual_change				=	"Armor_Babe_GRD_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
};

instance ITAR_Babe_GRD_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz stra¿nika";
	visual						=	"ItAr_GRD_H.3ds";
	visual_change				=	"Armor_Babe_GRD_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
/// NewCamp
///******************************************************************************************
instance ITAR_ORG_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz szkodnika";
	visual						=	"ItAr_ORG_L.3ds";
	visual_change				=	"Armor_ORG_L.asc";
	SetItArAttributes (self, 20,20,20,0,0,   0);	/// 4 level
};

instance ITAR_ORG_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz szkodnika";
	visual						=	"ItAr_ORG_M.3ds";
	visual_change				=	"Armor_ORG_M.asc";
	SetItArAttributes (self, 25,25,25,5,5,   0);	/// 6 level
};

instance ITAR_ORG_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz szkodnika";
	visual						=	"ItAr_ORG_H.3ds";
	visual_change				=	"Armor_ORG_H.asc";
	SetItArAttributes (self, 35,35,35,5,5,   0);	/// 8 level
};

/// sld armors in IT_ArmorsG2 file

///******************************************************************************************
/// NewCamp (BABE)
///******************************************************************************************
instance ITAR_Babe_ORG_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz szkodnika";
	visual						=	"ItAr_ORG_L.3ds";
	visual_change				=	"Armor_Babe_ORG_L.asc";
	SetItArAttributes (self, 20,20,20,0,0,   0);	/// 4 level
};

instance ITAR_Babe_ORG_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz szkodnika";
	visual						=	"ItAr_ORG_M.3ds";
	visual_change				=	"Armor_Babe_ORG_M.asc";
	SetItArAttributes (self, 25,25,25,5,5,   0);	/// 6 level
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
	SetItArAttributes (self, 5,5,5,0,10,   0);	/// 2 level
};

instance ITAR_SLN_M (ItemPR_Armor)
{
	name						=	"Szata nowicjusza";
	visual						=	"ItAr_SLN_M.3ds";
	visual_change				=	"Armor_SLN_M.asc";
	SetItArAttributes (self, 15,15,15,0,10,   0);	/// 4 level
};

instance ITAR_SLN_H (ItemPR_Armor)
{
	name						=	"Zbroja nowicjusza";
	visual						=	"ItAr_SLN_H.3ds";
	visual_change				=	"Armor_SLN_H.asc";
	SetItArAttributes (self, 30,30,30,10,10,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_SLT_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_L.3ds";
	visual_change				=	"Armor_SLT_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
};

instance ITAR_SLT_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_M.3ds";
	visual_change				=	"Armor_SLT_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
};

instance ITAR_SLT_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_H.3ds";
	visual_change				=	"Armor_SLT_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_SLG_L (ItemPR_Armor)
{
	name						=	"Szata Guru";
	visual						=	"ItAr_SLG_L.3ds";
	visual_change				=	"Armor_SLG_L.asc";
	SetItArAttributes (self, 50,50,50,30,30,   0);	/// 16 level
};

instance ITAR_SLG_H (ItemPR_Armor)
{
	name						=	"Zdobiona szata Guru";
	visual						=	"ItAr_SLG_H.3ds";
	visual_change				=	"Armor_SLG_H.asc";
	SetItArAttributes (self, 75,75,75,45,45,   0);	/// 24 level
};

///******************************************************************************************
/// PsiCamp (BABE)
///******************************************************************************************
instance ITAR_Babe_SLN_L (ItemPR_Armor)
{
	name						=	"Przepaska nowicjusza";
	visual						=	"ItAr_SLN_L.3ds";
	visual_change				=	"Armor_Babe_SLN_L.asc";
	SetItArAttributes (self, 5,5,5,0,10,   0);	/// 2 level
};

instance ITAR_Babe_SLN_M (ItemPR_Armor)
{
	name						=	"Szata nowicjusza";
	visual						=	"ItAr_SLN_M.3ds";
	visual_change				=	"Armor_Babe_SLN_M.asc";
	SetItArAttributes (self, 15,15,15,0,10,   0);	/// 4 level
};

instance ITAR_Babe_SLN_H (ItemPR_Armor)
{
	name						=	"Zbroja nowicjusza";
	visual						=	"ItAr_SLN_H.3ds";
	visual_change				=	"Armor_Babe_SLN_H.asc";
	SetItArAttributes (self, 30,30,30,10,10,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_Babe_SLT_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_L.3ds";
	visual_change				=	"Armor_Babe_SLT_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
};

instance ITAR_Babe_SLT_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_M.3ds";
	visual_change				=	"Armor_Babe_SLT_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
};

instance ITAR_Babe_SLT_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz œwi¹tynny";
	visual						=	"ItAr_SLT_H.3ds";
	visual_change				=	"Armor_Babe_SLT_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_Babe_SLG_L (ItemPR_Armor)
{
	name						=	"Szata Guru";
	visual						=	"ItAr_SLG_L.3ds";
	visual_change				=	"Armor_Babe_SLG_L.asc";
	SetItArAttributes (self, 50,50,50,30,30,   0);	/// 16 level
};

instance ITAR_Babe_SLG_H (ItemPR_Armor)
{
	name						=	"Zdobiona szata Guru";
	visual						=	"ItAr_SLG_H.3ds";
	visual_change				=	"Armor_Babe_SLG_H.asc";
	SetItArAttributes (self, 75,75,75,45,45,   0);	/// 24 level
};

///******************************************************************************************
/// Magic armors
///******************************************************************************************
instance ITAR_ORE_M (ItemPR_HeavyArmor)
{
	name						=	"Staro¿ytna zbroja magiczna";
	visual						=	"ItAr_ORE.3ds";
	visual_change				=	"Armor_ORE.asc";
	SetItArAttributes (self, 165,165,165,105,105,   0);	/// 54 level
};

instance ITAR_ORE_H (ItemPR_HeavyArmor)
{
	name						=	"Wzmocniona zbroja magiczna";
	visual						=	"ItAr_ORE.3ds";
	visual_change				=	"Armor_ORE.asc";
	SetItArAttributes (self, 180,180,180,120,120,   1);	/// 60 level
};
