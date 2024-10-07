///******************************************************************************************
prototype ItemPR_Belt (C_Item)
{
	name						=	"Pas";
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

///******************************************************************************************
instance ItBe_Addon_Leather_01 (ItemPR_Belt)
{
	description					=	"Skórzany pas";
	SetItBeAttributes_Leather (self, 3);
};

instance ItBe_Addon_Leather_02 (ItemPR_Belt)
{
	description					=	"Skórzany pas";
	SetItBeAttributes_Leather (self, 5);
};

instance ItBe_Addon_Leather_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. skórzany pas";
	SetItBeAttributes_Leather (self, 10);
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

///******************************************************************************************
instance ItBe_Addon_Plates_01 (ItemPR_Belt)
{
	description					=	"Pas p³ytowy";
	SetItBeAttributes_Plates (self, 3);
};

instance ItBe_Addon_Plates_02 (ItemPR_Belt)
{
	description					=	"Pas p³ytowy";
	SetItBeAttributes_Plates (self, 5);
};

instance ItBe_Addon_Plates_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas p³ytowy";
	SetItBeAttributes_Plates (self, 10);
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

///******************************************************************************************
instance ItBe_Addon_MIL_01 (ItemPR_Belt)
{
	description					=	"Pas stra¿y";
	SetItBeAttributes_MIL (self, 3);
};

instance ItBe_Addon_MIL_02 (ItemPR_Belt)
{
	description					=	"Pas stra¿y";
	SetItBeAttributes_MIL (self, 5);
};

instance ItBe_Addon_MIL_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas stra¿y";
	SetItBeAttributes_MIL (self, 10);
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

///******************************************************************************************
instance ItBe_Addon_SLD_01 (ItemPR_Belt)
{
	description					=	"Pas najemnika";
	SetItBeAttributes_SLD (self, 3);
};

instance ItBe_Addon_SLD_02 (ItemPR_Belt)
{
	description					=	"Pas najemnika";
	SetItBeAttributes_SLD (self, 5);
};

instance ItBe_Addon_SLD_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas najemnika";
	SetItBeAttributes_SLD (self, 10);
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

///******************************************************************************************
instance ItBe_Addon_NOV_01 (ItemPR_Belt)
{
	description					=	"Szarfa nowicjusza";
	SetItBeAttributes_NOV (self, 3);
};

instance ItBe_Addon_NOV_02 (ItemPR_Belt)
{
	description					=	"Szarfa nowicjusza";
	SetItBeAttributes_NOV (self, 5);
};

instance ItBe_Addon_NOV_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. szarfa nowicjusza";
	SetItBeAttributes_NOV (self, 10);
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

///******************************************************************************************
instance ItBe_Addon_MAG_01 (ItemPR_Belt)
{
	description					=	"Szarfa maga";
	SetItBeAttributes_MAG (self, 3);
};

instance ItBe_Addon_MAG_02 (ItemPR_Belt)
{
	description					=	"Szarfa maga";
	SetItBeAttributes_MAG (self, 5);
};

instance ItBe_Addon_MAG_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. szarfa maga";
	SetItBeAttributes_MAG (self, 10);
};

///******************************************************************************************
/// ProtBlunt
///******************************************************************************************
func void SetItBeAttributes_ProtBlunt (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_07.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap*8/5;
	
	itm.TEXT[1]					=	NAME_Prot_Blunt;
	itm.COUNT[1]				=	itm.protection[PROT_BLUNT];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Prot_Blunt_01 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed obuchem";
	SetItBeAttributes_ProtBlunt (self, 3);
};

instance ItBe_Addon_Prot_Blunt_02 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed obuchem";
	SetItBeAttributes_ProtBlunt (self, 5);
};

instance ItBe_Addon_Prot_Blunt_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas ochrony przed obuchem";
	SetItBeAttributes_ProtBlunt (self, 10);
};

///******************************************************************************************
/// ProtEdge
///******************************************************************************************
func void SetItBeAttributes_ProtEdge (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_EDGE]	=	kap*8/5;
	
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Prot_Edge_01 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed ostrzami";
	SetItBeAttributes_ProtEdge (self, 3);
};

instance ItBe_Addon_Prot_Edge_02 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed ostrzami";
	SetItBeAttributes_ProtEdge (self, 5);
};

instance ItBe_Addon_Prot_Edge_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas ochrony przed ostrzami";
	SetItBeAttributes_ProtEdge (self, 10);
};

