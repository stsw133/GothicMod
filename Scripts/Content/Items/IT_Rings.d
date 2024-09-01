///******************************************************************************************
prototype ItemPR_Ring (C_Item)
{
	name					=	"Pierœcieñ";
	mainflag				=	ITEM_KAT_MAGIC;
	flags					=	ITEM_RING;
	
	value					=	600;
	material				=	MAT_METAL;
	
	on_equip				=	Npc_AttributesRefresh;
	on_unequip				=	Npc_AttributesRefresh;
	
	wear					=	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]					=	NAME_Value;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC2_STANDARD;
	INV_ROTX				=	INVCAM_X_RING_STANDARD;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
};

///******************************************************************************************
/// Blunt protection
///******************************************************************************************
func void SetItRiAttributes_ProtBlunt (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Blunt_01.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Blunt;
	itm.COUNT[1]			=	itm.protection[PROT_BLUNT];
};
///******************************************************************************************
instance ItRi_Prot_Blunt_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony przed obuchem";
	SetItRiAttributes_ProtBlunt (self, 5);
};
instance ItRi_Prot_Blunt_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony przed obuchem";
	SetItRiAttributes_ProtBlunt (self, 10);
};

///******************************************************************************************
/// Edge protection
///******************************************************************************************
func void SetItRiAttributes_ProtEdge (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Edge_01.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Edge;
	itm.COUNT[1]			=	itm.protection[PROT_EDGE];
};
///******************************************************************************************
instance ItRi_Prot_Edge_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony przed ostrzami";
	SetItRiAttributes_ProtEdge (self, 5);
};
instance ItRi_Prot_Edge_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony przed ostrzami";
	SetItRiAttributes_ProtEdge (self, 10);
};

///******************************************************************************************
/// Point protection
///******************************************************************************************
func void SetItRiAttributes_ProtPoint (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Point_01.3ds";
	
	itm.protection[PROT_POINT]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Point;
	itm.COUNT[1]			=	itm.protection[PROT_POINT];
};
///******************************************************************************************
instance ItRi_Prot_Point_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony przed pociskami";
	SetItRiAttributes_ProtPoint (self, 5);
};
instance ItRi_Prot_Point_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony przed pociskami";
	SetItRiAttributes_ProtPoint (self, 10);
};

///******************************************************************************************
/// Fire protection
///******************************************************************************************
func void SetItRiAttributes_ProtFire (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Fire_01.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Fire;
	itm.COUNT[1]			=	itm.protection[PROT_FIRE];
};
///******************************************************************************************
instance ItRi_Prot_Fire_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony przed ogniem";
	SetItRiAttributes_ProtFire (self, 5);
};
instance ItRi_Prot_Fire_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony przed ogniem";
	SetItRiAttributes_ProtFire (self, 10);
};

///******************************************************************************************
/// Magic protection
///******************************************************************************************
func void SetItRiAttributes_ProtMagic (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Mage_01.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Magic;
	itm.COUNT[1]			=	itm.protection[PROT_MAGIC];
};
///******************************************************************************************
instance ItRi_Prot_Magic_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony przed magi¹";
	SetItRiAttributes_ProtMagic (self, 5);
};
instance ItRi_Prot_Magic_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony przed magi¹";
	SetItRiAttributes_ProtMagic (self, 10);
};

///******************************************************************************************
/// Total protection
///******************************************************************************************
func void SetItRiAttributes_ProtTotal (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Total_01.3ds";
	
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.TEXT[0]				=	NAME_Prot_Blunt;
	itm.COUNT[0]			=	itm.protection[PROT_BLUNT];
	itm.TEXT[1]				=	NAME_Prot_Edge;
	itm.COUNT[1]			=	itm.protection[PROT_EDGE];
	itm.TEXT[2]				=	NAME_Prot_Point;
	itm.COUNT[2]			=	itm.protection[PROT_POINT];
	itm.TEXT[3]				=	NAME_Prot_Fire;
	itm.COUNT[3]			=	itm.protection[PROT_FIRE];
	itm.TEXT[4]				=	NAME_Prot_Magic;
	itm.COUNT[4]			=	itm.protection[PROT_MAGIC];
};
///******************************************************************************************
instance ItRi_Prot_Total_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony ca³kowitej";
	SetItRiAttributes_ProtTotal (self, 3);
};
instance ItRi_Prot_Total_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony ca³kowitej";
	SetItRiAttributes_ProtTotal (self, 6);
};

