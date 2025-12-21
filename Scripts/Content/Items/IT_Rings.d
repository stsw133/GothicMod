///******************************************************************************************
prototype ItemPR_Ring (C_Item)
{
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_RING;
	material					=	MAT_METAL;
	
	on_equip					=	Npc_AttributesRefresh;
	on_unequip					=	Npc_AttributesRefresh;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]						=	NAME_Value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC2_STANDARD;
	INV_ROTX					=	INVCAM_X_RING_STANDARD;
	INV_ROTZ					=	INVCAM_Z_RING_STANDARD;
};

///******************************************************************************************
/// Blunt protection
///******************************************************************************************
func void SetItRiAttributes_ProtBlunt (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Prot_Blunt_01.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Blunt;
	itm.COUNT[1]				=	itm.protection[PROT_BLUNT];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Prot_Blunt_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed obuchem I";
	SetItRiAttributes_ProtBlunt (self, 4);
};
instance ItRi_Prot_Blunt_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed obuchem II";
	SetItRiAttributes_ProtBlunt (self, 8);
};
instance ItRi_Prot_Blunt_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed obuchem III";
	SetItRiAttributes_ProtBlunt (self, 12);
};

///******************************************************************************************
/// Edge protection
///******************************************************************************************
func void SetItRiAttributes_ProtEdge (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Prot_Edge_01.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Prot_Edge_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed ostrzami I";
	SetItRiAttributes_ProtEdge (self, 4);
};
instance ItRi_Prot_Edge_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed ostrzami II";
	SetItRiAttributes_ProtEdge (self, 8);
};
instance ItRi_Prot_Edge_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed ostrzami III";
	SetItRiAttributes_ProtEdge (self, 12);
};

///******************************************************************************************
/// Point protection
///******************************************************************************************
func void SetItRiAttributes_ProtPoint (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Prot_Point_01.3ds";
	
	itm.protection[PROT_POINT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Point;
	itm.COUNT[1]				=	itm.protection[PROT_POINT];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Prot_Point_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed pociskami I";
	SetItRiAttributes_ProtPoint (self, 4);
};
instance ItRi_Prot_Point_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed pociskami II";
	SetItRiAttributes_ProtPoint (self, 8);
};
instance ItRi_Prot_Point_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed pociskami III";
	SetItRiAttributes_ProtPoint (self, 12);
};

///******************************************************************************************
/// Fire protection
///******************************************************************************************
func void SetItRiAttributes_ProtFire (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Prot_Fire_01.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Fire;
	itm.COUNT[1]				=	itm.protection[PROT_FIRE];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Prot_Fire_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed ogniem I";
	SetItRiAttributes_ProtFire (self, 4);
};
instance ItRi_Prot_Fire_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed ogniem II";
	SetItRiAttributes_ProtFire (self, 8);
};
instance ItRi_Prot_Fire_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed ogniem III";
	SetItRiAttributes_ProtFire (self, 12);
};

///******************************************************************************************
/// Magic protection
///******************************************************************************************
func void SetItRiAttributes_ProtMagic (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Prot_Mage_01.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Magic;
	itm.COUNT[1]				=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Prot_Magic_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed magi¹ I";
	SetItRiAttributes_ProtMagic (self, 4);
};
instance ItRi_Prot_Magic_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed magi¹ II";
	SetItRiAttributes_ProtMagic (self, 8);
};
instance ItRi_Prot_Magic_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony przed magi¹ III";
	SetItRiAttributes_ProtMagic (self, 12);
};

///******************************************************************************************
/// Total protection
///******************************************************************************************
func void SetItRiAttributes_ProtTotal (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Prot_Total_01.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	NAME_Prot_Blunt;
	itm.COUNT[0]				=	itm.protection[PROT_BLUNT];
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	itm.protection[PROT_POINT];
	itm.TEXT[3]					=	NAME_Prot_Fire;
	itm.COUNT[3]				=	itm.protection[PROT_FIRE];
	itm.TEXT[4]					=	NAME_Prot_Magic;
	itm.COUNT[4]				=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Prot_Total_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony ca³kowitej I";
	SetItRiAttributes_ProtTotal (self, 2);
};
instance ItRi_Prot_Total_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony ca³kowitej II";
	SetItRiAttributes_ProtTotal (self, 4);
};
instance ItRi_Prot_Total_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ochrony ca³kowitej III";
	SetItRiAttributes_ProtTotal (self, 6);
};

///******************************************************************************************
/// Persistence
///******************************************************************************************
func void SetItRiAttributes_Persistence (var C_Item itm, var int kap)
{
	itm.value					=	kap*120;
	itm.visual					=	"ItRi_Prot_Blunt_02.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap;
	itm.protection[PROT_POINT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Blunt;
	itm.COUNT[1]				=	itm.protection[PROT_BLUNT];
	itm.TEXT[2]					=	NAME_Prot_Point;
	itm.COUNT[2]				=	itm.protection[PROT_POINT];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Persistence_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wytrwa³oœci I";
	SetItRiAttributes_Persistence (self, 3);
};
instance ItRi_Persistence_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wytrwa³oœci II";
	SetItRiAttributes_Persistence (self, 6);
};
instance ItRi_Persistence_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wytrwa³oœci III";
	SetItRiAttributes_Persistence (self, 9);
};

