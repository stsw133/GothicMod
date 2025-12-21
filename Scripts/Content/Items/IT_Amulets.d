///******************************************************************************************
prototype ItemPR_Amulet (C_Item)
{
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_AMULET;
	material					=	MAT_METAL;
	
	on_equip					=	Npc_AttributesRefresh;
	on_unequip					=	Npc_AttributesRefresh;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]						=	NAME_Value;
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
};

prototype ItemPR_AmuletOrc (C_Item)
{
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_AMULET;
	
	value						=	10;
	visual						=	"ItMi_Amulet_Ulumulu_01.3ds";
	material					=	MAT_STONE;
	
	on_equip					=	Npc_AttributesRefresh;
	on_unequip					=	Npc_AttributesRefresh;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]						=	NAME_Value;
	inv_rotx					=	INVCAM_X_RING_STANDARD;
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
};

///******************************************************************************************
/// Blunt protection
///******************************************************************************************
func void SetItAmAttributes_ProtBlunt (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Prot_Blunt_01.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Blunt;
	itm.COUNT[1]				=	itm.protection[PROT_BLUNT];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Prot_Blunt_01 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed obuchem I";
	SetItAmAttributes_ProtBlunt (self, 8);
};
instance ItAm_Prot_Blunt_02 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed obuchem II";
	SetItAmAttributes_ProtBlunt (self, 16);
};
instance ItAm_Prot_Blunt_03 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed obuchem III";
	SetItAmAttributes_ProtBlunt (self, 24);
};

///******************************************************************************************
/// Edge protection
///******************************************************************************************
func void SetItAmAttributes_ProtEdge (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Prot_Edge_01.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Prot_Edge_01 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed ostrzami I";
	SetItAmAttributes_ProtEdge (self, 8);
};
instance ItAm_Prot_Edge_02 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed ostrzami II";
	SetItAmAttributes_ProtEdge (self, 16);
};
instance ItAm_Prot_Edge_03 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed ostrzami III";
	SetItAmAttributes_ProtEdge (self, 24);
};

///******************************************************************************************
/// Point protection
///******************************************************************************************
func void SetItAmAttributes_ProtPoint (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Prot_Point_01.3ds";
	
	itm.protection[PROT_POINT]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Point;
	itm.COUNT[1]				=	itm.protection[PROT_POINT];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Prot_Point_01 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed pociskami I";
	SetItAmAttributes_ProtPoint (self, 8);
};
instance ItAm_Prot_Point_02 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed pociskami II";
	SetItAmAttributes_ProtPoint (self, 16);
};
instance ItAm_Prot_Point_03 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed pociskami III";
	SetItAmAttributes_ProtPoint (self, 24);
};

///******************************************************************************************
/// Fire protection
///******************************************************************************************
func void SetItAmAttributes_ProtFire (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Prot_Fire_01.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Fire;
	itm.COUNT[1]				=	itm.protection[PROT_FIRE];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Prot_Fire_01 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed ogniem I";
	SetItAmAttributes_ProtFire (self, 8);
};
instance ItAm_Prot_Fire_02 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed ogniem II";
	SetItAmAttributes_ProtFire (self, 16);
};
instance ItAm_Prot_Fire_03 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed ogniem III";
	SetItAmAttributes_ProtFire (self, 24);
};

///******************************************************************************************
/// Magic protection
///******************************************************************************************
func void SetItAmAttributes_ProtMagic (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Prot_Mage_01.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Prot_Magic;
	itm.COUNT[1]				=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Prot_Magic_01 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed magi¹ I";
	SetItAmAttributes_ProtMagic (self, 8);
};
instance ItAm_Prot_Magic_02 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed magi¹ II";
	SetItAmAttributes_ProtMagic (self, 16);
};
instance ItAm_Prot_Magic_03 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony przed magi¹ III";
	SetItAmAttributes_ProtMagic (self, 24);
};

///******************************************************************************************
/// Total protection
///******************************************************************************************
func void SetItAmAttributes_ProtTotal (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItAm_Prot_Total_01.3ds";
	
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

instance ItAm_Prot_Total_01 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony ca³kowitej I";
	SetItAmAttributes_ProtTotal (self, 4);
};
instance ItAm_Prot_Total_02 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony ca³kowitej II";
	SetItAmAttributes_ProtTotal (self, 8);
};
instance ItAm_Prot_Total_03 (ItemPR_Amulet)
{
	name						=	"Amulet ochrony ca³kowitej III";
	SetItAmAttributes_ProtTotal (self, 12);
};