///******************************************************************************************
/// Persistence
///******************************************************************************************
func void SetItRiAttributes_Persistence (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Blunt_02.3ds";
	
	itm.protection[PROT_BLUNT]	=	kap;
	itm.protection[PROT_POINT]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Blunt;
	itm.COUNT[1]			=	itm.protection[PROT_BLUNT];
	itm.TEXT[2]				=	NAME_Prot_Point;
	itm.COUNT[2]			=	itm.protection[PROT_POINT];
};
///******************************************************************************************
instance ItRi_Persistence_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ wytrwa³oœci";
	SetItRiAttributes_Persistence (self, 4);
};
instance ItRi_Persistence_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ wytrwa³oœci";
	SetItRiAttributes_Persistence (self, 8);
};

///******************************************************************************************
/// Tenacity
///******************************************************************************************
func void SetItRiAttributes_Tenacity (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Edge_02.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Edge;
	itm.COUNT[1]			=	itm.protection[PROT_EDGE];
	itm.TEXT[2]				=	NAME_Prot_Fire;
	itm.COUNT[2]			=	itm.protection[PROT_FIRE];
};
///******************************************************************************************
instance ItRi_Tenacity_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ nieustêpliwoœci";
	SetItRiAttributes_Tenacity (self, 4);
};
instance ItRi_Tenacity_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ nieustêpliwoœci";
	SetItRiAttributes_Tenacity (self, 8);
};

///******************************************************************************************
/// Harmony
///******************************************************************************************
func void SetItRiAttributes_Harmony (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Point_02.3ds";
	
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Point;
	itm.COUNT[1]			=	itm.protection[PROT_POINT];
	itm.TEXT[2]				=	NAME_Prot_Magic;
	itm.COUNT[2]			=	itm.protection[PROT_MAGIC];
};
///******************************************************************************************
instance ItRi_Harmony_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ harmonii";
	SetItRiAttributes_Harmony (self, 4);
};
instance ItRi_Harmony_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ harmonii";
	SetItRiAttributes_Harmony (self, 8);
};

///******************************************************************************************
/// Custody
///******************************************************************************************
func void SetItRiAttributes_Custody (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Fire_02.3ds";
	
	itm.protection[PROT_FIRE]	=	kap;
	itm.protection[PROT_BLUNT]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Fire;
	itm.COUNT[1]			=	itm.protection[PROT_FIRE];
	itm.TEXT[2]				=	NAME_Prot_Blunt;
	itm.COUNT[2]			=	itm.protection[PROT_BLUNT];
};
///******************************************************************************************
instance ItRi_Custody_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ nadzoru";
	SetItRiAttributes_Custody (self, 4);
};
instance ItRi_Custody_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ nadzoru";
	SetItRiAttributes_Custody (self, 8);
};

///******************************************************************************************
/// Wisdom
///******************************************************************************************
func void SetItRiAttributes_Wisdom (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Mage_02.3ds";
	
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	itm.protection[PROT_EDGE]		=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Magic;
	itm.COUNT[1]			=	itm.protection[PROT_MAGIC];
	itm.TEXT[2]				=	NAME_Prot_Edge;
	itm.COUNT[2]			=	itm.protection[PROT_EDGE];
};
///******************************************************************************************
instance ItRi_Wisdom_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ m¹droœci";
	SetItRiAttributes_Wisdom (self, 4);
};
instance ItRi_Wisdom_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ m¹droœci";
	SetItRiAttributes_Wisdom (self, 8);
};

///******************************************************************************************
/// Eternity
///******************************************************************************************
func void SetItRiAttributes_Eternity (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Prot_Total_02.3ds";
	
	itm.TEXT[1]				=	NAME_Percent_Protection;
	itm.COUNT[2]			=	kap;
};
///******************************************************************************************
instance ItRi_Eternity_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ wiecznoœci";
	SetItRiAttributes_Eternity (self, 5);
	
	on_equip				=	Equip_ItRi_Eternity_01;
	on_unequip				=	UnEquip_ItRi_Eternity_01;
};
func void Equip_ItRi_Eternity_01()		{ if (Npc_IsPlayer(self)) { mDamageReduction += 5; }; };
func void UnEquip_ItRi_Eternity_01()	{ if (Npc_IsPlayer(self)) { mDamageReduction -= 5; }; };

