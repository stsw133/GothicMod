///******************************************************************************************
prototype ItemPR_Amulet (C_Item)
{
	name						=	"Amulet";
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_AMULET;
	
	value						=	1000;
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
	name						=	"Orkowy amulet";
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_AMULET;
	
	value						=	50;
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
	itm.visual					=	"ItAm_Prot_Blunt_01.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap;
	
	itm.TEXT[1]					=	NAME_Prot_Blunt;
	itm.COUNT[1]				=	itm.protection[PROT_BLUNT];
};

///******************************************************************************************
instance ItAm_Prot_Blunt_01 (ItemPR_Amulet)
{
	description					=	"Amulet ochrony przed obuchem";
	SetItAmAttributes_ProtBlunt (self, 10);
};

instance ItAm_Prot_Blunt_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ochrony przed obuchem";
	SetItAmAttributes_ProtBlunt (self, 20);
};

///******************************************************************************************
/// Edge protection
///******************************************************************************************
func void SetItAmAttributes_ProtEdge (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Prot_Edge_01.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	
	itm.TEXT[1]					=	NAME_Prot_Edge;
	itm.COUNT[1]				=	itm.protection[PROT_EDGE];
};

///******************************************************************************************
instance ItAm_Prot_Edge_01 (ItemPR_Amulet)
{
	description					=	"Amulet ochrony przed ostrzami";
	SetItAmAttributes_ProtEdge (self, 10);
};

instance ItAm_Prot_Edge_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ochrony przed ostrzami";
	SetItAmAttributes_ProtEdge (self, 20);
};

///******************************************************************************************
/// Point protection
///******************************************************************************************
func void SetItAmAttributes_ProtPoint (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Prot_Point_01.3ds";
	
	itm.protection[PROT_POINT]	=	kap;
	
	itm.TEXT[1]					=	NAME_Prot_Point;
	itm.COUNT[1]				=	itm.protection[PROT_POINT];
};

///******************************************************************************************
instance ItAm_Prot_Point_01 (ItemPR_Amulet)
{
	description					=	"Amulet ochrony przed pociskami";
	SetItAmAttributes_ProtPoint (self, 10);
};

instance ItAm_Prot_Point_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ochrony przed pociskami";
	SetItAmAttributes_ProtPoint (self, 20);
};

///******************************************************************************************
/// Fire protection
///******************************************************************************************
func void SetItAmAttributes_ProtFire (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Prot_Fire_01.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	
	itm.TEXT[1]					=	NAME_Prot_Fire;
	itm.COUNT[1]				=	itm.protection[PROT_FIRE];
};

///******************************************************************************************
instance ItAm_Prot_Fire_01 (ItemPR_Amulet)
{
	description					=	"Amulet ochrony przed ogniem";
	SetItAmAttributes_ProtFire (self, 10);
};

instance ItAm_Prot_Fire_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ochrony przed ogniem";
	SetItAmAttributes_ProtFire (self, 20);
};

///******************************************************************************************
/// Magic protection
///******************************************************************************************
func void SetItAmAttributes_ProtMagic (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Prot_Mage_01.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.TEXT[1]					=	NAME_Prot_Magic;
	itm.COUNT[1]				=	itm.protection[PROT_MAGIC];
};

///******************************************************************************************
instance ItAm_Prot_Magic_01 (ItemPR_Amulet)
{
	description					=	"Amulet ochrony przed magi¹";
	SetItAmAttributes_ProtMagic (self, 10);
};

instance ItAm_Prot_Magic_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ochrony przed magi¹";
	SetItAmAttributes_ProtMagic (self, 20);
};

///******************************************************************************************
/// Total protection
///******************************************************************************************
func void SetItAmAttributes_ProtTotal (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Prot_Total_01.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
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
};

///******************************************************************************************
instance ItAm_Prot_Total_01 (ItemPR_Amulet)
{
	description					=	"Amulet ochrony ca³kowitej";
	SetItAmAttributes_ProtTotal (self, 6);
};