///******************************************************************************************
/// Tenacity
///******************************************************************************************
func void SetItRiAttributes_Tenacity (var C_Item itm, var int kap)
{
	itm.value					=	kap*120;
	itm.visual					=	"ItRi_Prot_Edge_02.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	itm.protection[PROT_FIRE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
	itm.TEXT[2]					=	NAME_Prot_Fire;
	itm.COUNT[2]				=	itm.protection[PROT_FIRE];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Tenacity_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nieustêpliwoœci I";
	SetItRiAttributes_Tenacity (self, 3);
};
instance ItRi_Tenacity_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nieustêpliwoœci II";
	SetItRiAttributes_Tenacity (self, 6);
};
instance ItRi_Tenacity_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nieustêpliwoœci III";
	SetItRiAttributes_Tenacity (self, 9);
};

///******************************************************************************************
/// Harmony
///******************************************************************************************
func void SetItRiAttributes_Harmony (var C_Item itm, var int kap)
{
	itm.value					=	kap*120;
	itm.visual					=	"ItRi_Prot_Point_02.3ds";
	
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Point;
	itm.COUNT[1]				=	itm.protection[PROT_POINT];
	itm.TEXT[2]					=	NAME_Prot_Magic;
	itm.COUNT[2]				=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Harmony_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ harmonii I";
	SetItRiAttributes_Harmony (self, 3);
};
instance ItRi_Harmony_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ harmonii II";
	SetItRiAttributes_Harmony (self, 6);
};
instance ItRi_Harmony_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ harmonii III";
	SetItRiAttributes_Harmony (self, 9);
};

///******************************************************************************************
/// Custody
///******************************************************************************************
func void SetItRiAttributes_Custody (var C_Item itm, var int kap)
{
	itm.value					=	kap*120;
	itm.visual					=	"ItRi_Prot_Fire_02.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	itm.protection[PROT_BLUNT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Fire;
	itm.COUNT[1]				=	itm.protection[PROT_FIRE];
	itm.TEXT[2]					=	NAME_Prot_Blunt;
	itm.COUNT[2]				=	itm.protection[PROT_BLUNT];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Custody_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nadzoru I";
	SetItRiAttributes_Custody (self, 3);
};
instance ItRi_Custody_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nadzoru II";
	SetItRiAttributes_Custody (self, 6);
};
instance ItRi_Custody_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nadzoru III";
	SetItRiAttributes_Custody (self, 9);
};

///******************************************************************************************
/// Wisdom
///******************************************************************************************
func void SetItRiAttributes_Wisdom (var C_Item itm, var int kap)
{
	itm.value					=	kap*120;
	itm.visual					=	"ItRi_Prot_Mage_02.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Magic;
	itm.COUNT[1]				=	itm.protection[PROT_MAGIC];
	itm.TEXT[2]					=	NAME_Prot_Edge;
	itm.COUNT[2]				=	itm.protection[PROT_EDGE];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Wisdom_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ m¹droœci I";
	SetItRiAttributes_Wisdom (self, 3);
};
instance ItRi_Wisdom_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ m¹droœci II";
	SetItRiAttributes_Wisdom (self, 6);
};
instance ItRi_Wisdom_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ m¹droœci III";
	SetItRiAttributes_Wisdom (self, 9);
};

///******************************************************************************************
/// Reflection
///******************************************************************************************
func void SetItRiAttributes_Reflection (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Prot_Total_02.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_Reflection;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Reflection;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Reflection_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ odbicia obra¿eñ I";
	SetItRiAttributes_Reflection (self, 4);
};
instance ItRi_Reflection_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ odbicia obra¿eñ II";
	SetItRiAttributes_Reflection (self, 8);
};
instance ItRi_Reflection_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ odbicia obra¿eñ III";
	SetItRiAttributes_Reflection (self, 12);
};

///******************************************************************************************
/// Hitpoints
///******************************************************************************************
func void SetItRiAttributes_Hp (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Hp_01.3ds";
	
	itm.change_atr[0]			=	ATR_HITPOINTS_MAX;
	itm.change_value[0]			=	kap*HP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_HpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Hp_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ¿ycia I";
	SetItRiAttributes_Hp (self, 4);
};
instance ItRi_Hp_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ¿ycia II";
	SetItRiAttributes_Hp (self, 8);
};
instance ItRi_Hp_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ¿ycia III";
	SetItRiAttributes_Hp (self, 12);
};

///******************************************************************************************
/// Mana
///******************************************************************************************
func void SetItRiAttributes_Mp (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Mp_01.3ds";
	
	itm.change_atr[0]			=	ATR_MANA_MAX;
	itm.change_value[0]			=	kap*MP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Mp_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ many I";
	SetItRiAttributes_Mp (self, 4);
};
instance ItRi_Mp_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ many II";
	SetItRiAttributes_Mp (self, 8);
};
instance ItRi_Mp_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ many III";
	SetItRiAttributes_Mp (self, 12);
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
func void SetItRiAttributes_Sp (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Sp_01.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_Stamina_MAX;
	itm.change_value[0]			=	kap*SP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_SpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Sp_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ energii I";
	SetItRiAttributes_Sp (self, 4);
};
instance ItRi_Sp_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ energii II";
	SetItRiAttributes_Sp (self, 8);
};
instance ItRi_Sp_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ energii III";
	SetItRiAttributes_Sp (self, 12);
};