instance ItRi_Eternity_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ wiecznoœci";
	SetItRiAttributes_Eternity (self, 10);
	
	on_equip				=	Equip_ItRi_Eternity_02;
	on_unequip				=	UnEquip_ItRi_Eternity_02;
};
func void Equip_ItRi_Eternity_02()		{ if (Npc_IsPlayer(self)) { mDamageReduction += 10; }; };
func void UnEquip_ItRi_Eternity_02()	{ if (Npc_IsPlayer(self)) { mDamageReduction -= 10; }; };

///******************************************************************************************
/// Hitpoints
///******************************************************************************************
func void SetItRiAttributes_Hp (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Hp_01.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Hp_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ¿ycia";
	SetItRiAttributes_Hp (self, 5);
};
instance ItRi_Hp_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ¿ycia";
	SetItRiAttributes_Hp (self, 10);
};

///******************************************************************************************
/// Mana
///******************************************************************************************
func void SetItRiAttributes_Mp (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Mp_01.3ds";
	
	itm.change_atr[0]		=	ATR_MANA_MAX;
	itm.change_value[0]		=	kap*MP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Mp_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ many";
	SetItRiAttributes_Mp (self, 5);
};
instance ItRi_Mp_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ many";
	SetItRiAttributes_Mp (self, 10);
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
func void SetItRiAttributes_Sp (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Sp_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_SpMax;
	itm.COUNT[1]			=	kap*SP_PER_LP;
};
///******************************************************************************************
instance ItRi_Sp_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ energii";
	SetItRiAttributes_Sp (self, 5);
	
	on_equip				=	Equip_ItRi_Sp_01;
	on_unequip				=	UnEquip_ItRi_Sp_01;
};
func void Equip_ItRi_Sp_01()			{ self.aivar[AIV_Stamina_MAX] += 5*SP_PER_LP; };
func void UnEquip_ItRi_Sp_01()			{ self.aivar[AIV_Stamina_MAX] -= 5*SP_PER_LP; };

instance ItRi_Sp_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ energii";
	SetItRiAttributes_Sp (self, 10);
	
	on_equip				=	Equip_ItRi_Sp_02;
	on_unequip				=	UnEquip_ItRi_Sp_02;
};
func void Equip_ItRi_Sp_02()			{ self.aivar[AIV_Stamina_MAX] += 10*SP_PER_LP; };
func void UnEquip_ItRi_Sp_02()			{ self.aivar[AIV_Stamina_MAX] -= 10*SP_PER_LP; };

///******************************************************************************************
/// Strength
///******************************************************************************************
func void SetItRiAttributes_Str (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Str_01.3ds";
	
	itm.change_atr[0]		=	ATR_STRENGTH;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Str;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Str_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ si³y";
	SetItRiAttributes_Str (self, 5);
};
instance ItRi_Str_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ si³y";
	SetItRiAttributes_Str (self, 10);
};

///******************************************************************************************
/// Dexterity
///******************************************************************************************
func void SetItRiAttributes_Dex (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Dex_01.3ds";
	
	itm.change_atr[0]		=	ATR_DEXTERITY;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Dex;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Dex_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ zrêcznoœci";
	SetItRiAttributes_Dex (self, 5);
};
instance ItRi_Dex_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ zrêcznoœci";
	SetItRiAttributes_Dex (self, 10);
};

///******************************************************************************************
/// Power
///******************************************************************************************
func void SetItRiAttributes_Pow (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Pow_01.3ds";
	
	itm.change_atr[0]		=	ATR_POWER;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Pow;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Pow_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ mocy";
	SetItRiAttributes_Pow (self, 5);
};
instance ItRi_Pow_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ mocy";
	SetItRiAttributes_Pow (self, 10);
};

///******************************************************************************************
/// Enlightment
///******************************************************************************************
func void SetItRiAttributes_Enlightment (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_HpMana_01.3ds";
	
	itm.TEXT[0]				=	NAME_Bonus_HpMax;
	itm.COUNT[0]			=	kap*HP_PER_LP;
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	kap*MP_PER_LP;
	itm.TEXT[2]				=	NAME_Bonus_Str;
	itm.COUNT[2]			=	kap;
	itm.TEXT[3]				=	NAME_Bonus_Dex;
	itm.COUNT[3]			=	kap;
	itm.TEXT[4]				=	NAME_Bonus_Pow;
	itm.COUNT[4]			=	kap;
};
///******************************************************************************************
instance ItRi_Enlightment_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ oœwiecenia";
	SetItRiAttributes_Enlightment (self, 3);
	
	on_equip				=	Equip_ItRi_Enlightment_01;
	on_unequip				=	UnEquip_ItRi_Enlightment_01;
};
func void Equip_ItRi_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 3*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 3*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 3);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 3);
	Npc_ChangeAttribute(self, ATR_POWER, 3);
};
func void UnEquip_ItRi_Enlightment_01()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -3*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, -3*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, -3);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -3);
	Npc_ChangeAttribute(self, ATR_POWER, -3);
};