instance ItAm_Prot_Total_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ochrony ca³kowitej";
	SetItAmAttributes_ProtTotal (self, 12);
};

///******************************************************************************************
/// Hitpoints
///******************************************************************************************
func void SetItAmAttributes_Hp (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Hp_01.3ds";
	
	itm.change_atr[0]			=	ATR_HITPOINTS_MAX;
	itm.change_value[0]			=	kap*HP_PER_LP;
	
	itm.TEXT[1]					=	NAME_Bonus_HpMax;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Hp_01 (ItemPR_Amulet)
{
	description					=	"Amulet ¿ycia";
	SetItAmAttributes_Hp (self, 10);
};

instance ItAm_Hp_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ¿ycia";
	SetItAmAttributes_Hp (self, 20);
};

///******************************************************************************************
/// Mana
///******************************************************************************************
func void SetItAmAttributes_Mp (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Mp_01.3ds";
	
	itm.change_atr[0]			=	ATR_MANA_MAX;
	itm.change_value[0]			=	kap*MP_PER_LP;
	
	itm.TEXT[1]					=	NAME_Bonus_MpMax;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Mp_01 (ItemPR_Amulet)
{
	description					=	"Amulet many";
	SetItAmAttributes_Mp (self, 10);
};

instance ItAm_Mp_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet many";
	SetItAmAttributes_Mp (self, 20);
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
func void SetItAmAttributes_Sp (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Sp_01.3ds";
	
	itm.TEXT[1]					=	NAME_Bonus_SpMax;
	itm.COUNT[1]				=	kap*SP_PER_LP;
};

///******************************************************************************************
instance ItAm_Sp_01 (ItemPR_Amulet)
{
	description					=	"Amulet energii";
	on_equip					=	Equip_ItAm_Sp_01;
	on_unequip					=	UnEquip_ItAm_Sp_01;
	SetItAmAttributes_Sp (self, 10);
};
func void Equip_ItAm_Sp_01()			{ self.aivar[AIV_Stamina_MAX] += 10*SP_PER_LP; };
func void UnEquip_ItAm_Sp_01()			{ self.aivar[AIV_Stamina_MAX] -= 10*SP_PER_LP; };

instance ItAm_Sp_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet energii";
	on_equip					=	Equip_ItAm_Sp_02;
	on_unequip					=	UnEquip_ItAm_Sp_02;
	SetItAmAttributes_Sp (self, 20);
};
func void Equip_ItAm_Sp_02()			{ self.aivar[AIV_Stamina_MAX] += 20*SP_PER_LP; };
func void UnEquip_ItAm_Sp_02()			{ self.aivar[AIV_Stamina_MAX] -= 20*SP_PER_LP; };

///******************************************************************************************
/// Strength
///******************************************************************************************
func void SetItAmAttributes_Str (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Str_01.3ds";
	
	itm.change_atr[0]			=	ATR_STRENGTH;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_Str;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Str_01 (ItemPR_Amulet)
{
	description					=	"Amulet si³y";
	SetItAmAttributes_Str (self, 10);
};

instance ItAm_Str_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet si³y";
	SetItAmAttributes_Str (self, 20);
};

///******************************************************************************************
/// Dexterity
///******************************************************************************************
func void SetItAmAttributes_Dex (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Dex_01.3ds";
	
	itm.change_atr[0]			=	ATR_DEXTERITY;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_Dex;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Dex_01 (ItemPR_Amulet)
{
	description					=	"Amulet zrêcznoœci";
	SetItAmAttributes_Dex (self, 10);
};

instance ItAm_Dex_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet zrêcznoœci";
	SetItAmAttributes_Dex (self, 20);
};

///******************************************************************************************
/// Power
///******************************************************************************************
func void SetItAmAttributes_Pow (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Pow_01.3ds";
	
	itm.change_atr[0]			=	ATR_POWER;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_Pow;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Pow_01 (ItemPR_Amulet)
{
	description					=	"Amulet mocy";
	SetItAmAttributes_Pow (self, 10);
};

instance ItAm_Pow_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet mocy";
	SetItAmAttributes_Pow (self, 20);
};

