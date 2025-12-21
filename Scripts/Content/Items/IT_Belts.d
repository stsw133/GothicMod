///******************************************************************************************
prototype ItemPR_Belt (C_Item)
{
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_BELT;
	material					=	MAT_METAL;
	
	on_equip					=	Npc_AttributesRefresh;
	on_unequip					=	Npc_AttributesRefresh;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]						=	NAME_Value;
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
	INV_ROTX					=	INVCAM_ENTF_MISC2_STANDARD;
};

///******************************************************************************************
/// Leather
///******************************************************************************************
func void SetItBeAttributes_Leather (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_06.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_equip				=	Equip_ArmorSet_Leather;
	itm.on_unequip				=	UnEquip_ArmorSet_Leather;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	"W skórzanym pancerzu +10% redukcji obra¿eñ";
	itm.TEXT[1]					=	NAME_Prot_Melee;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Leather_01 (ItemPR_Belt)
{
	name						=	"Skórzany pas I";
	SetItBeAttributes_Leather (self, 4);
};
instance ItBe_Addon_Leather_02 (ItemPR_Belt)
{
	name						=	"Skórzany pas II";
	SetItBeAttributes_Leather (self, 8);
};
instance ItBe_Addon_Leather_03 (ItemPR_Belt)
{
	name						=	"Skórzany pas III";
	SetItBeAttributes_Leather (self, 12);
};

///******************************************************************************************
/// Plates
///******************************************************************************************
func void SetItBeAttributes_Plates (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_08.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_equip				=	Equip_ArmorSet_Plates;
	itm.on_unequip				=	UnEquip_ArmorSet_Plates;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	"W zbroi p³ytowej +10% redukcji obra¿eñ";
	itm.TEXT[1]					=	NAME_Prot_Melee;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Plates_01 (ItemPR_Belt)
{
	name						=	"Pas p³ytowy I";
	SetItBeAttributes_Plates (self, 4);
};
instance ItBe_Addon_Plates_02 (ItemPR_Belt)
{
	name						=	"Pas p³ytowy II";
	SetItBeAttributes_Plates (self, 8);
};
instance ItBe_Addon_Plates_03 (ItemPR_Belt)
{
	name						=	"Pas p³ytowy III";
	SetItBeAttributes_Plates (self, 12);
};

///******************************************************************************************
/// MIL
///******************************************************************************************
func void SetItBeAttributes_MIL (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_03.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_equip				=	Equip_ArmorSet_MIL;
	itm.on_unequip				=	UnEquip_ArmorSet_MIL;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	"W pancerzu stra¿y +10% redukcji obra¿eñ";
	itm.TEXT[1]					=	NAME_Prot_Melee;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_MIL_01 (ItemPR_Belt)
{
	name						=	"Pas stra¿y I";
	SetItBeAttributes_MIL (self, 4);
};
instance ItBe_Addon_MIL_02 (ItemPR_Belt)
{
	name						=	"Pas stra¿y II";
	SetItBeAttributes_MIL (self, 8);
};
instance ItBe_Addon_MIL_03 (ItemPR_Belt)
{
	name						=	"Pas stra¿y III";
	SetItBeAttributes_MIL (self, 12);
};

///******************************************************************************************
/// SLD
///******************************************************************************************
func void SetItBeAttributes_SLD (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_05.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_equip				=	Equip_ArmorSet_SLD;
	itm.on_unequip				=	UnEquip_ArmorSet_SLD;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	"W pancerzu najemnika +10% redukcji obra¿eñ";
	itm.TEXT[1]					=	NAME_Prot_Melee;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_SLD_01 (ItemPR_Belt)
{
	name						=	"Pas najemnika I";
	SetItBeAttributes_SLD (self, 4);
};
instance ItBe_Addon_SLD_02 (ItemPR_Belt)
{
	name						=	"Pas najemnika II";
	SetItBeAttributes_SLD (self, 8);
};
instance ItBe_Addon_SLD_03 (ItemPR_Belt)
{
	name						=	"Pas najemnika III";
	SetItBeAttributes_SLD (self, 12);
};

///******************************************************************************************
/// NOV
///******************************************************************************************
func void SetItBeAttributes_NOV (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_02.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_equip				=	Equip_ArmorSet_NOV;
	itm.on_unequip				=	UnEquip_ArmorSet_NOV;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	"W szacie nowicjusza +5% redukcji obra¿eñ";
	itm.TEXT[1]					=	NAME_Prot_Melee;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_NOV_01 (ItemPR_Belt)
{
	name						=	"Szarfa nowicjusza I";
	SetItBeAttributes_NOV (self, 4);
};
instance ItBe_Addon_NOV_02 (ItemPR_Belt)
{
	name						=	"Szarfa nowicjusza II";
	SetItBeAttributes_NOV (self, 8);
};
instance ItBe_Addon_NOV_03 (ItemPR_Belt)
{
	name						=	"Szarfa nowicjusza III";
	SetItBeAttributes_NOV (self, 12);
};

///******************************************************************************************
/// MAG
///******************************************************************************************
func void SetItBeAttributes_MAG (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_02.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_equip				=	Equip_ArmorSet_MAG;
	itm.on_unequip				=	UnEquip_ArmorSet_MAG;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	"W szacie maga +10% redukcji obra¿eñ";
	itm.TEXT[1]					=	NAME_Prot_Melee;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_MAG_01 (ItemPR_Belt)
{
	name						=	"Szarfa maga I";
	SetItBeAttributes_MAG (self, 4);
};
instance ItBe_Addon_MAG_02 (ItemPR_Belt)
{
	name						=	"Szarfa maga II";
	SetItBeAttributes_MAG (self, 8);
};
instance ItBe_Addon_MAG_03 (ItemPR_Belt)
{
	name						=	"Szarfa maga III";
	SetItBeAttributes_MAG (self, 12);
};

///******************************************************************************************
/// ProtBlunt
///******************************************************************************************
func void SetItBeAttributes_ProtBlunt (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap*8/5;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Blunt;
	itm.COUNT[1]				=	itm.protection[PROT_BLUNT];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Prot_Blunt_01 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed obuchem I";
	SetItBeAttributes_ProtBlunt (self, 4);
};
instance ItBe_Addon_Prot_Blunt_02 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed obuchem II";
	SetItBeAttributes_ProtBlunt (self, 8);
};
instance ItBe_Addon_Prot_Blunt_03 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed obuchem III";
	SetItBeAttributes_ProtBlunt (self, 12);
};

///******************************************************************************************
/// ProtEdge
///******************************************************************************************
func void SetItBeAttributes_ProtEdge (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Prot_Edge_01 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed ostrzami I";
	SetItBeAttributes_ProtEdge (self, 4);
};
instance ItBe_Addon_Prot_Edge_02 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed ostrzami II";
	SetItBeAttributes_ProtEdge (self, 8);
};
instance ItBe_Addon_Prot_Edge_03 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed ostrzami III";
	SetItBeAttributes_ProtEdge (self, 12);
};

///******************************************************************************************
/// ProtPoint
///******************************************************************************************
func void SetItBeAttributes_ProtPoint (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_POINT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Point;
	itm.COUNT[1]				=	itm.protection[PROT_POINT];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Prot_Point_01 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed pociskami I";
	SetItBeAttributes_ProtPoint (self, 4);
};
instance ItBe_Addon_Prot_Point_02 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed pociskami II";
	SetItBeAttributes_ProtPoint (self, 8);
};
instance ItBe_Addon_Prot_Point_03 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed pociskami III";
	SetItBeAttributes_ProtPoint (self, 12);
};