///******************************************************************************************
/// Hitpoints
///******************************************************************************************
func void SetItAmAttributes_Hp (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Hp_01.3ds";
	
	itm.change_atr[0]			=	ATR_HITPOINTS_MAX;
	itm.change_value[0]			=	kap*HP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_HpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Hp_01 (ItemPR_Amulet)
{
	name						=	"Amulet ¿ycia I";
	SetItAmAttributes_Hp (self, 8);
};
instance ItAm_Hp_02 (ItemPR_Amulet)
{
	name						=	"Amulet ¿ycia II";
	SetItAmAttributes_Hp (self, 16);
};
instance ItAm_Hp_03 (ItemPR_Amulet)
{
	name						=	"Amulet ¿ycia III";
	SetItAmAttributes_Hp (self, 24);
};

///******************************************************************************************
/// Mana
///******************************************************************************************
func void SetItAmAttributes_Mp (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Mp_01.3ds";
	
	itm.change_atr[0]			=	ATR_MANA_MAX;
	itm.change_value[0]			=	kap*MP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Mp_01 (ItemPR_Amulet)
{
	name						=	"Amulet many I";
	SetItAmAttributes_Mp (self, 8);
};
instance ItAm_Mp_02 (ItemPR_Amulet)
{
	name						=	"Amulet many II";
	SetItAmAttributes_Mp (self, 16);
};
instance ItAm_Mp_03 (ItemPR_Amulet)
{
	name						=	"Amulet many III";
	SetItAmAttributes_Mp (self, 24);
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
func void SetItAmAttributes_Sp (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Sp_01.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_Stamina_MAX;
	itm.change_value[0]			=	kap*SP_PER_LP;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_SpMax;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Sp_01 (ItemPR_Amulet)
{
	name						=	"Amulet energii I";
	SetItAmAttributes_Sp (self, 8);
};
instance ItAm_Sp_02 (ItemPR_Amulet)
{
	name						=	"Amulet energii II";
	SetItAmAttributes_Sp (self, 16);
};
instance ItAm_Sp_03 (ItemPR_Amulet)
{
	name						=	"Amulet energii III";
	SetItAmAttributes_Sp (self, 24);
};

///******************************************************************************************
/// Strength
///******************************************************************************************
func void SetItAmAttributes_Str (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Str_01.3ds";
	
	itm.change_atr[0]			=	ATR_STRENGTH;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Str;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Str_01 (ItemPR_Amulet)
{
	name						=	"Amulet si³y I";
	SetItAmAttributes_Str (self, 8);
};
instance ItAm_Str_02 (ItemPR_Amulet)
{
	name						=	"Amulet si³y II";
	SetItAmAttributes_Str (self, 16);
};
instance ItAm_Str_03 (ItemPR_Amulet)
{
	name						=	"Amulet si³y III";
	SetItAmAttributes_Str (self, 24);
};

///******************************************************************************************
/// Dexterity
///******************************************************************************************
func void SetItAmAttributes_Dex (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Dex_01.3ds";
	
	itm.change_atr[0]			=	ATR_DEXTERITY;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Dex;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Dex_01 (ItemPR_Amulet)
{
	name						=	"Amulet zrêcznoœci I";
	SetItAmAttributes_Dex (self, 8);
};
instance ItAm_Dex_02 (ItemPR_Amulet)
{
	name						=	"Amulet zrêcznoœci II";
	SetItAmAttributes_Dex (self, 16);
};
instance ItAm_Dex_03 (ItemPR_Amulet)
{
	name						=	"Amulet zrêcznoœci III";
	SetItAmAttributes_Dex (self, 24);
};

///******************************************************************************************
/// Power
///******************************************************************************************
func void SetItAmAttributes_Pow (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Pow_01.3ds";
	
	itm.change_atr[0]			=	ATR_POWER;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Pow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Pow_01 (ItemPR_Amulet)
{
	name						=	"Amulet mocy I";
	SetItAmAttributes_Pow (self, 8);
};
instance ItAm_Pow_02 (ItemPR_Amulet)
{
	name						=	"Amulet mocy II";
	SetItAmAttributes_Pow (self, 16);
};
instance ItAm_Pow_03 (ItemPR_Amulet)
{
	name						=	"Amulet mocy III";
	SetItAmAttributes_Pow (self, 24);
};

///******************************************************************************************
/// Enlightment
///******************************************************************************************
func void SetItAmAttributes_Enlightment (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItAm_HpMana_01.3ds";
	
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

instance ItAm_Enlightment_01 (ItemPR_Amulet)
{
	name						=	"Amulet oœwiecenia I";
	on_equip					=	Equip_ItAm_Enlightment_01;
	on_unequip					=	UnEquip_ItAm_Enlightment_01;
	SetItAmAttributes_Enlightment (self, 4);
};
func void Equip_ItAm_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 4*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 4*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 4);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 4);
	Npc_ChangeAttribute(self, ATR_POWER, 4);
};
func void UnEquip_ItAm_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -4*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -4*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -4);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -4);
	Npc_ChangeAttribute(self, ATR_POWER, -4);
};

instance ItAm_Enlightment_02 (ItemPR_Amulet)
{
	name						=	"Amulet oœwiecenia II";
	on_equip					=	Equip_ItAm_Enlightment_02;
	on_unequip					=	UnEquip_ItAm_Enlightment_02;
	SetItAmAttributes_Enlightment (self, 8);
};
func void Equip_ItAm_Enlightment_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 8*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 8*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 8);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 8);
	Npc_ChangeAttribute(self, ATR_POWER, 8);
};
func void UnEquip_ItAm_Enlightment_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -8*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -8*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -8);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -8);
	Npc_ChangeAttribute(self, ATR_POWER, -8);
};