///******************************************************************************************
/// Strength
///******************************************************************************************
func void SetItRiAttributes_Str (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Str_01.3ds";
	
	itm.change_atr[0]			=	ATR_STRENGTH;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Str;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Str_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ si³y I";
	SetItRiAttributes_Str (self, 4);
};
instance ItRi_Str_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ si³y II";
	SetItRiAttributes_Str (self, 8);
};
instance ItRi_Str_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ si³y III";
	SetItRiAttributes_Str (self, 12);
};

///******************************************************************************************
/// Dexterity
///******************************************************************************************
func void SetItRiAttributes_Dex (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Dex_01.3ds";
	
	itm.change_atr[0]			=	ATR_DEXTERITY;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Dex;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Dex_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ zrêcznoœci I";
	SetItRiAttributes_Dex (self, 4);
};
instance ItRi_Dex_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ zrêcznoœci II";
	SetItRiAttributes_Dex (self, 8);
};
instance ItRi_Dex_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ zrêcznoœci III";
	SetItRiAttributes_Dex (self, 12);
};

///******************************************************************************************
/// Power
///******************************************************************************************
func void SetItRiAttributes_Pow (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Pow_01.3ds";
	
	itm.change_atr[0]			=	ATR_POWER;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Pow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Pow_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ mocy I";
	SetItRiAttributes_Pow (self, 4);
};
instance ItRi_Pow_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ mocy II";
	SetItRiAttributes_Pow (self, 8);
};
instance ItRi_Pow_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ mocy III";
	SetItRiAttributes_Pow (self, 12);
};

///******************************************************************************************
/// Enlightment
///******************************************************************************************
func void SetItRiAttributes_Enlightment (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_HpMana_01.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[0]					=	NAME_Bonus_HpMax;
	itm.COUNT[0]				=	kap*HP_PER_LP;
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	kap*MP_PER_LP;
	itm.TEXT[2]					=	NAME_Bonus_Str;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Bonus_Dex;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Bonus_Pow;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Enlightment_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ oœwiecenia I";
	on_equip					=	Equip_ItRi_Enlightment_01;
	on_unequip					=	UnEquip_ItRi_Enlightment_01;
	SetItRiAttributes_Enlightment (self, 2);
};
func void Equip_ItRi_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 2*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 2);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 2);
	Npc_ChangeAttribute(self, ATR_POWER, 2);
};
func void UnEquip_ItRi_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -2*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -2*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -2);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -2);
	Npc_ChangeAttribute(self, ATR_POWER, -2);
};

instance ItRi_Enlightment_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ oœwiecenia II";
	on_equip					=	Equip_ItRi_Enlightment_02;
	on_unequip					=	UnEquip_ItRi_Enlightment_02;
	SetItRiAttributes_Enlightment (self, 4);
};
func void Equip_ItRi_Enlightment_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 4*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 4*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 4);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 4);
	Npc_ChangeAttribute(self, ATR_POWER, 4);
};
func void UnEquip_ItRi_Enlightment_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -4*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -4*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -4);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -4);
	Npc_ChangeAttribute(self, ATR_POWER, -4);
};

instance ItRi_Enlightment_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ oœwiecenia III";
	on_equip					=	Equip_ItRi_Enlightment_03;
	on_unequip					=	UnEquip_ItRi_Enlightment_03;
	SetItRiAttributes_Enlightment (self, 6);
};
func void Equip_ItRi_Enlightment_03()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 6*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 6*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 6);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 6);
	Npc_ChangeAttribute(self, ATR_POWER, 6);
};
func void UnEquip_ItRi_Enlightment_03()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -6*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -6*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -6);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -6);
	Npc_ChangeAttribute(self, ATR_POWER, -6);
};

///******************************************************************************************
/// Royal guard
///******************************************************************************************
func void SetItRiAttributes_Roy (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Hp_02.3ds";
	
	itm.change_atr[0]			=	ATR_HITPOINTS_MAX;
	itm.change_value[0]			=	kap*HP_PER_LP;
	itm.change_atr[1]			=	ATR_DEXTERITY;
	itm.change_value[1]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_HpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.TEXT[2]					=	NAME_Bonus_Dex;
	itm.COUNT[2]				=	itm.change_value[1];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Roy_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ gwardzisty I";
	SetItRiAttributes_Roy (self, 3);
};
instance ItRi_Roy_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ gwardzisty II";
	SetItRiAttributes_Roy (self, 6);
};
instance ItRi_Roy_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ gwardzisty III";
	SetItRiAttributes_Roy (self, 9);
};

///******************************************************************************************
/// Paladin
///******************************************************************************************
func void SetItRiAttributes_Pal (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Mp_02.3ds";
	
	itm.change_atr[0]			=	ATR_MANA_MAX;
	itm.change_value[0]			=	kap*MP_PER_LP;
	itm.change_atr[1]			=	ATR_STRENGTH;
	itm.change_value[1]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.TEXT[2]					=	NAME_Bonus_Str;
	itm.COUNT[2]				=	itm.change_value[1];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Pal_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ paladyna I";
	SetItRiAttributes_Pal (self, 3);
};
instance ItRi_Pal_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ paladyna II";
	SetItRiAttributes_Pal (self, 6);
};
instance ItRi_Pal_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ paladyna III";
	SetItRiAttributes_Pal (self, 9);
};