///******************************************************************************************
/// ProtFire
///******************************************************************************************
func void SetItBeAttributes_ProtFire (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Fire;
	itm.COUNT[1]				=	itm.protection[PROT_FIRE];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Prot_Fire_01 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed ogniem I";
	SetItBeAttributes_ProtFire (self, 4);
};
instance ItBe_Addon_Prot_Fire_02 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed ogniem II";
	SetItBeAttributes_ProtFire (self, 8);
};
instance ItBe_Addon_Prot_Fire_03 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed ogniem III";
	SetItBeAttributes_ProtFire (self, 12);
};

///******************************************************************************************
/// ProtMagic
///******************************************************************************************
func void SetItBeAttributes_ProtMagic (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Magic;
	itm.COUNT[1]				=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Prot_Magic_01 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed magi¹";
	SetItBeAttributes_ProtMagic (self, 4);
};
instance ItBe_Addon_Prot_Magic_02 (ItemPR_Belt)
{
	name						=	"Pas ochrony przed magi¹";
	SetItBeAttributes_ProtMagic (self, 8);
};
instance ItBe_Addon_Prot_Magic_03 (ItemPR_Belt)
{
	name						=	"Ulepsz. pas ochrony przed magi¹";
	SetItBeAttributes_ProtMagic (self, 12);
};