instance ItAm_Enlightment_03 (ItemPR_Amulet)
{
	name						=	"Amulet oœwiecenia III";
	on_equip					=	Equip_ItAm_Enlightment_03;
	on_unequip					=	UnEquip_ItAm_Enlightment_03;
	SetItAmAttributes_Enlightment (self, 12);
};
func void Equip_ItAm_Enlightment_03()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 12*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 12*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 12);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 12);
	Npc_ChangeAttribute(self, ATR_POWER, 12);
};
func void UnEquip_ItAm_Enlightment_03()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -12*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -12*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -12);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -12);
	Npc_ChangeAttribute(self, ATR_POWER, -12);
};

///******************************************************************************************
/// Throw
///******************************************************************************************
func void SetItAmAttributes_Throw (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Throw_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_00;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Talent0;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Throw_01 (ItemPR_Amulet)
{
	name						=	"Amulet miotacza I";
	SetItAmAttributes_Throw (self, 8);
};
instance ItAm_Throw_02 (ItemPR_Amulet)
{
	name						=	"Amulet miotacza II";
	SetItAmAttributes_Throw (self, 16);
};
instance ItAm_Throw_03 (ItemPR_Amulet)
{
	name						=	"Amulet miotacza III";
	SetItAmAttributes_Throw (self, 24);
};

///******************************************************************************************
/// 1h
///******************************************************************************************
func void SetItAmAttributes_1h (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_1h_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_1H;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_1h;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_1h_01 (ItemPR_Amulet)
{
	name						=	"Amulet szermierza I";
	SetItAmAttributes_1h (self, 8);
};
instance ItAm_1h_02 (ItemPR_Amulet)
{
	name						=	"Amulet szermierza II";
	SetItAmAttributes_1h (self, 16);
};
instance ItAm_1h_03 (ItemPR_Amulet)
{
	name						=	"Amulet szermierza III";
	SetItAmAttributes_1h (self, 24);
};

///******************************************************************************************
/// 2h
///******************************************************************************************
func void SetItAmAttributes_2h (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_2h_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_2H;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_2h;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_2h_01 (ItemPR_Amulet)
{
	name						=	"Amulet wojownika I";
	SetItAmAttributes_2h (self, 8);
};
instance ItAm_2h_02 (ItemPR_Amulet)
{
	name						=	"Amulet wojownika II";
	SetItAmAttributes_2h (self, 16);
};
instance ItAm_2h_03 (ItemPR_Amulet)
{
	name						=	"Amulet wojownika III";
	SetItAmAttributes_2h (self, 24);
};

///******************************************************************************************
/// Bow
///******************************************************************************************
func void SetItAmAttributes_Bow (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Bow_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_BOW;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Bow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Bow_01 (ItemPR_Amulet)
{
	name						=	"Amulet ³ucznika I";
	SetItAmAttributes_Bow (self, 8);
};
instance ItAm_Bow_02 (ItemPR_Amulet)
{
	name						=	"Amulet ³ucznika II";
	SetItAmAttributes_Bow (self, 16);
};
instance ItAm_Bow_03 (ItemPR_Amulet)
{
	name						=	"Amulet ³ucznika III";
	SetItAmAttributes_Bow (self, 24);
};

///******************************************************************************************
/// Crossbow
///******************************************************************************************
func void SetItAmAttributes_Cbow (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Cbow_01.3ds";
	
	itm.change_atr[0]			=	ATR_INDEX_MAX+1+NPC_TALENT_CROSSBOW;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Cbow;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Cbow_01 (ItemPR_Amulet)
{
	name						=	"Amulet kusznika I";
	SetItAmAttributes_Cbow (self, 8);
};
instance ItAm_Cbow_02 (ItemPR_Amulet)
{
	name						=	"Amulet kusznika II";
	SetItAmAttributes_Cbow (self, 16);
};
instance ItAm_Cbow_03 (ItemPR_Amulet)
{
	name						=	"Amulet kusznika III";
	SetItAmAttributes_Cbow (self, 24);
};

///******************************************************************************************
/// Master
///******************************************************************************************
func void SetItAmAttributes_Master (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItAm_Master_01.3ds";
	
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

instance ItAm_Master_01 (ItemPR_Amulet)
{
	name						=	"Amulet mistrza broni I";
	on_equip					=	Equip_ItAm_Master_01;
	on_unequip					=	UnEquip_ItAm_Master_01;
	SetItAmAttributes_Master (self, 4);
};
func void Equip_ItAm_Master_01()
{
//	self.hitchance[NPC_TALENT_THROW] += 4;
	self.hitchance[NPC_TALENT_1H] += 4;
	self.hitchance[NPC_TALENT_2H] += 4;
	self.hitchance[NPC_TALENT_BOW] += 4;
	self.hitchance[NPC_TALENT_CROSSBOW] += 4;
};
func void UnEquip_ItAm_Master_01()
{
//	self.hitchance[NPC_TALENT_THROW] -= 4;
	self.hitchance[NPC_TALENT_1H] -= 4;
	self.hitchance[NPC_TALENT_2H] -= 4;
	self.hitchance[NPC_TALENT_BOW] -= 4;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 4;
};

instance ItAm_Master_02 (ItemPR_Amulet)
{
	name						=	"Amulet mistrza broni II";
	on_equip					=	Equip_ItAm_Master_02;
	on_unequip					=	UnEquip_ItAm_Master_02;
	SetItAmAttributes_Master (self, 8);
};
func void Equip_ItAm_Master_02()
{
//	self.hitchance[NPC_TALENT_THROW] += 8;
	self.hitchance[NPC_TALENT_1H] += 8;
	self.hitchance[NPC_TALENT_2H] += 8;
	self.hitchance[NPC_TALENT_BOW] += 8;
	self.hitchance[NPC_TALENT_CROSSBOW] += 8;
};
func void UnEquip_ItAm_Master_02()
{
//	self.hitchance[NPC_TALENT_THROW] -= 8;
	self.hitchance[NPC_TALENT_1H] -= 8;
	self.hitchance[NPC_TALENT_2H] -= 8;
	self.hitchance[NPC_TALENT_BOW] -= 8;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 8;
};

instance ItAm_Master_03 (ItemPR_Amulet)
{
	name						=	"Amulet mistrza broni III";
	on_equip					=	Equip_ItAm_Master_03;
	on_unequip					=	UnEquip_ItAm_Master_03;
	SetItAmAttributes_Master (self, 12);
};
func void Equip_ItAm_Master_03()
{
//	self.hitchance[NPC_TALENT_THROW] += 12;
	self.hitchance[NPC_TALENT_1H] += 12;
	self.hitchance[NPC_TALENT_2H] += 12;
	self.hitchance[NPC_TALENT_BOW] += 12;
	self.hitchance[NPC_TALENT_CROSSBOW] += 12;
};
func void UnEquip_ItAm_Master_03()
{
//	self.hitchance[NPC_TALENT_THROW] -= 12;
	self.hitchance[NPC_TALENT_1H] -= 12;
	self.hitchance[NPC_TALENT_2H] -= 12;
	self.hitchance[NPC_TALENT_BOW] -= 12;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 12;
};

///******************************************************************************************
/// Penetration
///******************************************************************************************
func void SetItAmAttributes_Penetration (var C_Item itm, var int kap)
{
	itm.value					=	kap*100;
	itm.visual					=	"ItAm_Penetration_01.3ds";
	
	itm.change_atr[0]			=	COND_AIVAR+AIV_Penetration;
	itm.change_value[0]			=	kap;
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	NAME_Bonus_Penetration;
	itm.COUNT[1]				=	itm.change_value[0];
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_Penetration_01 (ItemPR_Amulet)
{
	name						=	"Amulet przebicia pancerza I";
	SetItAmAttributes_Penetration (self, 8);
};
instance ItAm_Penetration_02 (ItemPR_Amulet)
{
	name						=	"Amulet przebicia pancerza II";
	SetItAmAttributes_Penetration (self, 16);
};
instance ItAm_Penetration_03 (ItemPR_Amulet)
{
	name						=	"Amulet przebicia pancerza III";
	SetItAmAttributes_Penetration (self, 24);
};

///******************************************************************************************
/// Overload damage
///******************************************************************************************
func void SetItAmAttributes_OverloadDmg (var C_Item itm, var int kap)
{
	itm.value					=	kap*150;
	itm.visual					=	"ItAm_Overload_01.3ds";
	
	itm.description				=	itm.name;
	itm.TEXT[1]					=	"Po 5 sekundach zadasz obra¿enia";
	itm.TEXT[2]					=	"wynosz¹ce % twojego max. ¿ycia:";
	itm.COUNT[2]				=	kap;
	itm.COUNT[5]				=	itm.value;
};

instance ItAm_OverloadDmg_01 (ItemPR_Amulet)
{
	name						=	"Amulet przeci¹¿enia I";
	on_equip					=	Equip_ItAm_OverloadDmg_01;
	on_unequip					=	UnEquip_ItAm_OverloadDmg_01;
	SetItAmAttributes_OverloadDmg (self, 6);
};
func void Equip_ItAm_OverloadDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] += 6; }; };
func void UnEquip_ItAm_OverloadDmg_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] -= 6; }; };

instance ItAm_OverloadDmg_02 (ItemPR_Amulet)
{
	name						=	"Amulet przeci¹¿enia II";
	SetItAmAttributes_OverloadDmg (self, 12);
};
func void Equip_ItAm_OverloadDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] += 12; }; };
func void UnEquip_ItAm_OverloadDmg_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] -= 12; }; };