instance ItRi_Enlightment_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ oœwiecenia";
	SetItRiAttributes_Enlightment (self, 6);
	
	on_equip				=	Equip_ItRi_Enlightment_02;
	on_unequip				=	UnEquip_ItRi_Enlightment_02;
};
func void Equip_ItRi_Enlightment_02()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, 6*HP_PER_LP);
	Npc_ChangeAttribute(self, ATR_MANA_MAX, 6*MP_PER_LP);
	Npc_ChangeAttribute(self, ATR_STRENGTH, 6);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 6);
	Npc_ChangeAttribute(self, ATR_POWER, 6);
};
func void UnEquip_ItRi_Enlightment_02()
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
	itm.visual				=	"ItRi_Hp_02.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	itm.change_atr[1]		=	ATR_DEXTERITY;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Dex;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Roy_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ gwardzisty";
	SetItRiAttributes_Roy (self, 4);
};
instance ItRi_Roy_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ gwardzisty";
	SetItRiAttributes_Roy (self, 8);
};

///******************************************************************************************
/// Paladin
///******************************************************************************************
func void SetItRiAttributes_Pal (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Mp_02.3ds";
	
	itm.change_atr[0]		=	ATR_MANA_MAX;
	itm.change_value[0]		=	kap*MP_PER_LP;
	itm.change_atr[1]		=	ATR_STRENGTH;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Str;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Pal_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ paladyna";
	SetItRiAttributes_Pal (self, 4);
};
instance ItRi_Pal_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ paladyna";
	SetItRiAttributes_Pal (self, 8);
};

///******************************************************************************************
/// Dragon hunter
///******************************************************************************************
func void SetItRiAttributes_Djg (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Str_02.3ds";
	
	itm.change_atr[0]		=	ATR_STRENGTH;
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	ATR_HITPOINTS_MAX;
	itm.change_value[1]		=	kap*HP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_Str;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_HpMax;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Djg_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ³owcy smoków";
	SetItRiAttributes_Djg (self, 4);
};
instance ItRi_Djg_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ³owcy smoków";
	SetItRiAttributes_Djg (self, 8);
};

///******************************************************************************************
/// Assassin
///******************************************************************************************
func void SetItRiAttributes_Asa (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Dex_02.3ds";
	
	itm.change_atr[0]		=	ATR_DEXTERITY;
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	ATR_POWER;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Dex;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Pow;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Asa_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ zabójcy";
	SetItRiAttributes_Asa (self, 4);
};
instance ItRi_Asa_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ zabójcy";
	SetItRiAttributes_Asa (self, 8);
};

///******************************************************************************************
/// Mage
///******************************************************************************************
func void SetItRiAttributes_Mag (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Pow_02.3ds";
	
	itm.change_atr[0]		=	ATR_POWER;
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	ATR_MANA_MAX;
	itm.change_value[1]		=	kap*MP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_Pow;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_MpMax;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Mag_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ maga";
	SetItRiAttributes_Mag (self, 4);
};
instance ItRi_Mag_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ maga";
	SetItRiAttributes_Mag (self, 8);
};

///******************************************************************************************
/// Throw
///******************************************************************************************
func void SetItRiAttributes_Throw (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Throw_01.3ds";
	
	itm.change_atr[0]		=	8;	/// NPC_TALENT_THROW
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Throw;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Throw_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ miotacza";
	SetItRiAttributes_Throw (self, 5);
};
instance ItRi_Throw_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ miotacza";
	SetItRiAttributes_Throw (self, 10);
};

///******************************************************************************************
/// 1h
///******************************************************************************************
func void SetItRiAttributes_1h (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_1h_01.3ds";
	
	itm.change_atr[0]		=	9;	/// NPC_TALENT_1H
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_1h;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_1h_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ szermierza";
	SetItRiAttributes_1h (self, 5);
};
instance ItRi_1h_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ szermierza";
	SetItRiAttributes_1h (self, 10);
};

///******************************************************************************************
/// 2h
///******************************************************************************************
func void SetItRiAttributes_2h (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_2h_01.3ds";
	
	itm.change_atr[0]		=	10;	/// NPC_TALENT_2H
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_2h;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_2h_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ wojownika";
	SetItRiAttributes_2h (self, 5);
};
instance ItRi_2h_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ wojownika";
	SetItRiAttributes_2h (self, 10);
};