///******************************************************************************************
/// Dragon hunter
///******************************************************************************************
func void SetItRiAttributes_Djg (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Str_02.3ds";
	
	itm.change_atr[0]			=	ATR_STRENGTH;
	itm.change_value[0]			=	kap;
	itm.change_atr[1]			=	ATR_HITPOINTS_MAX;
	itm.change_value[1]			=	kap*HP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Str;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.TEXT[2]					=	NAME_Bonus_HpMax;
	itm.COUNT[2]				=	itm.change_value[1];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Djg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ³owcy smoków I";
	SetItRiAttributes_Djg (self, 3);
};
instance ItRi_Djg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ³owcy smoków II";
	SetItRiAttributes_Djg (self, 6);
};
instance ItRi_Djg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ³owcy smoków III";
	SetItRiAttributes_Djg (self, 9);
};

///******************************************************************************************
/// Assassin
///******************************************************************************************
func void SetItRiAttributes_Asa (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Dex_02.3ds";
	
	itm.change_atr[0]			=	ATR_DEXTERITY;
	itm.change_value[0]			=	kap;
	itm.change_atr[1]			=	ATR_POWER;
	itm.change_value[1]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Dex;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.TEXT[2]					=	NAME_Bonus_Pow;
	itm.COUNT[2]				=	itm.change_value[1];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Asa_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ zabójcy I";
	SetItRiAttributes_Asa (self, 3);
};
instance ItRi_Asa_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ zabójcy II";
	SetItRiAttributes_Asa (self, 6);
};
instance ItRi_Asa_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ zabójcy III";
	SetItRiAttributes_Asa (self, 9);
};

///******************************************************************************************
/// Mage
///******************************************************************************************
func void SetItRiAttributes_Mag (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Pow_02.3ds";
	
	itm.change_atr[0]			=	ATR_POWER;
	itm.change_value[0]			=	kap;
	itm.change_atr[1]			=	ATR_MANA_MAX;
	itm.change_value[1]			=	kap*MP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Pow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.TEXT[2]					=	NAME_Bonus_MpMax;
	itm.COUNT[2]				=	itm.change_value[1];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Mag_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ maga I";
	SetItRiAttributes_Mag (self, 3);
};
instance ItRi_Mag_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ maga II";
	SetItRiAttributes_Mag (self, 6);
};
instance ItRi_Mag_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ maga III";
	SetItRiAttributes_Mag (self, 9);
};

///******************************************************************************************
/// Throw
///******************************************************************************************
func void SetItRiAttributes_Throw (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Throw_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_00;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Talent0;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Throw_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ miotacza I";
	SetItRiAttributes_Throw (self, 4);
};
instance ItRi_Throw_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ miotacza II";
	SetItRiAttributes_Throw (self, 8);
};
instance ItRi_Throw_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ miotacza III";
	SetItRiAttributes_Throw (self, 12);
};

///******************************************************************************************
/// 1h
///******************************************************************************************
func void SetItRiAttributes_1h (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_1h_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_1H;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_1h;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_1h_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ szermierza I";
	SetItRiAttributes_1h (self, 4);
};
instance ItRi_1h_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ szermierza II";
	SetItRiAttributes_1h (self, 8);
};
instance ItRi_1h_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ szermierza III";
	SetItRiAttributes_1h (self, 12);
};

///******************************************************************************************
/// 2h
///******************************************************************************************
func void SetItRiAttributes_2h (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_2h_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_2H;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_2h;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_2h_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wojownika I";
	SetItRiAttributes_2h (self, 4);
};
instance ItRi_2h_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wojownika II";
	SetItRiAttributes_2h (self, 8);
};
instance ItRi_2h_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wojownika III";
	SetItRiAttributes_2h (self, 12);
};

///******************************************************************************************
/// Bow
///******************************************************************************************
func void SetItRiAttributes_Bow (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Bow_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_BOW;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Bow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Bow_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ³ucznika I";
	SetItRiAttributes_Bow (self, 4);
};
instance ItRi_Bow_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ³ucznika II";
	SetItRiAttributes_Bow (self, 8);
};
instance ItRi_Bow_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ³ucznika III";
	SetItRiAttributes_Bow (self, 12);
};

///******************************************************************************************
/// Crossbow
///******************************************************************************************
func void SetItRiAttributes_Cbow (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Cbow_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_CROSSBOW;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Cbow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Cbow_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kusznika I";
	SetItRiAttributes_Cbow (self, 4);
};
instance ItRi_Cbow_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kusznika II";
	SetItRiAttributes_Cbow (self, 8);
};
instance ItRi_Cbow_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kusznika III";
	SetItRiAttributes_Cbow (self, 12);
};