instance ItAm_OverloadDmg_03 (ItemPR_Amulet)
{
	name						=	"Amulet przeci¹¿enia III";
	SetItAmAttributes_OverloadDmg (self, 18);
};
func void Equip_ItAm_OverloadDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] += 18; }; };
func void UnEquip_ItAm_OverloadDmg_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OverloadDmg] -= 18; }; };

///******************************************************************************************
/// Orc
///******************************************************************************************
instance ItAm_Orc_01 (ItemPR_AmuletOrc)
{
	name						=	"Ulu-Teru";
	
	on_equip					=	Equip_ItAm_Orc_01;
	on_unequip					=	UnEquip_ItAm_Orc;
	
	description					=	name;
	TEXT[1]						=	"Wszyscy orkowi sojusznicy";
	TEXT[2]						=	"otrzymuj¹ -20 obra¿eñ.";
};
func void Equip_ItAm_Orc_01()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OrcAmuletType] = 1; }; };
func void UnEquip_ItAm_Orc()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OrcAmuletType] = 0; }; };

instance ItAm_Orc_02 (ItemPR_AmuletOrc)
{
	name						=	"Ulu-Atu";
	
	on_equip					=	Equip_ItAm_Orc_02;
	on_unequip					=	UnEquip_ItAm_Orc;
	
	description					=	name;
	TEXT[1]						=	"Wszyscy orkowi sojusznicy";
	TEXT[2]						=	"zadaj¹ +25 obra¿eñ z broni bia³ej.";
};
func void Equip_ItAm_Orc_02()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OrcAmuletType] = 2; }; };

