///******************************************************************************************
/// Leather armors
///******************************************************************************************

var int Equipped_ArmorSet_Leather;
func void Equip_ArmorSet_Leather()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_Leather += 1;
		if (Equipped_ArmorSet_Leather > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
	};
};
func void UnEquip_ArmorSet_Leather()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_Leather > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_Leather -= 1;
	};
};

///******************************************************************************************
instance ITAR_Leather_L1 (ItemPR_Armor)	/// wolf leather
{
	name						=	"Pancerz ze skór wilków I";
	visual						=	"ItAr_Leather_L.3ds";
	visual_change				=	"Armor_Leather_L.asc";
	SetItArAttributes (self, 25,25,20,5,0,   0);	/// 5 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

instance ITAR_Leather_L2 (ItemPR_Armor)	/// wolf leather
{
	name						=	"Pancerz ze skór wilków II";
	visual						=	"ItAr_Leather_L.3ds";
	visual_change				=	"Armor_Leather_L.asc";
	SetItArAttributes (self, 30,30,25,10,5,   1);	/// 7 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

instance ITAR_Leather_L3 (ItemPR_Armor)	/// wolf leather
{
	name						=	"Pancerz ze skór wilków III";
	visual						=	"ItAr_Leather_L.3ds";
	visual_change				=	"Armor_Leather_L.asc";
	SetItArAttributes (self, 35,35,30,15,10,   2);	/// 9 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

instance ITAR_Leather_T (ItemPR_Armor)	/// tiger leather
{
	name						=	"Pancerz ze skór tygrysów";
	visual						=	"ItAr_Leather_T.3ds";
	visual_change				=	"Armor_Leather_M.asc";
	SetItArAttributes (self, 40,40,35,20,15,   0);	/// 11 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

instance ITAR_Leather_S (ItemPR_Armor)	/// shadowbeast leather
{
	name						=	"Pancerz ze skór cieniostworów";
	visual						=	"ItAr_Leather_S.3ds";
	visual_change				=	"Armor_Leather_M.asc";
	SetItArAttributes (self, 60,60,55,30,25,   1);	/// 17 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

instance ITAR_Leather_H1 (ItemPR_Armor)	/// troll leather
{
	name						=	"Pancerz ze skór trolli";
	visual						=	"ItAr_Leather_H.3ds";
	visual_change				=	"Armor_Leather_H.asc";
	SetItArAttributes (self, 80,80,75,40,35,   0);	/// 23 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

instance ITAR_Leather_H2 (ItemPR_Armor)	/// black troll leather
{
	name						=	"Pancerz ze skór czarnych trolli";
	visual						=	"ItAr_Leather_H.3ds";
	visual_change				=	"Armor_Leather_H.asc";
	SetItArAttributes (self, 85,85,80,45,40,   1);	/// 25 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

///******************************************************************************************
instance ITAR_Leather_BDT (ItemPR_Armor)
{
	name						=	"Skórzany pancerz bandyty";
	visual						=	"ITAR_Leather_BDT.3ds";
	visual_change				=	"Armor_Leather_BDT.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 25,25,20,5,0,   0);	/// 5 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

///******************************************************************************************
/// Leather armors (BABE)
///******************************************************************************************
instance ITAR_Babe_Leather (ItemPR_Armor)
{
	name						=	"Pancerz ze skór wilków";
	visual						=	"ItAr_Leather_L.3ds";
	visual_change				=	"Armor_Babe_Leather.asc";
	SetItArAttributes (self, 25,25,20,5,0,   0);	/// 5 level
	
	on_equip					=	Equip_ArmorSet_Leather;
	on_unequip					=	UnEquip_ArmorSet_Leather;
};

///******************************************************************************************
/// Plate armors
///******************************************************************************************

var int Equipped_ArmorSet_Plates;
func void Equip_ArmorSet_Plates()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_Plates += 1;
		if (Equipped_ArmorSet_Plates > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
	};
};
func void UnEquip_ArmorSet_Plates()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_Plates > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_Plates -= 1;
	};
};

///******************************************************************************************
instance ITAR_Crawler (ItemPR_Armor)
{
	name							=	"Zbroja z p³ytek pe³zaczy";
	visual							=	"ItAr_Crawler.3ds";
	visual_change					=	"Armor_Crawler.asc";
	SetItArAttributes (self, 40,50,55,25,5,   0);	/// 13 level
	
	on_equip						=	Equip_ArmorSet_Plates;
	on_unequip						=	UnEquip_ArmorSet_Plates;
};

instance ITAR_DragonSnapper (ItemPR_Armor)
{
	name							=	"Zbroja z ³usek zêbaczy";
	visual							=	"ItAr_DragonSnapper.3ds";
	visual_change					=	"Armor_Crawler.asc";
	SetItArAttributes (self, 60,70,75,35,15,   1);	/// 19 level
	
	on_equip						=	Equip_ArmorSet_Plates;
	on_unequip						=	UnEquip_ArmorSet_Plates;
};

///******************************************************************************************
/// Plate armors (BABE)
///******************************************************************************************
instance ITAR_Babe_Crawler (ItemPR_Armor)
{
	name							=	"Zbroja z p³ytek pe³zaczy";
	visual							=	"ItAr_Crawler.3ds";
	visual_change					=	"Armor_Babe_Crawler.asc";
	SetItArAttributes (self, 40,50,55,25,5,   0);	/// 13 level
	
	on_equip						=	Equip_ArmorSet_Plates;
	on_unequip						=	UnEquip_ArmorSet_Plates;
};

///******************************************************************************************
/// Guard armors: MIL & ROY
///******************************************************************************************

var int Equipped_ArmorSet_MIL;
func void Equip_ArmorSet_MIL()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_MIL += 1;
		if (Equipped_ArmorSet_MIL > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
	};
};
func void UnEquip_ArmorSet_MIL()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_MIL > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_MIL -= 1;
	};
};

var int Equipped_ArmorSet_ROY;
func void Equip_ArmorSet_ROY()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_ROY += 1;
		if (Equipped_ArmorSet_ROY > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
		Equip_HeavyArmor();
	};
};
func void UnEquip_ArmorSet_ROY()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_ROY > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_ROY -= 1;
		UnEquip_HeavyArmor();
	};
};