///******************************************************************************************
/// Master
///******************************************************************************************
func void SetItRiAttributes_Master (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Master_01.3ds";
	
	itm.description				=	itm.name;
//	itm.TEXT[0]					=	NAME_Bonus_Talent0;
//	itm.COUNT[0]				=	kap;
	itm.TEXT[1]					=	NAME_Bonus_1h;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Bonus_2h;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Bonus_Bow;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Bonus_CBow;
	itm.COUNT[4]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Master_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ mistrza broni I";
	on_equip					=	Equip_ItRi_Master_01;
	on_unequip					=	UnEquip_ItRi_Master_01;
	SetItRiAttributes_Master (self, 2);
};
func void Equip_ItRi_Master_01()
{
//	self.hitchance[NPC_TALENT_00] += 2;
	self.hitchance[NPC_TALENT_1H] += 2;
	self.hitchance[NPC_TALENT_2H] += 2;
	self.hitchance[NPC_TALENT_BOW] += 2;
	self.hitchance[NPC_TALENT_CROSSBOW] += 2;
};
func void UnEquip_ItRi_Master_01()
{
//	self.hitchance[NPC_TALENT_00] -= 2;
	self.hitchance[NPC_TALENT_1H] -= 2;
	self.hitchance[NPC_TALENT_2H] -= 2;
	self.hitchance[NPC_TALENT_BOW] -= 2;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 2;
};

instance ItRi_Master_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ mistrza broni II";
	on_equip					=	Equip_ItRi_Master_02;
	on_unequip					=	UnEquip_ItRi_Master_02;
	SetItRiAttributes_Master (self, 4);
};
func void Equip_ItRi_Master_02()
{
//	self.hitchance[NPC_TALENT_00] += 4;
	self.hitchance[NPC_TALENT_1H] += 4;
	self.hitchance[NPC_TALENT_2H] += 4;
	self.hitchance[NPC_TALENT_BOW] += 4;
	self.hitchance[NPC_TALENT_CROSSBOW] += 4;
};
func void UnEquip_ItRi_Master_02()
{
//	self.hitchance[NPC_TALENT_00] -= 4;
	self.hitchance[NPC_TALENT_1H] -= 4;
	self.hitchance[NPC_TALENT_2H] -= 4;
	self.hitchance[NPC_TALENT_BOW] -= 4;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 4;
};

instance ItRi_Master_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ mistrza broni III";
	on_equip					=	Equip_ItRi_Master_03;
	on_unequip					=	UnEquip_ItRi_Master_03;
	SetItRiAttributes_Master (self, 6);
};
func void Equip_ItRi_Master_03()
{
//	self.hitchance[NPC_TALENT_00] += 6;
	self.hitchance[NPC_TALENT_1H] += 6;
	self.hitchance[NPC_TALENT_2H] += 6;
	self.hitchance[NPC_TALENT_BOW] += 6;
	self.hitchance[NPC_TALENT_CROSSBOW] += 6;
};
func void UnEquip_ItRi_Master_03()
{
//	self.hitchance[NPC_TALENT_00] -= 6;
	self.hitchance[NPC_TALENT_1H] -= 6;
	self.hitchance[NPC_TALENT_2H] -= 6;
	self.hitchance[NPC_TALENT_BOW] -= 6;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 6;
};

///******************************************************************************************
/// Backstab damage
///******************************************************************************************
func void SetItRiAttributes_BackstabDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Throw_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Rozpoczêcie walki od ataku";
	itm.TEXT[2]					=	"w plecy zadaje dodatkowe";
	itm.TEXT[3]					=	"obra¿enia równe % ¿ycia wroga:";
	itm.COUNT[3]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_BackstabDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ciosu w plecy I";
	on_equip					=	Equip_ItRi_BackstabDmg_01;
	on_unequip					=	UnEquip_ItRi_BackstabDmg_01;
	SetItRiAttributes_BackstabDmg (self, 4);
};
func void Equip_ItRi_BackstabDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_BackstabDmg] += 4; }; };
func void UnEquip_ItRi_BackstabDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_BackstabDmg] -= 4; }; };

instance ItRi_BackstabDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ciosu w plecy II";
	on_equip					=	Equip_ItRi_BackstabDmg_02;
	on_unequip					=	UnEquip_ItRi_BackstabDmg_02;
	SetItRiAttributes_BackstabDmg (self, 8);
};
func void Equip_ItRi_BackstabDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_BackstabDmg] += 8; }; };
func void UnEquip_ItRi_BackstabDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_BackstabDmg] -= 8; }; };

instance ItRi_BackstabDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ ciosu w plecy III";
	on_equip					=	Equip_ItRi_BackstabDmg_03;
	on_unequip					=	UnEquip_ItRi_BackstabDmg_03;
	SetItRiAttributes_BackstabDmg (self, 12);
};
func void Equip_ItRi_BackstabDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_BackstabDmg] += 12; }; };
func void UnEquip_ItRi_BackstabDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_BackstabDmg] -= 12; }; };

///******************************************************************************************
/// Counter damage
///******************************************************************************************
func void SetItRiAttributes_CounterDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_1h_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_CounterDmg;
	itm.COUNT[1]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_CounterDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ kontrataku I";
	on_equip					=	Equip_ItRi_CounterDmg_01;
	on_unequip					=	UnEquip_ItRi_CounterDmg_01;
	SetItRiAttributes_CounterDmg (self, 4);
};
func void Equip_ItRi_CounterDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_CounterDmg] += 4; }; };
func void UnEquip_ItRi_CounterDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_CounterDmg] -= 4; }; };

instance ItRi_CounterDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ kontrataku II";
	on_equip					=	Equip_ItRi_CounterDmg_02;
	on_unequip					=	UnEquip_ItRi_CounterDmg_02;
	SetItRiAttributes_CounterDmg (self, 8);
};
func void Equip_ItRi_CounterDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_CounterDmg] += 8; }; };
func void UnEquip_ItRi_CounterDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_CounterDmg] -= 8; }; };