instance ItAm_Orc_03 (ItemPR_AmuletOrc)
{
	name						=	"Ulu-Pazu";
	
	on_equip					=	Equip_ItAm_Orc_03;
	on_unequip					=	UnEquip_ItAm_Orc;
	
	description					=	name;
	TEXT[1]						=	"Wszyscy orkowi sojusznicy";
	TEXT[2]						=	"zadaj¹ +30 obra¿eñ z kuszy.";
};
func void Equip_ItAm_Orc_03()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OrcAmuletType] = 3; }; };

instance ItAm_Orc_04 (ItemPR_AmuletOrc)
{
	name						=	"Ulu-Domu";
	
	on_equip					=	Equip_ItAm_Orc_04;
	on_unequip					=	UnEquip_ItAm_Orc;
	
	description					=	name;
	TEXT[1]						=	"Wszyscy orkowi sojusznicy";
	TEXT[2]						=	"zadaj¹ +30 obra¿eñ z magii.";
};
func void Equip_ItAm_Orc_04()	{ if (Npc_IsPlayer(self)) { ATS[ATS_OrcAmuletType] = 4; }; };

///******************************************************************************************
/// Special
///******************************************************************************************
instance ItAm_Addon_WispDetector (ItemPR_Amulet)
{
	name						=	"Amulet ognika";
	flags						=	ITEM_AMULET | ITEM_MISSION;
	visual						=	"ItAm_Ally_01.3ds";
	
	on_equip					=	Equip_WispDetector;
	on_unequip					=	UnEquip_WispDetector;
	
	description					=	name;
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
};
var int Equip_WispDetector_OneTime;
func void Equip_WispDetector()
{
	if (!Equip_WispDetector_OneTime)
	{
		WispSearching = WispSearch_NF;
		Equip_WispDetector_OneTime = true;
	};
	
	var C_Npc detWsp; detWsp = Hlp_GetNpc(Wisp_Detector);
	AI_Teleport (detWsp, "TOT");
	Wld_SpawnNpcRange (self, Wisp_Detector, 1, 500);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", Wisp_Detector, Wisp_Detector, 0, 0, 0, false);
	Snd_Play("MFX_Transform_Cast");
};
func void UnEquip_WispDetector()
{
	var C_Npc detWsp; detWsp = Hlp_GetNpc(Wisp_Detector);
	if (!Npc_IsDead(detWsp))
	{
		Snd_Play("WSP_Dead_A1");
	};
	AI_Teleport (detWsp, "TOT");
	B_RemoveNpc (detWsp);
	AI_Teleport (detWsp, "TOT");
};