///******************************************************************************************
instance ITAR_MIL_N (ItemPR_Armor)
{
	name						=	"Strój stra¿y";
	visual						=	"ItAr_MIL_N.3ds";
	visual_change				=	"Armor_MIL_N.asc";
	SetItArAttributes (self, 30,30,30,0,0,   0);	/// 6 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

instance ITAR_MIL_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz stra¿y";
	visual						=	"ItAr_MIL_L.3ds";
	visual_change				=	"Armor_MIL_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

instance ITAR_MIL_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz stra¿y";
	visual						=	"ItAr_MIL_M.3ds";
	visual_change				=	"Armor_MIL_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

instance ITAR_MIL_H (ItemPR_Armor)
{
	name						=	"Ciêzki pancerz stra¿y";
	visual						=	"ItAr_MIL_H.3ds";
	visual_change				=	"Armor_MIL_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

///******************************************************************************************
instance ITAR_ROY_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz gwardii królewskiej";
	visual						=	"ItAr_ROY_L.3ds";
	visual_change				=	"Armor_Roy_L.asc";
	SetItArAttributes (self, 120,120,120,60,60,   0);	/// 36 level
	
	on_equip					=	Equip_ArmorSet_ROY;
	on_unequip					=	UnEquip_ArmorSet_ROY;
};

instance ITAR_ROY_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz gwardii królewskiej";
	visual						=	"ItAr_ROY_M.3ds";
	visual_change				=	"Armor_Roy_M.asc";
	SetItArAttributes (self, 135,135,135,75,75,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_ROY;
	on_unequip					=	UnEquip_ArmorSet_ROY;
};

instance ITAR_ROY_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz gwardii królewskiej";
	visual						=	"ItAr_ROY_H.3ds";
	visual_change				=	"Armor_Roy_H.asc";
	SetItArAttributes (self, 150,150,150,90,90,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_ROY;
	on_unequip					=	UnEquip_ArmorSet_ROY;
};

///******************************************************************************************
/// Guard armors: MIL & ROY (BABE)
///******************************************************************************************
instance ITAR_Babe_MIL_N (ItemPR_Armor)
{
	name						=	"Strój stra¿y";
	visual						=	"ItAr_MIL_N.3ds";
	visual_change				=	"Armor_Babe_MIL_N.asc";
	SetItArAttributes (self, 30,30,30,0,0,   0);	/// 6 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

instance ITAR_Babe_MIL_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz stra¿y";
	visual						=	"ItAr_MIL_L.3ds";
	visual_change				=	"Armor_Babe_MIL_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

instance ITAR_Babe_MIL_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz stra¿y";
	visual						=	"ItAr_MIL_M.3ds";
	visual_change				=	"Armor_Babe_MIL_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

instance ITAR_Babe_MIL_H (ItemPR_Armor)
{
	name						=	"Ciêzki pancerz stra¿y";
	visual						=	"ItAr_MIL_H.3ds";
	visual_change				=	"Armor_Babe_MIL_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
	
	on_equip					=	Equip_ArmorSet_MIL;
	on_unequip					=	UnEquip_ArmorSet_MIL;
};

///******************************************************************************************
/// Dragon hunter armors: SLD & DJG
///******************************************************************************************

var int Equipped_ArmorSet_SLD;
func void Equip_ArmorSet_SLD()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_SLD += 1;
		if (Equipped_ArmorSet_SLD > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
	};
};
func void UnEquip_ArmorSet_SLD()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_SLD > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_SLD -= 1;
	};
};