///******************************************************************************************
/// ProtPoint
///******************************************************************************************
func void SetItBeAttributes_ProtPoint (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_POINT]	=	kap*8/5;
	
	itm.TEXT[1]					=	NAME_Prot_Point;
	itm.COUNT[1]				=	itm.protection[PROT_POINT];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Prot_Point_01 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed pociskami";
	SetItBeAttributes_ProtPoint (self, 3);
};

instance ItBe_Addon_Prot_Point_02 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed pociskami";
	SetItBeAttributes_ProtPoint (self, 5);
};

instance ItBe_Addon_Prot_Point_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas ochrony przed pociskami";
	SetItBeAttributes_ProtPoint (self, 10);
};

///******************************************************************************************
/// ProtFire
///******************************************************************************************
func void SetItBeAttributes_ProtFire (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_FIRE]	=	kap*8/5;
	
	itm.TEXT[1]					=	NAME_Prot_Fire;
	itm.COUNT[1]				=	itm.protection[PROT_FIRE];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Prot_Fire_01 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed ogniem";
	SetItBeAttributes_ProtFire (self, 3);
};

instance ItBe_Addon_Prot_Fire_02 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed ogniem";
	SetItBeAttributes_ProtFire (self, 5);
};

instance ItBe_Addon_Prot_Fire_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas ochrony przed ogniem";
	SetItBeAttributes_ProtFire (self, 10);
};

///******************************************************************************************
/// ProtMagic
///******************************************************************************************
func void SetItBeAttributes_ProtMagic (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItMi_Belt_04.3ds";
	
	itm.protection[PROT_MAGIC]	=	kap*8/5;
	
	itm.TEXT[1]					=	NAME_Prot_Magic;
	itm.COUNT[1]				=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Prot_Magic_01 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed magi¹";
	SetItBeAttributes_ProtMagic (self, 3);
};

instance ItBe_Addon_Prot_Magic_02 (ItemPR_Belt)
{
	description					=	"Pas ochrony przed magi¹";
	SetItBeAttributes_ProtMagic (self, 5);
};

instance ItBe_Addon_Prot_Magic_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas ochrony przed magi¹";
	SetItBeAttributes_ProtMagic (self, 10);
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
	
	itm.TEXT[1]					=	NAME_Bonus_HpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Hp_01 (ItemPR_Belt)
{
	description					=	"Pas ¿ycia";
	SetItBeAttributes_Hp (self, 3);
};

instance ItBe_Addon_Hp_02 (ItemPR_Belt)
{
	description					=	"Pas ¿ycia";
	SetItBeAttributes_Hp (self, 5);
};

instance ItBe_Addon_Hp_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas ¿ycia";
	SetItBeAttributes_Hp (self, 10);
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
	
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Mp_01 (ItemPR_Belt)
{
	description					=	"Pas many";
	SetItBeAttributes_Mp (self, 3);
};

instance ItBe_Addon_Mp_02 (ItemPR_Belt)
{
	description					=	"Pas many";
	SetItBeAttributes_Mp (self, 5);
};

instance ItBe_Addon_Mp_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas many";
	SetItBeAttributes_Mp (self, 10);
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
	
	itm.TEXT[1]					=	NAME_Bonus_Str;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Str_01 (ItemPR_Belt)
{
	description					=	"Pas si³y";
	SetItBeAttributes_Str (self, 3);
};

instance ItBe_Addon_Str_02 (ItemPR_Belt)
{
	description					=	"Pas si³y";
	SetItBeAttributes_Str (self, 5);
};

instance ItBe_Addon_Str_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas si³y";
	SetItBeAttributes_Str (self, 10);
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
	
	itm.TEXT[1]					=	NAME_Bonus_Dex;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Dex_01 (ItemPR_Belt)
{
	description					=	"Pas zrêcznoœci";
	SetItBeAttributes_Dex (self, 3);
};

instance ItBe_Addon_Dex_02 (ItemPR_Belt)
{
	description					=	"Pas zrêcznoœci";
	SetItBeAttributes_Dex (self, 5);
};

instance ItBe_Addon_Dex_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas zrêcznoœci";
	SetItBeAttributes_Dex (self, 10);
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
	
	itm.TEXT[1]					=	NAME_Bonus_Pow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
instance ItBe_Addon_Pow_01 (ItemPR_Belt)
{
	description					=	"Pas mocy";
	SetItBeAttributes_Pow (self, 3);
};

instance ItBe_Addon_Pow_02 (ItemPR_Belt)
{
	description					=	"Pas mocy";
	SetItBeAttributes_Pow (self, 5);
};

instance ItBe_Addon_Pow_03 (ItemPR_Belt)
{
	description					=	"Ulepsz. pas mocy";
	SetItBeAttributes_Pow (self, 10);
};