///******************************************************************************************
/// Bow
///******************************************************************************************
func void SetItRiAttributes_Bow (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Bow_01.3ds";
	
	itm.change_atr[0]		=	11;	/// NPC_TALENT_BOW
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Bow;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Bow_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ³ucznika";
	SetItRiAttributes_Bow (self, 5);
};
instance ItRi_Bow_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ³ucznika";
	SetItRiAttributes_Bow (self, 10);
};

///******************************************************************************************
/// Crossbow
///******************************************************************************************
func void SetItRiAttributes_Cbow (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Cbow_01.3ds";
	
	itm.change_atr[0]		=	12;	/// NPC_TALENT_CROSSBOW
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Cbow;
	itm.COUNT[1]			=	itm.change_value[0];
};
///******************************************************************************************
instance ItRi_Cbow_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ kusznika";
	SetItRiAttributes_Cbow (self, 5);
};
instance ItRi_Cbow_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ kusznika";
	SetItRiAttributes_Cbow (self, 10);
};

///******************************************************************************************
/// Master
///******************************************************************************************
func void SetItRiAttributes_Master (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Master_01.3ds";
	
	itm.TEXT[0]				=	NAME_Bonus_Throw;
	itm.COUNT[0]			=	kap;
	itm.TEXT[1]				=	NAME_Bonus_1h;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	NAME_Bonus_2h;
	itm.COUNT[2]			=	kap;
	itm.TEXT[3]				=	NAME_Bonus_Bow;
	itm.COUNT[3]			=	kap;
	itm.TEXT[4]				=	NAME_Bonus_CBow;
	itm.COUNT[4]			=	kap;
};
///******************************************************************************************
instance ItRi_Master_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ mistrza broni";
	SetItRiAttributes_Master (self, 3);
	
	on_equip				=	Equip_ItRi_Master_01;
	on_unequip				=	UnEquip_ItRi_Master_01;
};
func void Equip_ItRi_Master_01()
{
	self.hitchance[NPC_TALENT_THROW] += 3;
	self.hitchance[NPC_TALENT_1H] += 3;
	self.hitchance[NPC_TALENT_2H] += 3;
	self.hitchance[NPC_TALENT_BOW] += 3;
	self.hitchance[NPC_TALENT_CROSSBOW] += 3;
};
func void UnEquip_ItRi_Master_01()
{
	self.hitchance[NPC_TALENT_THROW] -= 3;
	self.hitchance[NPC_TALENT_1H] -= 3;
	self.hitchance[NPC_TALENT_2H] -= 3;
	self.hitchance[NPC_TALENT_BOW] -= 3;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 3;
};

instance ItRi_Master_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ mistrza broni";
	SetItRiAttributes_Master (self, 6);
	
	on_equip				=	Equip_ItRi_Master_02;
	on_unequip				=	UnEquip_ItRi_Master_02;
};
func void Equip_ItRi_Master_02()
{
	self.hitchance[NPC_TALENT_THROW] += 6;
	self.hitchance[NPC_TALENT_1H] += 6;
	self.hitchance[NPC_TALENT_2H] += 6;
	self.hitchance[NPC_TALENT_BOW] += 6;
	self.hitchance[NPC_TALENT_CROSSBOW] += 6;
};
func void UnEquip_ItRi_Master_02()
{
	self.hitchance[NPC_TALENT_THROW] -= 6;
	self.hitchance[NPC_TALENT_1H] -= 6;
	self.hitchance[NPC_TALENT_2H] -= 6;
	self.hitchance[NPC_TALENT_BOW] -= 6;
	self.hitchance[NPC_TALENT_CROSSBOW] -= 6;
};

///******************************************************************************************
/// Innovation
///******************************************************************************************
func void SetItRiAttributes_Innovation (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Throw_02.3ds";
	
	itm.change_atr[0]		=	8;	/// NPC_TALENT_THROW
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	9;	/// NPC_TALENT_1H
	itm.change_value[1]		=	kap;
	itm.change_atr[2]		=	10;	/// NPC_TALENT_2H
	itm.change_value[2]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_Throw;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_1h;
	itm.COUNT[2]			=	itm.change_value[1];
	itm.TEXT[3]				=	NAME_Bonus_2h;
	itm.COUNT[3]			=	itm.change_value[2];
};
///******************************************************************************************
instance ItRi_Innovation_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ innowacji";
	SetItRiAttributes_Innovation (self, 4);
};
instance ItRi_Innovation_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ innowacji";
	SetItRiAttributes_Innovation (self, 8);
};