///******************************************************************************************
/// Enlightment
///******************************************************************************************
func void SetItAmAttributes_Enlightment (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_HpMana_01.3ds";
	
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
};

///******************************************************************************************
instance ItAm_Enlightment_01 (ItemPR_Amulet)
{
	description					=	"Amulet oœwiecenia";
	on_equip					=	Equip_ItAm_Enlightment_01;
	on_unequip					=	UnEquip_ItAm_Enlightment_01;
	SetItAmAttributes_Enlightment (self, 6);
};
func void Equip_ItAm_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 6*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 6*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 6);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 6);
	Npc_ChangeAttribute(self, ATR_POWER, 6);
};
func void UnEquip_ItAm_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -6*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -6*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -6);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -6);
	Npc_ChangeAttribute(self, ATR_POWER, -6);
};

instance ItAm_Enlightment_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet oœwiecenia";
	on_equip					=	Equip_ItAm_Enlightment_02;
	on_unequip					=	UnEquip_ItAm_Enlightment_02;
	SetItAmAttributes_Enlightment (self, 12);
};
func void Equip_ItAm_Enlightment_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 12*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 12*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 12);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 12);
	Npc_ChangeAttribute(self, ATR_POWER, 12);
};
func void UnEquip_ItAm_Enlightment_02()
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
	itm.visual					=	"ItAm_Throw_01.3ds";
	
	itm.change_atr[0]			=	ATR_THROW;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_Throw;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Throw_01 (ItemPR_Amulet)
{
	description					=	"Amulet miotacza";
	SetItAmAttributes_Throw (self, 10);
};

instance ItAm_Throw_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet miotacza";
	SetItAmAttributes_Throw (self, 20);
};

///******************************************************************************************
/// 1h
///******************************************************************************************
func void SetItAmAttributes_1h (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_1h_01.3ds";
	
	itm.change_atr[0]			=	ATR_1H;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_1h;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_1h_01 (ItemPR_Amulet)
{
	description					=	"Amulet szermierza";
	SetItAmAttributes_1h (self, 10);
};

instance ItAm_1h_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet szermierza";
	SetItAmAttributes_1h (self, 20);
};

///******************************************************************************************
/// 2h
///******************************************************************************************
func void SetItAmAttributes_2h (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_2h_01.3ds";
	
	itm.change_atr[0]			=	ATR_2H;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_2h;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_2h_01 (ItemPR_Amulet)
{
	description					=	"Amulet wojownika";
	SetItAmAttributes_2h (self, 10);
};

instance ItAm_2h_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet wojownika";
	SetItAmAttributes_2h (self, 20);
};

///******************************************************************************************
/// Bow
///******************************************************************************************
func void SetItAmAttributes_Bow (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Bow_01.3ds";
	
	itm.change_atr[0]			=	ATR_BOW;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_Bow;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Bow_01 (ItemPR_Amulet)
{
	description					=	"Amulet ³ucznika";
	SetItAmAttributes_Bow (self, 10);
};

instance ItAm_Bow_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet ³ucznika";
	SetItAmAttributes_Bow (self, 20);
};

///******************************************************************************************
/// Crossbow
///******************************************************************************************
func void SetItAmAttributes_Cbow (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Cbow_01.3ds";
	
	itm.change_atr[0]			=	ATR_CBOW;
	itm.change_value[0]			=	kap;
	
	itm.TEXT[1]					=	NAME_Bonus_Cbow;
	itm.COUNT[1]				=	itm.change_value[0];
};

///******************************************************************************************
instance ItAm_Cbow_01 (ItemPR_Amulet)
{
	description					=	"Amulet kusznika";
	SetItAmAttributes_Cbow (self, 10);
};

instance ItAm_Cbow_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet kusznika";
	SetItAmAttributes_Cbow (self, 20);
};