var int Equipped_ArmorSet_DJG;
func void Equip_ArmorSet_DJG()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_DJG += 1;
		if (Equipped_ArmorSet_DJG > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
		Equip_HeavyArmor();
	};
};
func void UnEquip_ArmorSet_DJG()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_DJG > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_DJG -= 1;
		UnEquip_HeavyArmor();
	};
};

///******************************************************************************************
instance ITAR_SLD_N (ItemPR_Armor)
{
	name						=	"Strój najemnika";
	visual						=	"ItAr_SLD_N.3ds";
	visual_change				=	"Armor_SLD_N.asc";
	SetItArAttributes (self, 30,30,30,0,0,   0);	/// 6 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

instance ITAR_SLD_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz najemnika";
	visual						=	"ItAr_SLD_L.3ds";
	visual_change				=	"Armor_SLD_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

instance ITAR_SLD_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz najemnika";
	visual						=	"ItAr_SLD_M.3ds";
	visual_change				=	"Armor_SLD_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

instance ITAR_SLD_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz najemnika";
	visual						=	"ItAr_SLD_H.3ds";
	visual_change				=	"Armor_SLD_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

///******************************************************************************************
instance ITAR_DJG_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz ³owcy smoków";
	visual						=	"ItAr_DJG_L.3ds";
	visual_change				=	"Armor_DJG_L.asc";
	SetItArAttributes (self, 120,120,120,80,40,   0);	/// 36 level
	
	on_equip					=	Equip_ArmorSet_DJG;
	on_unequip					=	UnEquip_ArmorSet_DJG;
};

instance ITAR_DJG_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz ³owcy smoków";
	visual						=	"ItAr_DJG_M.3ds";
	visual_change				=	"Armor_DJG_M.asc";
	SetItArAttributes (self, 135,135,135,95,55,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_DJG;
	on_unequip					=	UnEquip_ArmorSet_DJG;
};

instance ITAR_DJG_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz ³owcy smoków";
	visual						=	"ItAr_DJG_H.3ds";
	visual_change				=	"Armor_DJG_H.asc";
	SetItArAttributes (self, 150,150,150,110,70,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_DJG;
	on_unequip					=	UnEquip_ArmorSet_DJG;
};

///******************************************************************************************
/// Dragon hunter armors: SLD & DJG (BABE)
///******************************************************************************************
instance ITAR_Babe_SLD_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz najemnika";
	visual						=	"ItAr_SLD_L.3ds";
	visual_change				=	"Armor_Babe_SLD_L.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

instance ITAR_Babe_SLD_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz najemnika";
	visual						=	"ItAr_SLD_M.3ds";
	visual_change				=	"Armor_Babe_SLD_M.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

instance ITAR_Babe_SLD_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz najemnika";
	visual						=	"ItAr_SLD_H.3ds";
	visual_change				=	"Armor_Babe_SLD_H.asc";
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
	
	on_equip					=	Equip_ArmorSet_SLD;
	on_unequip					=	UnEquip_ArmorSet_SLD;
};

///******************************************************************************************
instance ITAR_Babe_DJG_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz ³owcy smoków";
	visual						=	"ItAr_DJG_L.3ds";
	visual_change				=	"Armor_Babe_DJG_L.asc";
	SetItArAttributes (self, 120,120,120,80,40,   0);	/// 36 level
	
	on_equip					=	Equip_ArmorSet_DJG;
	on_unequip					=	UnEquip_ArmorSet_DJG;
};