instance ItRi_CounterDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ kontrataku III";
	on_equip					=	Equip_ItRi_CounterDmg_03;
	on_unequip					=	UnEquip_ItRi_CounterDmg_03;
	SetItRiAttributes_CounterDmg (self, 12);
};
func void Equip_ItRi_CounterDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_CounterDmg] += 12; }; };
func void UnEquip_ItRi_CounterDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_CounterDmg] -= 12; }; };

///******************************************************************************************
/// Crit damage
///******************************************************************************************
func void SetItRiAttributes_CritDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_2h_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_CritDmg;
	itm.COUNT[1]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_CritDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ krytycznych I";
	on_equip					=	Equip_ItRi_CritDmg_01;
	on_unequip					=	UnEquip_ItRi_CritDmg_01;
	SetItRiAttributes_CritDmg (self, 4);
};
func void Equip_ItRi_CritDmg_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_CritDmg] += 4; }; };
func void UnEquip_ItRi_CritDmg_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_CritDmg] -= 4; }; };

instance ItRi_CritDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ krytycznych II";
	on_equip					=	Equip_ItRi_CritDmg_02;
	on_unequip					=	UnEquip_ItRi_CritDmg_02;
	SetItRiAttributes_CritDmg (self, 8);
};
func void Equip_ItRi_CritDmg_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_CritDmg] += 8; }; };
func void UnEquip_ItRi_CritDmg_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_CritDmg] -= 8; }; };

instance ItRi_CritDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ krytycznych III";
	on_equip					=	Equip_ItRi_CritDmg_03;
	on_unequip					=	UnEquip_ItRi_CritDmg_03;
	SetItRiAttributes_CritDmg (self, 12);
};
func void Equip_ItRi_CritDmg_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_CritDmg] += 12; }; };
func void UnEquip_ItRi_CritDmg_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_CritDmg] -= 12; }; };

///******************************************************************************************
/// Minimal damage
///******************************************************************************************
func void SetItRiAttributes_MinDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Bow_02.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_MinDamage;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_MinDmg;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_MinDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ równowagi I";
	SetItRiAttributes_MinDmg (self, 4);
};
instance ItRi_MinDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ równowagi II";
	SetItRiAttributes_MinDmg (self, 8);
};
instance ItRi_MinDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ równowagi III";
	SetItRiAttributes_MinDmg (self, 12);
};

///******************************************************************************************
/// After spell damage
///******************************************************************************************
func void SetItRiAttributes_AfterSpellDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Cbow_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Obra¿enia broni po";
	itm.TEXT[2]					=	"u¿yciu zaklêcia:";
	itm.COUNT[2]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_AfterSpellDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ pomagiczny I";
	on_equip					=	Equip_ItRi_AfterSpellDmg_01;
	on_unequip					=	UnEquip_ItRi_AfterSpellDmg_01;
	SetItRiAttributes_AfterSpellDmg (self, 4);
};
func void Equip_ItRi_AfterSpellDmg_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_AfterSpellDmg] += 4; }; };
func void UnEquip_ItRi_AfterSpellDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AfterSpellDmg] -= 4; }; };

instance ItRi_AfterSpellDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ pomagiczny II";
	on_equip					=	Equip_ItRi_AfterSpellDmg_02;
	on_unequip					=	UnEquip_ItRi_AfterSpellDmg_02;
	SetItRiAttributes_AfterSpellDmg (self, 8);
};
func void Equip_ItRi_AfterSpellDmg_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_AfterSpellDmg] += 8; }; };
func void UnEquip_ItRi_AfterSpellDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AfterSpellDmg] -= 8; }; };

instance ItRi_AfterSpellDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ pomagiczny III";
	on_equip					=	Equip_ItRi_AfterSpellDmg_03;
	on_unequip					=	UnEquip_ItRi_AfterSpellDmg_03;
	SetItRiAttributes_AfterSpellDmg (self, 12);
};
func void Equip_ItRi_AfterSpellDmg_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_AfterSpellDmg] += 12; }; };
func void UnEquip_ItRi_AfterSpellDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AfterSpellDmg] -= 12; }; };

///******************************************************************************************
/// Combo damage
///******************************************************************************************
func void SetItRiAttributes_ComboDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*400;
	itm.visual					=	"ItRi_Master_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Zwiêkszenie obra¿eñ za";
	itm.TEXT[2]					=	"ka¿de kolejne trafienie:";
	itm.COUNT[2]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_ComboDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kombinacji uderzeñ I";
	on_equip					=	Equip_ItRi_ComboDmg_01;
	on_unequip					=	UnEquip_ItRi_ComboDmg_01;
	SetItRiAttributes_ComboDmg (self, 1);
};
func void Equip_ItRi_ComboDmg_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_ComboDmg] += 1; }; };
func void UnEquip_ItRi_ComboDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_ComboDmg] -= 1; }; };

instance ItRi_ComboDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kombinacji uderzeñ II";
	on_equip					=	Equip_ItRi_ComboDmg_02;
	on_unequip					=	UnEquip_ItRi_ComboDmg_02;
	SetItRiAttributes_ComboDmg (self, 2);
};
func void Equip_ItRi_ComboDmg_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_ComboDmg] += 2; }; };
func void UnEquip_ItRi_ComboDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_ComboDmg] -= 2; }; };