///******************************************************************************************
/// Master
///******************************************************************************************
func void SetItAmAttributes_Master (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Master_01.3ds";
	
	itm.TEXT[0]					=	NAME_Bonus_Throw;
	itm.COUNT[0]				=	kap;
	itm.TEXT[1]					=	NAME_Bonus_1h;
	itm.COUNT[1]				=	kap;
	itm.TEXT[2]					=	NAME_Bonus_2h;
	itm.COUNT[2]				=	kap;
	itm.TEXT[3]					=	NAME_Bonus_Bow;
	itm.COUNT[3]				=	kap;
	itm.TEXT[4]					=	NAME_Bonus_CBow;
	itm.COUNT[4]				=	kap;
};

///******************************************************************************************
instance ItAm_Master_01 (ItemPR_Amulet)
{
	description					=	"Amulet mistrza broni";
	on_equip					=	Equip_ItAm_Master_01;
	on_unequip					=	UnEquip_ItAm_Master_01;
	SetItAmAttributes_Master (self, 6);
};
func void Equip_ItAm_Master_01()
{
	self.hitchance[NPC_TALENT_THROW] += 6;
	self.hitchance[NPC_TALENT_1H] += 6;
	self.hitchance[NPC_TALENT_2H] += 6;
	self.hitchance[NPC_TALENT_BOW] += 6;
	self.hitchance[NPC_TALENT_CROSSBOW] += 6;
};
func void UnEquip_ItAm_Master_01()
{
	self.hitchance[NPC_TALENT_THROW] -= 6;
	self.hitchance[NPC_TALENT_1H] -= 6;
	self.hitchance[NPC_TALENT_2H] -= 6;
	self.hitchance[NPC_TALENT_BOW] -= 6;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 6;
};

instance ItAm_Master_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet mistrza broni";
	on_equip					=	Equip_ItAm_Master_02;
	on_unequip					=	UnEquip_ItAm_Master_02;
	SetItAmAttributes_Master (self, 12);
};
func void Equip_ItAm_Master_02()
{
	self.hitchance[NPC_TALENT_THROW] += 12;
	self.hitchance[NPC_TALENT_1H] += 12;
	self.hitchance[NPC_TALENT_2H] += 12;
	self.hitchance[NPC_TALENT_BOW] += 12;
	self.hitchance[NPC_TALENT_CROSSBOW] += 12;
};
func void UnEquip_ItAm_Master_02()
{
	self.hitchance[NPC_TALENT_THROW] -= 12;
	self.hitchance[NPC_TALENT_1H] -= 12;
	self.hitchance[NPC_TALENT_2H] -= 12;
	self.hitchance[NPC_TALENT_BOW] -= 12;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 12;
};

///******************************************************************************************
/// Crit damage
///******************************************************************************************
func void SetItAmAttributes_CritDmg (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Crit_01.3ds";
	
	itm.TEXT[1]					=	NAME_Bonus_CritDmg;
	itm.COUNT[1]				=	kap;
};

///******************************************************************************************
instance ItAm_CritDmg_01 (ItemPR_Amulet)
{
	description					=	"Amulet obra¿eñ krytycznych";
	on_equip					=	Equip_ItAm_CritDmg_01;
	on_unequip					=	UnEquip_ItAm_CritDmg_01;
	SetItAmAttributes_CritDmg (self, 12);
};
func void Equip_ItAm_CritDmg_01()		{ self.aivar[AIV_CritDamage] += 12; };
func void UnEquip_ItAm_CritDmg_01()		{ self.aivar[AIV_CritDamage] -= 12; };

instance ItAm_CritDmg_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet obra¿eñ krytycznych";
	on_equip					=	Equip_ItAm_CritDmg_02;
	on_unequip					=	UnEquip_ItAm_CritDmg_02;
	SetItAmAttributes_CritDmg (self, 24);
};
func void Equip_ItAm_CritDmg_02()		{ self.aivar[AIV_CritDamage] += 24; };
func void UnEquip_ItAm_CritDmg_02()		{ self.aivar[AIV_CritDamage] -= 24; };