///******************************************************************************************
/// Precision
///******************************************************************************************
func void SetItRiAttributes_Precision (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_1h_02.3ds";
	
	itm.change_atr[0]		=	9;	/// NPC_TALENT_1H
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	11;	/// NPC_TALENT_BOW
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_1h;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Bow;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Precision_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ precyzji";
	SetItRiAttributes_Precision (self, 4);
};
instance ItRi_Precision_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ precyzji";
	SetItRiAttributes_Precision (self, 8);
};

///******************************************************************************************
/// Domination
///******************************************************************************************
func void SetItRiAttributes_Domination (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_2h_02.3ds";
	
	itm.change_atr[0]		=	10;	/// NPC_TALENT_2H
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	12;	/// NPC_TALENT_CROSSBOW
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_2h;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Cbow;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Domination_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ dominacji";
	SetItRiAttributes_Domination (self, 4);
};
instance ItRi_Domination_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ dominacji";
	SetItRiAttributes_Domination (self, 8);
};

///******************************************************************************************
/// Motivation
///******************************************************************************************
func void SetItRiAttributes_Motivation (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Bow_02.3ds";
	
	itm.change_atr[0]		=	10;	/// NPC_TALENT_2H
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	11;	/// NPC_TALENT_BOW
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_2h;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Bow;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Motivation_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ determinacji";
	SetItRiAttributes_Motivation (self, 4);
};
instance ItRi_Motivation_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ determinacji";
	SetItRiAttributes_Motivation (self, 8);
};

///******************************************************************************************
/// Liberation
///******************************************************************************************
func void SetItRiAttributes_Liberation (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Cbow_02.3ds";
	
	itm.change_atr[0]		=	9;	/// NPC_TALENT_1H
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	12;	/// NPC_TALENT_CROSSBOW
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_1h;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_Cbow;
	itm.COUNT[2]			=	itm.change_value[1];
};
///******************************************************************************************
instance ItRi_Liberation_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ oswobodzenia";
	SetItRiAttributes_Liberation (self, 4);
};
instance ItRi_Liberation_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ oswobodzenia";
	SetItRiAttributes_Liberation (self, 8);
};

///******************************************************************************************
/// Destruction
///******************************************************************************************
func void SetItRiAttributes_Destruction (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Master_02.3ds";
	
	itm.TEXT[1]				=	NAME_Percent_Damage;
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_Destruction_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ destrukcji";
	SetItRiAttributes_Destruction (self, 5);
	
	on_equip				=	Equip_ItRi_Destruction_01;
	on_unequip				=	UnEquip_ItRi_Destruction_01;
};
func void Equip_ItRi_Destruction_01()	{ if (Npc_IsPlayer(self)) { mDamageIncrease += 5; }; };
func void UnEquip_ItRi_Destruction_01()	{ if (Npc_IsPlayer(self)) { mDamageIncrease -= 5; }; };

instance ItRi_Destruction_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ destrukcji";
	SetItRiAttributes_Destruction (self, 10);
	
	on_equip				=	Equip_ItRi_Destruction_02;
	on_unequip				=	UnEquip_ItRi_Destruction_02;
};
func void Equip_ItRi_Destruction_02()	{ if (Npc_IsPlayer(self)) { mDamageIncrease += 10; }; };
func void UnEquip_ItRi_Destruction_02()	{ if (Npc_IsPlayer(self)) { mDamageIncrease -= 10; }; };

///******************************************************************************************
/// Crit damage
///******************************************************************************************
func void SetItRiAttributes_CritDmg (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Crit_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_CritDmg;
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_CritDmg_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ obra¿eñ krytycznych";
	SetItRiAttributes_CritDmg (self, 6);
	
	on_equip				=	Equip_ItRi_CritDmg_01;
	on_unequip				=	UnEquip_ItRi_CritDmg_01;
};
func void Equip_ItRi_CritDmg_01()		{ self.aivar[AIV_CritDamage] += 6; };
func void UnEquip_ItRi_CritDmg_01()		{ self.aivar[AIV_CritDamage] -= 6; };

instance ItRi_CritDmg_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ obra¿eñ krytycznych";
	SetItRiAttributes_CritDmg (self, 12);
	
	on_equip				=	Equip_ItRi_CritDmg_02;
	on_unequip				=	UnEquip_ItRi_CritDmg_02;
};
func void Equip_ItRi_CritDmg_02()		{ self.aivar[AIV_CritDamage] += 12; };
func void UnEquip_ItRi_CritDmg_02()		{ self.aivar[AIV_CritDamage] -= 12; };