instance ITAR_Babe_DJG_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz ³owcy smoków";
	visual						=	"ItAr_DJG_H.3ds";
	visual_change				=	"Armor_Babe_DJG_H.asc";
	SetItArAttributes (self, 150,150,150,110,70,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_DJG;
	on_unequip					=	UnEquip_ArmorSet_DJG;
};

///******************************************************************************************
/// Orc warrior armors
///******************************************************************************************

var int Equipped_ArmorSet_ORW;
func void Equip_ArmorSet_ORW()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_ORW += 1;
		if (Equipped_ArmorSet_ORW > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
		Equip_HeavyArmor();
	};
};
func void UnEquip_ArmorSet_ORW()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_ORW > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_ORW -= 1;
		UnEquip_HeavyArmor();
	};
};

///******************************************************************************************
instance ITAR_ORW_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz wojownika orków";
	visual						=	"ItAr_ORW_L.3ds";
	visual_change				=	"Armor_ORW_L.asc";
	SetItArAttributes (self, 120,120,120,80,40,   0);	/// 36 level
	
	on_equip					=	Equip_ArmorSet_ORW;
	on_unequip					=	UnEquip_ArmorSet_ORW;
};

instance ITAR_ORW_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz wojownika orków";
	visual						=	"ItAr_ORW_M.3ds";
	visual_change				=	"Armor_ORW_M.asc";
	SetItArAttributes (self, 135,135,135,95,55,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_ORW;
	on_unequip					=	UnEquip_ArmorSet_ORW;
};

instance ITAR_ORW_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz wojownika orków";
	visual						=	"ItAr_ORW_H.3ds";
	visual_change				=	"Armor_ORW_H.asc";
	SetItArAttributes (self, 150,150,150,110,70,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_ORW;
	on_unequip					=	UnEquip_ArmorSet_ORW;
};

///******************************************************************************************
/// Novice armors: NOV
///******************************************************************************************

var int Equipped_ArmorSet_NOV;
func void Equip_ArmorSet_NOV()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_NOV += 1;
		if (Equipped_ArmorSet_NOV > 1)	{ ATS[ATS_DmgTakenDecr] += 5; };
	};
};
func void UnEquip_ArmorSet_NOV()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_NOV > 1)	{ ATS[ATS_DmgTakenDecr] -= 5; };
		Equipped_ArmorSet_NOV -= 1;
	};
};

///******************************************************************************************
instance ITAR_NOV_L (ItemPR_Armor)
{
	name						=	"Szata nowicjusza";
	visual						=	"ItAr_NOV_L.3ds";
	visual_change				=	"Armor_NOV_L.asc";
	SetItArAttributes (self, 25,25,25,0,10,   0);	/// 6 level
	
	on_equip					=	Equip_ArmorSet_NOV;
	on_unequip					=	UnEquip_ArmorSet_NOV;
};

instance ITAR_NOV_H (ItemPR_Armor)
{
	name						=	"Pancerz nowicjusza";
	visual						=	"ItAr_NOV_H.3ds";
	visual_change				=	"Armor_NOV_H.asc";
	SetItArAttributes (self, 30,30,30,5,15,   0);	/// 8 level
	
	on_equip					=	Equip_ArmorSet_NOV;
	on_unequip					=	UnEquip_ArmorSet_NOV;
};

///******************************************************************************************
instance ITAR_NOV_A (ItemPR_Armor)
{
	name						=	"Szata nowicjusza wody";
	visual						=	"ItAr_NOV_A.3ds";
	visual_change				=	"Armor_NOV_A.asc";
	SetItArAttributes (self, 25,25,25,5,15,   0);	/// 7 level
	
	on_equip					=	Equip_ArmorSet_NOV;
	on_unequip					=	UnEquip_ArmorSet_NOV;
};

///******************************************************************************************
/// Mage armors: MAG & AMG
///******************************************************************************************

var int Equipped_ArmorSet_MAG;
func void Equip_ArmorSet_MAG()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_MAG += 1;
		if (Equipped_ArmorSet_MAG > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
	};
};
func void UnEquip_ArmorSet_MAG()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_MAG > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_MAG -= 1;
	};
};