///******************************************************************************************
/// Life steal
///******************************************************************************************
func void SetItAmAttributes_Ls (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_Ls_01.3ds";
	
	itm.TEXT[1]					=	NAME_Bonus_Ls;
	itm.COUNT[1]				=	kap;
};

///******************************************************************************************
instance ItAm_Ls_01 (ItemPR_Amulet)
{
	description					=	"Amulet kradzie¿y ¿ycia";
	on_equip					=	Equip_ItAm_Ls_01;
	on_unequip					=	UnEquip_ItAm_Ls_01;
	SetItAmAttributes_Ls (self, 2);
};
func void Equip_ItAm_Ls_01()			{ self.aivar[AIV_LifeSteal] += 2; };
func void UnEquip_ItAm_Ls_01()			{ self.aivar[AIV_LifeSteal] -= 2; };

instance ItAm_Ls_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet kradzie¿y ¿ycia";
	on_equip					=	Equip_ItAm_Ls_02;
	on_unequip					=	UnEquip_ItAm_Ls_02;
	SetItAmAttributes_Ls (self, 4);
};
func void Equip_ItAm_Ls_02()			{ self.aivar[AIV_LifeSteal] += 4; };
func void UnEquip_ItAm_Ls_02()			{ self.aivar[AIV_LifeSteal] -= 4; };

///******************************************************************************************
/// Minimal damage
///******************************************************************************************
func void SetItAmAttributes_MinDmg (var C_Item itm, var int kap)
{
	itm.visual					=	"ItAm_MinDmg_01.3ds";
	
	itm.TEXT[1]					=	NAME_Bonus_MinDmg;
	itm.COUNT[1]				=	kap;
};

///******************************************************************************************
instance ItAm_MinDmg_01 (ItemPR_Amulet)
{
	description					=	"Amulet równowagi";
	on_equip					=	Equip_ItAm_MinDmg_01;
	on_unequip					=	UnEquip_ItAm_MinDmg_01;
	SetItAmAttributes_MinDmg (self, 8);
};
func void Equip_ItAm_MinDmg_01()		{ self.aivar[AIV_MinDamage] += 8; };
func void UnEquip_ItAm_MinDmg_01()		{ self.aivar[AIV_MinDamage] -= 8; };

instance ItAm_MinDmg_02 (ItemPR_Amulet)
{
	description					=	"Ulepsz. amulet równowagi";
	on_equip					=	Equip_ItAm_MinDmg_02;
	on_unequip					=	UnEquip_ItAm_MinDmg_02;
	SetItAmAttributes_MinDmg (self, 16);
};
func void Equip_ItAm_MinDmg_02()		{ self.aivar[AIV_MinDamage] += 16; };
func void UnEquip_ItAm_MinDmg_02()		{ self.aivar[AIV_MinDamage] -= 16; };

///******************************************************************************************
/// Orc
///******************************************************************************************
instance ItAm_Orc_01 (ItemPR_AmuletOrc)
{
	visual						=	"ItMi_Amulet_Ulumulu_01.3ds";
	
	change_atr[0]				=	ATR_HITPOINTS_MAX;
	change_value[0]				=	10*HP_PER_LP;
	change_atr[1]				=	ATR_THROW;
	change_value[1]				=	10;
	
	protection[PROT_MAGIC]		=	10;
	protection[PROT_BARRIER]	=	10;
	
	description					=	"Ulu-Teru";
	TEXT[1]						=	NAME_Prot_Magic;
	COUNT[1]					=	protection[PROT_MAGIC];
	TEXT[2]						=	NAME_Bonus_HpMax;
	COUNT[2]					=	change_value[0];
	TEXT[3]						=	NAME_Bonus_Throw;
	COUNT[3]					=	change_value[1];
};