///******************************************************************************************
/// Area damage
///******************************************************************************************
func void SetItRiAttributes_AreaDmg (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Crit_02.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_AreaDmg;
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_AreaDmg_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ obra¿eñ obszarowych";
	SetItRiAttributes_AreaDmg (self, 6);
	
	on_equip				=	Equip_ItRi_AreaDmg_01;
	on_unequip				=	UnEquip_ItRi_AreaDmg_01;
};
func void Equip_ItRi_AreaDmg_01()		{ self.aivar[AIV_AreaDamage] += 6; };
func void UnEquip_ItRi_AreaDmg_01()		{ self.aivar[AIV_AreaDamage] -= 6; };

instance ItRi_AreaDmg_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ obra¿eñ obszarowych";
	SetItRiAttributes_AreaDmg (self, 12);
	
	on_equip				=	Equip_ItRi_AreaDmg_02;
	on_unequip				=	UnEquip_ItRi_AreaDmg_02;
};
func void Equip_ItRi_AreaDmg_02()		{ self.aivar[AIV_CritDamage] += 12; };
func void UnEquip_ItRi_AreaDmg_02()		{ self.aivar[AIV_CritDamage] -= 12; };

///******************************************************************************************
/// Life steal
///******************************************************************************************
func void SetItRiAttributes_Ls (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Ls_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_Ls;
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_Ls_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ kradzie¿y ¿ycia";
	SetItRiAttributes_Ls (self, 1);
	
	on_equip				=	Equip_ItRi_Ls_01;
	on_unequip				=	UnEquip_ItRi_Ls_01;
};
func void Equip_ItRi_Ls_01()			{ self.aivar[AIV_LifeSteal] += 1; };
func void UnEquip_ItRi_Ls_01()			{ self.aivar[AIV_LifeSteal] -= 1; };

instance ItRi_Ls_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ kradzie¿y ¿ycia";
	SetItRiAttributes_Ls (self, 2);
	
	on_equip				=	Equip_ItRi_Ls_02;
	on_unequip				=	UnEquip_ItRi_Ls_02;
};
func void Equip_ItRi_Ls_02()			{ self.aivar[AIV_LifeSteal] += 2; };
func void UnEquip_ItRi_Ls_02()			{ self.aivar[AIV_LifeSteal] -= 2; };

///******************************************************************************************
/// Minimal damage
///******************************************************************************************
func void SetItRiAttributes_MinDmg (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_MinDmg_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_MinDmg;
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_MinDmg_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ równowagi";
	SetItRiAttributes_MinDmg (self, 4);
	
	on_equip				=	Equip_ItRi_MinDmg_01;
	on_unequip				=	UnEquip_ItRi_MinDmg_01;
};
func void Equip_ItRi_MinDmg_01()		{ self.aivar[AIV_MinDamage] += 4; };
func void UnEquip_ItRi_MinDmg_01()		{ self.aivar[AIV_MinDamage] -= 4; };