///******************************************************************************************
instance ITAR_MAG_L (ItemPR_Armor)
{
	name						=	"Lekka szata maga";
	visual						=	"ItAr_MAG_L.3ds";
	visual_change				=	"Armor_MAG_L.asc";
	SetItArAttributes (self, 40,40,40,20,20,   0);	/// 12 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

instance ITAR_MAG_M (ItemPR_Armor)
{
	name						=	"Œrednia szata maga";
	visual						=	"ItAr_MAG_M.3ds";
	visual_change				=	"Armor_MAG_M.asc";
	SetItArAttributes (self, 60,60,60,30,30,   0);	/// 18 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

instance ITAR_MAG_H (ItemPR_Armor)
{
	name						=	"Ciê¿ka szata maga";
	visual						=	"ItAr_MAG_H.3ds";
	visual_change				=	"Armor_MAG_H.asc";
	SetItArAttributes (self, 80,80,80,40,40,   0);	/// 24 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

///******************************************************************************************
instance ITAR_AMG_L (ItemPR_Armor)
{
	name						=	"Lekka szata arcymaga";
	visual						=	"ItAr_AMG_L.3ds";
	visual_change				=	"Armor_AMG_L.asc";
	SetItArAttributes (self, 105,105,105,75,75,   0);	/// 36 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

instance ITAR_AMG_M (ItemPR_Armor)
{
	name						=	"Œrednia szata arcymaga";
	visual						=	"ItAr_AMG_M.3ds";
	visual_change				=	"Armor_AMG_M.asc";
	SetItArAttributes (self, 120,120,120,90,90,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

instance ITAR_AMG_H (ItemPR_Armor)
{
	name						=	"Ciê¿ka szata arcymaga";
	visual						=	"ItAr_AMG_H.3ds";
	visual_change				=	"Armor_AMG_H.asc";
	SetItArAttributes (self, 135,135,135,105,105,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

///******************************************************************************************
instance ITAR_MAG_A (ItemPR_Armor)
{
	name						=	"Szata maga wody";
	visual						=	"ItAr_MAG_A.3ds";
	visual_change				=	"Armor_MAG_A.asc";
	SetItArAttributes (self, 120,120,120,90,90,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

instance ITAR_MAG_B (ItemPR_Armor)
{
	name						=	"Szata mrocznego maga";
	visual						=	"ItAr_MAG_B.3ds";
	visual_change				=	"Armor_MAG_B.asc";
	SetItArAttributes (self, 120,120,120,90,90,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

///******************************************************************************************
/// Mage armors: MAG & AMG (BABE)
///******************************************************************************************
instance ITAR_Babe_Mage (ItemPR_Armor)
{
	name						=	"Szata maga";
	visual						=	"ItAr_MAG_M.3ds";
	visual_change				=	"Armor_Babe_Mage.asc";
	SetItArAttributes (self, 70,70,70,35,35,   0);	/// 21 level
	
	on_equip					=	Equip_ArmorSet_MAG;
	on_unequip					=	UnEquip_ArmorSet_MAG;
};

///******************************************************************************************
/// Paladin armors: PAL
///******************************************************************************************

var int Equipped_ArmorSet_PAL;
func void Equip_ArmorSet_PAL()
{
	if (Npc_IsPlayer(self))
	{
		Equipped_ArmorSet_PAL += 1;
		if (Equipped_ArmorSet_PAL > 1)	{ ATS[ATS_DmgTakenDecr] += 10; };
		Equip_HeavyArmor();
	};
};
func void UnEquip_ArmorSet_PAL()
{
	if (Npc_IsPlayer(self))
	{
		if (Equipped_ArmorSet_PAL > 1)	{ ATS[ATS_DmgTakenDecr] -= 10; };
		Equipped_ArmorSet_PAL -= 1;
		UnEquip_HeavyArmor();
	};
};

///******************************************************************************************
instance ITAR_PAL_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz paladyna";
	visual						=	"ItAr_PAL_L.3ds";
	visual_change				=	"Armor_PAL_L.asc";
	SetItArAttributes (self, 120,120,120,50,70,   0);	/// 36 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

instance ITAR_PAL_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz paladyna";
	visual						=	"ItAr_PAL_M.3ds";
	visual_change				=	"Armor_PAL_M.asc";
	SetItArAttributes (self, 135,135,135,65,85,   0);	/// 42 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

instance ITAR_PAL_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz paladyna";
	visual						=	"ItAr_PAL_H.3ds";
	visual_change				=	"Armor_PAL_H.asc";
	SetItArAttributes (self, 150,150,150,80,100,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

///******************************************************************************************
instance ITAR_PAL_D (ItemPR_HeavyArmor)
{
	name						=	"Pancerz mrocznego paladyna";
	visual						=	"ItAr_PAL_D.3ds";
	visual_change				=	"Armor_PAL_D.asc";
	SetItArAttributes (self, 150,150,150,80,100,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

instance ITAR_PAL_T (ItemPR_HeavyArmor)
{
	name						=	"Pancerz stra¿nika czasu";
	visual						=	"ItAr_Pal_T.3ds";
	visual_change				=	"Armor_PAL_T.asc";
	SetItArAttributes (self, 150,150,150,80,100,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

instance ITAR_PAL_U (ItemPR_HeavyArmor)
{
	name						=	"Pancerz rycerzy podziemia";
	visual						=	"ItAr_Pal_U.3ds";
	visual_change				=	"Armor_PAL_U.asc";
	SetItArAttributes (self, 150,150,150,80,100,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

instance ITAR_PAL_G (ItemPR_HeavyArmor)
{
	name						=	"Pancerz paladyna-genera³a";
	visual						=	"ItAr_Pal_G.3ds";
	visual_change				=	"Armor_PAL_G.asc";
	SetItArAttributes (self, 150,150,150,80,100,   0);	/// 48 level
	
	on_equip					=	Equip_ArmorSet_PAL;
	on_unequip					=	UnEquip_ArmorSet_PAL;
};

///******************************************************************************************
/// Demon hunter armors
///******************************************************************************************
instance ITAR_ORM_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz ³owcy demonów";
	visual						=	"ItAr_ORM_L.3ds";
	visual_change				=	"Armor_ORM_L.asc";
	SetItArAttributes (self, 120,120,120,80,40,   0);	/// 36 level
};

instance ITAR_ORM_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz ³owcy demonów";
	visual						=	"ItAr_ORM_M.3ds";
	visual_change				=	"Armor_ORM_M.asc";
	SetItArAttributes (self, 135,135,135,95,55,   0);	/// 42 level
};

instance ITAR_ORM_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz ³owcy demonów";
	visual						=	"ItAr_ORM_H.3ds";
	visual_change				=	"Armor_ORM_H.asc";
	SetItArAttributes (self, 150,150,150,110,70,   0);	/// 48 level
};

///******************************************************************************************
/// Assassin armors: AKO & PRI
///******************************************************************************************
instance ITAR_AKO_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz zabójcy";
	visual						=	"ITAR_AKO_L.3ds";
	visual_change				=	"Armor_AKO_L.asc";
	SetItArAttributes (self, 45,45,45,5,5,   0);	/// 12 level
	
	change_atr[0]				=	COND_AIVAR+AIV_Stamina_MAX;
	change_value[0]				=	2*SP_PER_LP;
};

instance ITAR_AKO_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz zabójcy";
	visual						=	"ITAR_AKO_M.3ds";
	visual_change				=	"Armor_AKO_M.asc";
	SetItArAttributes (self, 65,65,65,15,15,   0);	/// 18 level
	
	change_atr[0]				=	COND_AIVAR+AIV_Stamina_MAX;
	change_value[0]				=	2*SP_PER_LP;
};

instance ITAR_AKO_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz zabójcy";
	visual						=	"ITAR_AKO_M.3ds";
	visual_change				=	"Armor_AKO_M.asc";
	SetItArAttributes (self, 85,85,85,25,25,   0);	/// 24 level
	
	change_atr[0]				=	COND_AIVAR+AIV_Stamina_MAX;
	change_value[0]				=	2*SP_PER_LP;
};

///******************************************************************************************
instance ITAR_PRI_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz dem. zabójcy";
	visual						=	"ITAR_PRI_L.3ds";
	visual_change				=	"Armor_PRI_L.asc";
	SetItArAttributes (self, 110,110,110,50,50,   0);	/// 36 level
	
	change_atr[0]				=	COND_AIVAR+AIV_Stamina_MAX;
	change_value[0]				=	4*SP_PER_LP;
};

instance ITAR_PRI_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz dem. zabójcy";
	visual						=	"ITAR_PRI_M.3ds";
	visual_change				=	"Armor_PRI_M.asc";
	SetItArAttributes (self, 125,125,125,65,65,   0);	/// 42 level
	
	change_atr[0]				=	COND_AIVAR+AIV_Stamina_MAX;
	change_value[0]				=	4*SP_PER_LP;
};

instance ITAR_PRI_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz dem. zabójcy";
	visual						=	"ITAR_PRI_M.3ds";
	visual_change				=	"Armor_PRI_M.asc";
	SetItArAttributes (self, 140,140,140,80,80,   0);	/// 48 level
	
	change_atr[0]				=	COND_AIVAR+AIV_Stamina_MAX;
	change_value[0]				=	4*SP_PER_LP;
};

///******************************************************************************************
/// Bandit armors: BDT & RVN
///******************************************************************************************
instance ITAR_BDT_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz bandyty";
	visual						=	"ITAR_BDT_L.3ds";
	visual_change				=	"Armor_BDT_L.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 20,20,20,0,0,   0);	/// 4 level
};

instance ITAR_BDT_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz bandyty";
	visual						=	"ITAR_BDT_H.3ds";
	visual_change				=	"Armor_BDT_H.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 35,35,35,5,5,   0);	/// 8 level
};

///******************************************************************************************
instance ITAR_RVN_L (ItemPR_Armor)
{
	name						=	"Lekki pancerz ludzi Kruka";
	visual						=	"ItAr_RVN_L.3ds";
	visual_change				=	"Armor_RVN_L.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
};

instance ITAR_RVN_M (ItemPR_Armor)
{
	name						=	"Œredni pancerz ludzi Kruka";
	visual						=	"ItAr_RVN_M.3ds";
	visual_change				=	"Armor_RVN_M.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
};

instance ITAR_RVN_H (ItemPR_Armor)
{
	name						=	"Ciê¿ki pancerz ludzi Kruka";
	visual						=	"ItAr_RVN_H.3ds";
	visual_change				=	"Armor_RVN_H.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 90,90,90,30,30,   0);	/// 24 level
};

///******************************************************************************************
instance ITAR_Raven (ItemPR_HeavyArmor)
{
	name						=	"Pancerz Kruka";
	visual						=	"ItAr_Raven.3ds";
	visual_change				=	"Armor_Raven.asc";
	TEXT[0]						=	PRINT_BanditArmor;
	SetItArAttributes (self, 150,150,150,90,90,   0);	/// 48 level
};

///******************************************************************************************
/// Pirate armors: PIR
///******************************************************************************************
instance ITAR_PIR_P (ItemPR_Armor)
{
	name						=	"Spodnie pirata";
	visual						=	"ItAr_PIR_P.3ds";
	visual_change				=	"Armor_Pir_P.asc";
	SetItArAttributes (self, 5,5,5,0,0,   0);	/// 1 level
};

instance ITAR_PIR_L (ItemPR_Armor)
{
	name						=	"Ubranie pirata";
	visual						=	"ItAr_PIR_L.3ds";
	visual_change				=	"Armor_Pir_L.asc";
	SetItArAttributes (self, 30,30,30,0,0,   1);	/// 6 level
};

instance ITAR_PIR_M (ItemPR_Armor)
{
	name						=	"Zbroja pirata";
	visual						=	"ItAr_PIR_M.3ds";
	visual_change				=	"Armor_PIR_M.asc";
	SetItArAttributes (self, 50,50,50,10,10,   0);	/// 12 level
};

instance ITAR_PIR_H (ItemPR_Armor)
{
	name						=	"Ubranie kapitana";
	visual						=	"ItAr_PIR_H.3ds";
	visual_change				=	"Armor_PIR_H.asc";
	SetItArAttributes (self, 70,70,70,20,20,   0);	/// 18 level
};

///******************************************************************************************
/// Dementor armors: DMT
///******************************************************************************************
instance ITAR_Dementor (ItemPR_Armor)
{
	name						=	"Mroczny p³aszcz";
	visual						=	"ItAr_Dementor.3ds";
	visual_change				=	"Armor_Dementor.asc";
	SetItArAttributes (self, 90,90,90,60,60,   0);	/// 30 level
};

instance ITAR_Demaster (ItemPR_Armor)
{
	name						=	"Mroczny p³aszcz mistrza";
	visual						=	"ItAr_Dementor.3ds";
	visual_change				=	"Armor_Demaster.asc";
	SetItArAttributes (self, 140,140,140,110,110,   1);	/// 50 level
};

///******************************************************************************************
/// Desert armors
///******************************************************************************************
instance ITAR_Nomad (ItemPR_Armor)
{
	name						=	"Pancerz koczownika";
	visual						=	"ItAr_Nomad.3ds";
	visual_change				=	"Armor_Nomad.asc";
	SetItArAttributes (self, 35,35,35,10,0,   0);	/// 8 level
};

///******************************************************************************************
/// Forest armors
///******************************************************************************************
instance ITAR_WoodRunner (ItemPR_Armor)
{
	name						=	"Pancerz goñca leœnego";
	visual						=	"ItAr_WoodRunner.3ds";
	visual_change				=	"Armor_WoodRunner.asc";
	SetItArAttributes (self, 15,15,20,0,5,   0);	/// 4 level
};

instance ITAR_Druid (ItemPR_Armor)
{
	name						=	"Szata druida";
	visual						=	"ItAr_Druid.3ds";
	visual_change				=	"Armor_Druid.asc";
	SetItArAttributes (self, 120,120,120,90,90,   0);	/// 42 level
};

///******************************************************************************************
/// Nordmar armors
///******************************************************************************************
instance ITAR_Nordmar_N (ItemPR_HeavyArmor)
{
	name						=	"Strój nordmarczyka";
	visual						=	"ItAr_Nordmar_N.3ds";
	visual_change				=	"Armor_Nordmar_N.asc";
	SetItArAttributes (self, 105,105,105,55,35,   0);	/// 30 level
};

instance ITAR_Nordmar_L (ItemPR_HeavyArmor)
{
	name						=	"Lekki pancerz nordmarczyka";
	visual						=	"ItAr_Nordmar_L.3ds";
	visual_change				=	"Armor_Nordmar_L.asc";
	SetItArAttributes (self, 120,120,120,70,50,   0);	/// 36 level
};

instance ITAR_Nordmar_M (ItemPR_HeavyArmor)
{
	name						=	"Œredni pancerz nordmarczyka";
	visual						=	"ItAr_Nordmar_M.3ds";
	visual_change				=	"Armor_Nordmar_M.asc";
	SetItArAttributes (self, 135,135,135,85,65,   0);	/// 42 level
};

instance ITAR_Nordmar_H (ItemPR_HeavyArmor)
{
	name						=	"Ciê¿ki pancerz nordmarczyka";
	visual						=	"ItAr_Nordmar_H.3ds";
	visual_change				=	"Armor_Nordmar_H.asc";
	SetItArAttributes (self, 150,150,150,100,80,   0);	/// 48 level
};

///******************************************************************************************
/// Ranger armors
///******************************************************************************************
instance ITAR_Ranger_L (ItemPR_Armor)
{
	name						=	"Strój Wodnego Krêgu";
	visual						=	"ItAr_Ranger.3ds";
	visual_change				=	"Armor_Ranger.asc";
	SetItArAttributes (self, 45,45,45,10,10,   0);	/// 11 level
};

instance ITAR_Ranger_H (ItemPR_Armor)
{
	name						=	"Zbroja Wodnego Krêgu";
	visual						=	"ItAr_Ranger.3ds";
	visual_change				=	"Armor_Ranger.asc";
	SetItArAttributes (self, 60,60,60,15,15,   1);	/// 15 level
};

///******************************************************************************************
/// Special armors
///******************************************************************************************
instance ITAR_Jarkhendar (ItemPR_HeavyArmor)
{
	name						=	"Zbroja Jarkhendaru";
	visual						=	"ItAr_Jarkhendar.3ds";
	visual_change				=	"Armor_Jarkhendar.asc";
	SetItArAttributes (self, 0,0,0,0,0,   0);	/// 48 level
};

instance ITAR_Skeleton (ItemPR_HeavyArmor)
{
	name						=	"Zbroja umar³ych";
	visual						=	"ItAr_Skeleton.3ds";
	visual_change				=	"Armor_Skeleton.asc";
	SetItArAttributes (self, 0,0,0,0,0,   0);	/// 48 level
};

instance ITAR_SteamKnight (ItemPR_HeavyArmor)
{
	name						=	"Zbroja parowa";
	visual						=	"ItAr_SteamKnight.3ds";
	visual_change				=	"Armor_SteamKnight.asc";
	SetItArAttributes (self, 0,0,0,0,0,   0);	/// 48 level
};