instance ItAm_Orc_02 (ItemPR_AmuletOrc)
{
	visual						=	"ItMi_Amulet_Ulumulu_01.3ds";
	
	change_atr[0]				=	ATR_STRENGTH;
	change_value[0]				=	10;
	change_atr[1]				=	ATR_1H;
	change_value[1]				=	10;
	
	protection[PROT_BLUNT]		=	10;
	
	description					=	"Ulu-Atu";
	TEXT[1]						=	NAME_Prot_Blunt;
	COUNT[1]					=	protection[PROT_BLUNT];
	TEXT[2]						=	NAME_Bonus_Str;
	COUNT[2]					=	change_value[0];
	TEXT[3]						=	NAME_Bonus_1h;
	COUNT[3]					=	change_value[1];
};

instance ItAm_Orc_03 (ItemPR_AmuletOrc)
{
	visual						=	"ItMi_Amulet_Ulumulu_01.3ds";
	
	change_atr[0]				=	ATR_DEXTERITY;
	change_value[0]				=	10;
	change_atr[1]				=	ATR_2H;
	change_value[1]				=	10;
	
	protection[PROT_POINT]		=	10;
	
	description					=	"Ulu-Pazu";
	TEXT[1]						=	NAME_Prot_Point;
	COUNT[1]					=	protection[PROT_POINT];
	TEXT[2]						=	NAME_Bonus_Dex;
	COUNT[2]					=	change_value[0];
	TEXT[3]						=	NAME_Bonus_2h;
	COUNT[3]					=	change_value[1];
};

instance ItAm_Orc_04 (ItemPR_AmuletOrc)
{
	visual						=	"ItMi_Amulet_Ulumulu_01.3ds";
	
	change_atr[0]				=	ATR_POWER;
	change_value[0]				=	10;
	change_atr[1]				=	ATR_BOW;
	change_value[1]				=	10;
	
	protection[PROT_FIRE]		=	10;
	
	description					=	"Ulu-Shoru";
	TEXT[1]						=	NAME_Prot_Fire;
	COUNT[1]					=	protection[PROT_FIRE];
	TEXT[2]						=	NAME_Bonus_Pow;
	COUNT[2]					=	change_value[0];
	TEXT[3]						=	NAME_Bonus_Bow;
	COUNT[3]					=	change_value[1];
};

instance ItAm_Orc_05 (ItemPR_AmuletOrc)
{
	visual						=	"ItMi_Amulet_Ulumulu_01.3ds";
	
	change_atr[0]				=	ATR_MANA_MAX;
	change_value[0]				=	10;
	change_atr[1]				=	ATR_CBOW;
	change_value[1]				=	10;
	
	protection[PROT_EDGE]		=	10;
	
	description					=	"Ulu-Doru";
	TEXT[1]						=	NAME_Prot_Edge;
	COUNT[1]					=	protection[PROT_EDGE];
	TEXT[2]						=	NAME_Bonus_MpMax;
	COUNT[2]					=	change_value[0];
	TEXT[3]						=	NAME_Bonus_Cbow;
	COUNT[3]					=	change_value[1];
};

///******************************************************************************************
/// Special
///******************************************************************************************
var int Equip_WispDetector_OneTime;

instance ItAm_Addon_WispDetector (ItemPR_Amulet)
{
	name						=	"Amulet ognika";
	flags						=	ITEM_AMULET | ITEM_MISSION;
//	visual						=	"ItAm_Mana_01.3ds";
	visual						=	"ItAm_Death_01.3ds";
	
	on_equip					=	Equip_WispDetector;
	on_unequip					=	UnEquip_WispDetector;
	
	description					=	name;
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
};
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
//	visual						=	"ItAm_Prot_Fire_01.3ds";
	visual						=	"ItAm_Life_01.3ds";
	
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
//	visual						=	"ItAm_Hp_Mana_01.3ds";
	visual						=	"ItAm_Death_01.3ds";
	
	description					=	name;
	TEXT[3]						=	"Ochrona przed Czarnym Spojrzeniem";
};