instance ItRi_ComboDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kombinacji uderzeñ III";
	on_equip					=	Equip_ItRi_ComboDmg_03;
	on_unequip					=	UnEquip_ItRi_ComboDmg_03;
	SetItRiAttributes_ComboDmg (self, 3);
};
func void Equip_ItRi_ComboDmg_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_ComboDmg] += 3; }; };
func void UnEquip_ItRi_ComboDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_ComboDmg] -= 3; }; };

///******************************************************************************************
/// Penetration
///******************************************************************************************
func void SetItRiAttributes_Penetration (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Penetration_01.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_Penetration;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Penetration;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Penetration_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przebicia pancerza I";
	SetItRiAttributes_Penetration (self, 4);
};
instance ItRi_Penetration_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przebicia pancerza II";
	SetItRiAttributes_Penetration (self, 8);
};
instance ItRi_Penetration_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przebicia pancerza III";
	SetItRiAttributes_Penetration (self, 12);
};

///******************************************************************************************
/// Area damage
///******************************************************************************************
func void SetItRiAttributes_AreaDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*75;
	itm.visual					=	"ItRi_Penetration_02.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_AreaDamage;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_AreaDmg;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_AreaDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ obszarowych I";
	SetItRiAttributes_AreaDmg (self, 6);
};
instance ItRi_AreaDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ obszarowych II";
	SetItRiAttributes_AreaDmg (self, 12);
};
instance ItRi_AreaDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ obra¿eñ obszarowych II";
	SetItRiAttributes_AreaDmg (self, 18);
};

///******************************************************************************************
/// Overload damage
///******************************************************************************************
func void SetItRiAttributes_OverloadDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Overload_01.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Po 5 sekundach zadasz obra¿enia";
	itm.TEXT[2]					=	"wynosz¹ce % twojego max. ¿ycia:";
	itm.COUNT[2]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_OverloadDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przeci¹¿enia I";
	on_equip					=	Equip_ItRi_OverloadDmg_01;
	on_unequip					=	UnEquip_ItRi_OverloadDmg_01;
	SetItRiAttributes_OverloadDmg (self, 3);
};
func void Equip_ItRi_OverloadDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] += 3; }; };
func void UnEquip_ItRi_OverloadDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] -= 3; }; };

instance ItRi_OverloadDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przeci¹¿enia II";
	on_equip					=	Equip_ItRi_OverloadDmg_02;
	on_unequip					=	UnEquip_ItRi_OverloadDmg_02;
	SetItRiAttributes_OverloadDmg (self, 6);
};
func void Equip_ItRi_OverloadDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] += 6; }; };
func void UnEquip_ItRi_OverloadDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] -= 6; }; };

instance ItRi_OverloadDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przeci¹¿enia III";
	on_equip					=	Equip_ItRi_OverloadDmg_03;
	on_unequip					=	UnEquip_ItRi_OverloadDmg_03;
	SetItRiAttributes_OverloadDmg (self, 9);
};
func void Equip_ItRi_OverloadDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] += 9; }; };
func void UnEquip_ItRi_OverloadDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] -= 9; }; };

///******************************************************************************************
/// Gold to damage
///******************************************************************************************
func void SetItRiAttributes_GoldDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItRi_Gold_01.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Co 3 atak zadaje dod. obra¿enia:";
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	"Ale zu¿ywa z³ote monety:";
	itm.COUNT[2]				=	kap/5;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_GoldDmg_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ z³otych obra¿eñ I";
	on_equip					=	Equip_ItRi_GoldDmg_01;
	on_unequip					=	UnEquip_ItRi_GoldDmg_01;
	SetItRiAttributes_GoldDmg (self, 5);
};
func void Equip_ItRi_GoldDmg_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_GoldDmg] += 5; }; };
func void UnEquip_ItRi_GoldDmg_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_GoldDmg] -= 5; }; };

instance ItRi_GoldDmg_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ z³otych obra¿eñ II";
	on_equip					=	Equip_ItRi_GoldDmg_02;
	on_unequip					=	UnEquip_ItRi_GoldDmg_02;
	SetItRiAttributes_GoldDmg (self, 10);
};
func void Equip_ItRi_GoldDmg_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_GoldDmg] += 10; }; };
func void UnEquip_ItRi_GoldDmg_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_GoldDmg] -= 10; }; };

instance ItRi_GoldDmg_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ z³otych obra¿eñ III";
	on_equip					=	Equip_ItRi_GoldDmg_03;
	on_unequip					=	UnEquip_ItRi_GoldDmg_03;
	SetItRiAttributes_GoldDmg (self, 15);
};
func void Equip_ItRi_GoldDmg_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_GoldDmg] += 15; }; };
func void UnEquip_ItRi_GoldDmg_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_GoldDmg] -= 15; }; };

///******************************************************************************************
/// Ally enhancement
///******************************************************************************************
func void SetItRiAttributes_Enhancement (var C_Item itm, var int kap)
{
	itm.value					=	kap*200;
	itm.visual					=	"ItRi_Ally_01.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Wzmacnia obra¿enia sojuszników o:";
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	"Koszt many ka¿dego trafienia:";
	itm.COUNT[2]				=	kap/4;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Enhancement_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wzmocnienia I";
	on_equip					=	Equip_ItRi_Enhancement_01;
	on_unequip					=	UnEquip_ItRi_Enhancement_01;
	SetItRiAttributes_Enhancement (self, 4);
};
func void Equip_ItRi_Enhancement_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AllyEnhancement] += 4; }; };
func void UnEquip_ItRi_Enhancement_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AllyEnhancement] -= 4; }; };