///******************************************************************************************
/// Hitpoints
///******************************************************************************************
func void SetItBeAttributes_Hp (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.change_atr[0]			=	ATR_HITPOINTS_MAX;
	itm.change_value[0]			=	kap*HP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_HpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Hp_01 (ItemPR_Belt)
{
	name						=	"Pas ¿ycia I";
	SetItBeAttributes_Hp (self, 4);
};
instance ItBe_Addon_Hp_02 (ItemPR_Belt)
{
	name						=	"Pas ¿ycia II";
	SetItBeAttributes_Hp (self, 8);
};
instance ItBe_Addon_Hp_03 (ItemPR_Belt)
{
	name						=	"Pas ¿ycia III";
	SetItBeAttributes_Hp (self, 12);
};

///******************************************************************************************
/// Mana
///******************************************************************************************
func void SetItBeAttributes_Mp (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.change_atr[0]			=	ATR_MANA_MAX;
	itm.change_value[0]			=	kap*MP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Mp_01 (ItemPR_Belt)
{
	name						=	"Pas many I";
	SetItBeAttributes_Mp (self, 4);
};
instance ItBe_Addon_Mp_02 (ItemPR_Belt)
{
	name						=	"Pas many II";
	SetItBeAttributes_Mp (self, 8);
};
instance ItBe_Addon_Mp_03 (ItemPR_Belt)
{
	name						=	"Pas many III";
	SetItBeAttributes_Mp (self, 12);
};

///******************************************************************************************
/// Strength
///******************************************************************************************
func void SetItBeAttributes_Str (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.change_atr[0]			=	ATR_STRENGTH;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Str;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Str_01 (ItemPR_Belt)
{
	name						=	"Pas si³y I";
	SetItBeAttributes_Str (self, 4);
};
instance ItBe_Addon_Str_02 (ItemPR_Belt)
{
	name						=	"Pas si³y II";
	SetItBeAttributes_Str (self, 8);
};
instance ItBe_Addon_Str_03 (ItemPR_Belt)
{
	name						=	"Pas si³y III";
	SetItBeAttributes_Str (self, 12);
};

///******************************************************************************************
/// Dexterity
///******************************************************************************************
func void SetItBeAttributes_Dex (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.change_atr[0]			=	ATR_DEXTERITY;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Dex;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Dex_01 (ItemPR_Belt)
{
	name						=	"Pas zrêcznoœci I";
	SetItBeAttributes_Dex (self, 4);
};
instance ItBe_Addon_Dex_02 (ItemPR_Belt)
{
	name						=	"Pas zrêcznoœci II";
	SetItBeAttributes_Dex (self, 8);
};
instance ItBe_Addon_Dex_03 (ItemPR_Belt)
{
	name						=	"Pas zrêcznoœci III";
	SetItBeAttributes_Dex (self, 12);
};

///******************************************************************************************
/// Power
///******************************************************************************************
func void SetItBeAttributes_Pow (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.change_atr[0]			=	ATR_POWER;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Pow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItBe_Addon_Pow_01 (ItemPR_Belt)
{
	name						=	"Pas mocy I";
	SetItBeAttributes_Pow (self, 4);
};
instance ItBe_Addon_Pow_02 (ItemPR_Belt)
{
	name						=	"Pas mocy II";
	SetItBeAttributes_Pow (self, 8);
};
instance ItBe_Addon_Pow_03 (ItemPR_Belt)
{
	name						=	"Pas mocy III";
	SetItBeAttributes_Pow (self, 12);
};