instance ItRi_MinDmg_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ równowagi";
	SetItRiAttributes_MinDmg (self, 8);
	
	on_equip				=	Equip_ItRi_MinDmg_02;
	on_unequip				=	UnEquip_ItRi_MinDmg_02;
};
func void Equip_ItRi_MinDmg_02()		{ self.aivar[AIV_MinDamage] += 8; };
func void UnEquip_ItRi_MinDmg_02()		{ self.aivar[AIV_MinDamage] -= 8; };
/*
///******************************************************************************************
/// Life
///******************************************************************************************
func void SetItRiAttributes_Life (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Life_01.3ds";
	
	itm.TEXT[1]				=	"Otrzymanie obra¿eñ regeneruje";
	itm.TEXT[2]				=	"zdrowie pobliskich sojuszników o:";
	itm.COUNT[2]			=	kap;
};
///******************************************************************************************
instance ItRi_Life_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ poœwiêcenia";
	SetItRiAttributes_Life (self, 3);
	
	on_equip				=	Equip_ItRi_Life_01;
	on_unequip				=	UnEquip_ItRi_Life_01;
};
func void Equip_ItRi_Life_01()			{ if (Npc_IsPlayer(self)) { mHeroToAlliesRegen += 3; }; };
func void UnEquip_ItRi_Life_01()		{ if (Npc_IsPlayer(self)) { mHeroToAlliesRegen -= 3; }; };

instance ItRi_Life_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ poœwiêcenia";
	SetItRiAttributes_Life (self, 6);
	
	on_equip				=	Equip_ItRi_Life_02;
	on_unequip				=	UnEquip_ItRi_Life_02;
};
func void Equip_ItRi_Life_02()			{ if (Npc_IsPlayer(self)) { mHeroToAlliesRegen += 6; }; };
func void UnEquip_ItRi_Life_02()		{ if (Npc_IsPlayer(self)) { mHeroToAlliesRegen -= 6; }; };

///******************************************************************************************
/// Druid
///******************************************************************************************
func void SetItRiAttributes_Druid (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Life_02.3ds";
	
	itm.TEXT[1]				=	"Zwiêksza efektywnoœæ przemian o:";
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_Druid_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ druida";
	SetItRiAttributes_Druid (self, 10);
	
	on_equip				=	Equip_ItRi_Druid_01;
	on_unequip				=	UnEquip_ItRi_Druid_01;
};
func void Equip_ItRi_Druid_01()			{ if (Npc_IsPlayer(self)) { mTransformerPower += 10; }; };
func void UnEquip_ItRi_Druid_01()		{ if (Npc_IsPlayer(self)) { mTransformerPower -= 10; }; };

instance ItRi_Druid_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ druida";
	SetItRiAttributes_Druid (self, 20);
	
	on_equip				=	Equip_ItRi_Druid_02;
	on_unequip				=	UnEquip_ItRi_Druid_02;
};
func void Equip_ItRi_Druid_02()			{ if (Npc_IsPlayer(self)) { mTransformerPower += 20; }; };
func void UnEquip_ItRi_Druid_02()		{ if (Npc_IsPlayer(self)) { mTransformerPower -= 20; }; };

///******************************************************************************************
/// Death
///******************************************************************************************
func void SetItRiAttributes_Death (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Death_01.3ds";
	
	itm.TEXT[1]				=	"Otrzymanie obra¿eñ przez sojusznika";
	itm.TEXT[2]				=	"regeneruje twoje zdrowie o:";
	itm.COUNT[2]			=	kap;
};
///******************************************************************************************
instance ItRi_Death_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ cierpienia";
	SetItRiAttributes_Death (self, 1);
	
	on_equip				=	Equip_ItRi_Death_01;
	on_unequip				=	UnEquip_ItRi_Death_01;
};
func void Equip_ItRi_Death_01()			{ if (Npc_IsPlayer(self)) { mAlliesToHeroRegen += 1; }; };
func void UnEquip_ItRi_Death_01()		{ if (Npc_IsPlayer(self)) { mAlliesToHeroRegen -= 1; }; };

instance ItRi_Death_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ cierpienia";
	SetItRiAttributes_Death (self, 2);
	
	on_equip				=	Equip_ItRi_Death_02;
	on_unequip				=	UnEquip_ItRi_Death_02;
};
func void Equip_ItRi_Death_02()			{ if (Npc_IsPlayer(self)) { mAlliesToHeroRegen += 2; }; };
func void UnEquip_ItRi_Death_02()		{ if (Npc_IsPlayer(self)) { mAlliesToHeroRegen -= 2; }; };

///******************************************************************************************
/// Necromancer
///******************************************************************************************
func void SetItRiAttributes_Necro (var C_Item itm, var int kap)
{
	itm.visual				=	"ItRi_Death_02.3ds";
	
	itm.TEXT[1]				=	"Zwiêksza efektywnoœæ przywo³añ o:";
	itm.COUNT[1]			=	kap;
};
///******************************************************************************************
instance ItRi_Necro_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ nekromanty";
	SetItRiAttributes_Necro (self, 5);
	
	on_equip				=	Equip_ItRi_Necro_01;
	on_unequip				=	UnEquip_ItRi_Necro_01;
};
func void Equip_ItRi_Necro_01()			{ if (Npc_IsPlayer(self)) { mSummonerPower += 5; }; };
func void UnEquip_ItRi_Necro_01()		{ if (Npc_IsPlayer(self)) { mSummonerPower -= 5; }; };

instance ItRi_Necro_02 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ nekromanty";
	SetItRiAttributes_Necro (self, 10);
	
	on_equip				=	Equip_ItRi_Necro_02;
	on_unequip				=	UnEquip_ItRi_Necro_02;
};
func void Equip_ItRi_Necro_02()			{ if (Npc_IsPlayer(self)) { mSummonerPower += 10; }; };
func void UnEquip_ItRi_Necro_02()		{ if (Npc_IsPlayer(self)) { mSummonerPower -= 10; }; };
*/