instance ItRi_Enhancement_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wzmocnienia II";
	on_equip					=	Equip_ItRi_Enhancement_02;
	on_unequip					=	UnEquip_ItRi_Enhancement_02;
	SetItRiAttributes_Enhancement (self, 8);
};
func void Equip_ItRi_Enhancement_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AllyEnhancement] += 8; }; };
func void UnEquip_ItRi_Enhancement_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AllyEnhancement] -= 8; }; };

instance ItRi_Enhancement_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ wzmocnienia III";
	on_equip					=	Equip_ItRi_Enhancement_03;
	on_unequip					=	UnEquip_ItRi_Enhancement_03;
	SetItRiAttributes_Enhancement (self, 12);
};
func void Equip_ItRi_Enhancement_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AllyEnhancement] += 12; }; };
func void UnEquip_ItRi_Enhancement_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_AllyEnhancement] -= 12; }; };

///******************************************************************************************
/// Redirect
///******************************************************************************************
func void SetItRiAttributes_Redirect (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_Ally_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Przekierowuje % obra¿eñ:";
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	"zadanych sojusznikowi.";
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Redirect_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przekierowania obra¿eñ I";
	on_equip					=	Equip_ItRi_Redirect_01;
	on_unequip					=	UnEquip_ItRi_Redirect_01;
	SetItRiAttributes_Redirect (self, 10);
};
func void Equip_ItRi_Redirect_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_RedirectDmg] += 10; }; };
func void UnEquip_ItRi_Redirect_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_RedirectDmg] -= 10; }; };

instance ItRi_Redirect_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przekierowania obra¿eñ II";
	on_equip					=	Equip_ItRi_Redirect_02;
	on_unequip					=	UnEquip_ItRi_Redirect_02;
	SetItRiAttributes_Redirect (self, 20);
};
func void Equip_ItRi_Redirect_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_RedirectDmg] += 20; }; };
func void UnEquip_ItRi_Redirect_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_RedirectDmg] -= 20; }; };

instance ItRi_Redirect_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ przekierowania obra¿eñ III";
	on_equip					=	Equip_ItRi_Redirect_03;
	on_unequip					=	UnEquip_ItRi_Redirect_03;
	SetItRiAttributes_Redirect (self, 30);
};
func void Equip_ItRi_Redirect_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_RedirectDmg] += 30; }; };
func void UnEquip_ItRi_Redirect_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_RedirectDmg] -= 30; }; };

///******************************************************************************************
/// Life steal
///******************************************************************************************
func void SetItRiAttributes_Ls (var C_Item itm, var int kap)
{
	itm.value					=	kap*200;
	itm.visual					=	"ItRi_LifeSteal_01.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_LifeSteal;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Ls;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Ls_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kradzie¿y ¿ycia I";
	SetItRiAttributes_Ls (self, 2);
};
instance ItRi_Ls_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kradzie¿y ¿ycia II";
	SetItRiAttributes_Ls (self, 4);
};
instance ItRi_Ls_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ kradzie¿y ¿ycia III";
	SetItRiAttributes_Ls (self, 6);
};

///******************************************************************************************
/// Necro restore
///******************************************************************************************
func void SetItRiAttributes_Necro (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItRi_LifeSteal_02.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Przywraca ¿ycie i manê";
	itm.TEXT[2]					=	"za % poziomu poleg³ego:";
	itm.COUNT[2]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItRi_Necro_01 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nekromanty I";
	on_equip					=	Equip_ItRi_Necro_01;
	on_unequip					=	UnEquip_ItRi_Necro_01;
	SetItRiAttributes_Necro (self, 10);
};
func void Equip_ItRi_Necro_01()			{ if (Npc_IsPlayer(self)) { ATS[ATS_NecroRestore] += 10; }; };
func void UnEquip_ItRi_Necro_01()		{ if (Npc_IsPlayer(self)) { ATS[ATS_NecroRestore] -= 10; }; };

instance ItRi_Necro_02 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nekromanty II";
	on_equip					=	Equip_ItRi_Necro_02;
	on_unequip					=	UnEquip_ItRi_Necro_02;
	SetItRiAttributes_Necro (self, 20);
};
func void Equip_ItRi_Necro_02()			{ if (Npc_IsPlayer(self)) { ATS[ATS_NecroRestore] += 20; }; };
func void UnEquip_ItRi_Necro_02()		{ if (Npc_IsPlayer(self)) { ATS[ATS_NecroRestore] -= 20; }; };

instance ItRi_Necro_03 (ItemPR_Ring)
{
	name						=	"Pierœcieñ nekromanty III";
	on_equip					=	Equip_ItRi_Necro_03;
	on_unequip					=	UnEquip_ItRi_Necro_03;
	SetItRiAttributes_Necro (self, 30);
};
func void Equip_ItRi_Necro_03()			{ if (Npc_IsPlayer(self)) { ATS[ATS_NecroRestore] += 30; }; };
func void UnEquip_ItRi_Necro_03()		{ if (Npc_IsPlayer(self)) { ATS[ATS_NecroRestore] -= 30; }; };