///******************************************************************************************
instance ItAm_InnosAura (ItemPR_Amulet)
{
	name						=	"Œwiêta Aura Innosa";
	flags						=	ITEM_AMULET | ITEM_MISSION;
	visual						=	"ItAm_Gold_01.3ds";
	
	protection[PROT_EDGE]		=	20;
	protection[PROT_BLUNT]		=	20;
	protection[PROT_POINT]		=	20;
	protection[PROT_FIRE]		=	20;
	protection[PROT_MAGIC]		=	20;
	protection[PROT_BARRIER]	=	20;
	
	on_equip					=	Equip_ItAm_InnosAura;
	
	description					=	name;
	TEXT[2]						=	"Ten amulet chroni swego posiadacza";
	TEXT[3]						=	"przed wszelkimi obra¿eniami.";
};
func void Equip_ItAm_InnosAura()
{
	Wld_PlayEffect ("spellFX_INCOVATION_WHITE", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
	AI_PlayAni (self, "T_MAGRUN_2_HEASHOOT");
	AI_StandUp (self);
	Snd_Play("MFX_FIRERAIN_INVEST");
};

///******************************************************************************************
const string TEXT_InnosEye_Setting_Broken		=	"Oprawa amuletu jest pêkniêta.";
const string TEXT_InnosEye_Setting_Repaired		=	"Oprawa amuletu jest ca³a.";
var	string TEXT_Innoseye_Setting;

instance ItAm_InnosEye (ItemPR_Amulet)
{
	name						=	"Oko Innosa";
	flags						=	ITEM_AMULET | ITEM_MISSION;
	visual						=	"ItMi_InnosEye_MIS.3ds";
	
	on_equip					=	Equip_InnosEye;
	
	description					=	name;
	TEXT[0]						=	"Pulsuje energi¹";
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
};
func void Equip_InnosEye()
{
	Wld_PlayEffect ("spellFX_Innoseye", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_RED", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
	AI_PlayAni (self, "T_MAGRUN_2_HEASHOOT");
	AI_StandUp (self);
	Snd_Play("SFX_INNOSEYE");
};

///******************************************************************************************
instance ItAm_Prot_Obsession (ItemPR_Amulet)
{
	name						=	"Amulet przyzywania dusz";
	flags						=	ITEM_AMULET | ITEM_MISSION;
	visual						=	"ItAm_LifeSteal_01.3ds";
	
	description					=	name;
	TEXT[3]						=	"Ochrona przed Czarnym Spojrzeniem";
};
