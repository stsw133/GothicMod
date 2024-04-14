///******************************************************************************************
prototype ItemPR_Ring (C_Item)
{
	name 					=	"Pierœcieñ";
	
	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;
	material 				=	MAT_METAL;
	
	on_equip				=	Npc_AttributesRefresh;
	on_unequip				=	Npc_AttributesRefresh;
	
	wear					= 	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTX				=	INVCAM_X_RING_STANDARD;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
};
///******************************************************************************************
/// ProtPhysical
///******************************************************************************************
func void SetItRiAttributes_ProtPhysical (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Prot_Edge_01.3ds";
	
	itm.protection[PROT_EDGE]	=	kap;
	itm.protection[PROT_BLUNT]	=	kap;
	itm.protection[PROT_POINT]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Physical;
	itm.COUNT[1]			=	itm.protection[PROT_EDGE];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_ProtPhysical_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony fizycznej";
	SetItRiAttributes_ProtPhysical (self, 3);
};
instance ItRi_ProtPhysical_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony fizycznej";
	SetItRiAttributes_ProtPhysical (self, 5);
};
instance ItRi_ProtPhysical_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony fizycznej";
	SetItRiAttributes_ProtPhysical (self, 10);
};

///******************************************************************************************
/// ProtMagical
///******************************************************************************************
func void SetItRiAttributes_ProtMagical (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Prot_Mage_01.3ds";
	
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.TEXT[1]				=	NAME_Prot_Magical;
	itm.COUNT[1]			=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_ProtMagical_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony magicznej";
	SetItRiAttributes_ProtMagical (self, 3);
};
instance ItRi_ProtMagical_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ochrony magicznej";
	SetItRiAttributes_ProtMagical (self, 5);
};
instance ItRi_ProtMagical_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ochrony magicznej";
	SetItRiAttributes_ProtMagical (self, 10);
};

///******************************************************************************************
/// Hitpoints
///******************************************************************************************
func void SetItRiAttributes_HP (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual				=	"ItRi_Hp_01.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_HP_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ¿ycia";
	SetItRiAttributes_Hp (self, 3);
};
instance ItRi_HP_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ ¿ycia";
	SetItRiAttributes_Hp (self, 5);
};
instance ItRi_HP_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ ¿ycia";
	SetItRiAttributes_Hp (self, 10);
};

///******************************************************************************************
/// Mana
///******************************************************************************************
func void SetItRiAttributes_MP (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Mana_01.3ds";
	
	itm.change_atr[0]		=	ATR_MANA_MAX;
	itm.change_value[0]		=	kap*MP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_MP_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ many";
	SetItRiAttributes_MP (self, 3);
};
instance ItRi_MP_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ many";
	SetItRiAttributes_MP (self, 5);
};
instance ItRi_MP_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ many";
	SetItRiAttributes_MP (self, 10);
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
func void SetItRiAttributes_SP (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Hp_Mana_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_SpMax;
	itm.COUNT[1]			=	kap*SP_PER_LP;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_SP_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ energii";
	SetItRiAttributes_SP (self, 3);
	
	on_equip				=	Equip_ItRi_SP_01;
	on_unequip				=	UnEquip_ItRi_SP_01;
};
func void Equip_ItRi_SP_01()			{ self.aivar[AIV_Stamina_MAX] += 3*SP_PER_LP; };
func void UnEquip_ItRi_SP_01()			{ self.aivar[AIV_Stamina_MAX] -= 3*SP_PER_LP; };

instance ItRi_SP_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ energii";
	SetItRiAttributes_SP (self, 5);
	
	on_equip				=	Equip_ItRi_SP_02;
	on_unequip				=	UnEquip_ItRi_SP_02;
};
func void Equip_ItRi_SP_02()			{ self.aivar[AIV_Stamina_MAX] += 5*SP_PER_LP; };
func void UnEquip_ItRi_SP_02()			{ self.aivar[AIV_Stamina_MAX] -= 5*SP_PER_LP; };

instance ItRi_SP_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ energii";
	SetItRiAttributes_SP (self, 10);
	
	on_equip				=	Equip_ItRi_SP_03;
	on_unequip				=	UnEquip_ItRi_SP_03;
};
func void Equip_ItRi_SP_03()			{ self.aivar[AIV_Stamina_MAX] += 10*SP_PER_LP; };
func void UnEquip_ItRi_SP_03()			{ self.aivar[AIV_Stamina_MAX] -= 10*SP_PER_LP; };

///******************************************************************************************
/// Strength
///******************************************************************************************
func void SetItRiAttributes_STR (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Str_01.3ds";
	
	itm.change_atr[0]		=	ATR_STRENGTH;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_STR;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_STR_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ si³y";
	SetItRiAttributes_Str (self, 3);
};
instance ItRi_STR_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ si³y";
	SetItRiAttributes_Str (self, 5);
};
instance ItRi_STR_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ si³y";
	SetItRiAttributes_Str (self, 10);
};

///******************************************************************************************
/// Dexterity
///******************************************************************************************
func void SetItRiAttributes_DEX (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Dex_01.3ds";
	
	itm.change_atr[0]		=	ATR_DEXTERITY;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_DEX;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_DEX_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ zrêcznoœci";
	SetItRiAttributes_DEX (self, 3);
};
instance ItRi_DEX_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ zrêcznoœci";
	SetItRiAttributes_DEX (self, 5);
};
instance ItRi_DEX_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ zrêcznoœci";
	SetItRiAttributes_DEX (self, 10);
};

///******************************************************************************************
/// Power
///******************************************************************************************
func void SetItRiAttributes_POW (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Dex_Strg_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_POW;
	itm.COUNT[1]			=	kap;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_POW_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ mocy";
	SetItRiAttributes_POW (self, 3);
	
	on_equip				=	Equip_ItRi_POW_01;
	on_unequip				=	UnEquip_ItRi_POW_01;
};
func void Equip_ItRi_POW_01()		{ Npc_AddPowerPoints(self, 3); };
func void UnEquip_ItRi_POW_01()		{ Npc_AddPowerPoints(self, -3); };

instance ItRi_POW_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ mocy";
	SetItRiAttributes_POW (self, 5);
	
	on_equip				=	Equip_ItRi_POW_02;
	on_unequip				=	UnEquip_ItRi_POW_02;
};
func void Equip_ItRi_POW_02()		{ Npc_AddPowerPoints(self, 5); };
func void UnEquip_ItRi_POW_02()		{ Npc_AddPowerPoints(self, -5); };

instance ItRi_POW_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ mocy";
	SetItRiAttributes_POW (self, 10);
	
	on_equip				=	Equip_ItRi_POW_03;
	on_unequip				=	UnEquip_ItRi_POW_03;
};
func void Equip_ItRi_POW_03()		{ Npc_AddPowerPoints(self, 10); };
func void UnEquip_ItRi_POW_03()		{ Npc_AddPowerPoints(self, -10); };

///******************************************************************************************
/// LifeSteal
///******************************************************************************************
func void SetItRiAttributes_LS (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItRi_Prot_Point_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_LS;
	itm.COUNT[1]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_LS_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ kradzie¿y ¿ycia";
	SetItRiAttributes_LS (self, 3);
	
	on_equip				=	Equip_ItRi_LS_01;
	on_unequip				=	UnEquip_ItRi_LS_01;
};
func void Equip_ItRi_LS_01()	{ self.aivar[AIV_LifeSteal] += 2; };
func void UnEquip_ItRi_LS_01()	{ self.aivar[AIV_LifeSteal] -= 2; };

instance ItRi_LS_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ kradzie¿y ¿ycia";
	SetItRiAttributes_LS (self, 5);
	
	on_equip				=	Equip_ItRi_LS_02;
	on_unequip				=	UnEquip_ItRi_LS_02;
};
func void Equip_ItRi_LS_02()	{ self.aivar[AIV_LifeSteal] += 3; };
func void UnEquip_ItRi_LS_02()	{ self.aivar[AIV_LifeSteal] -= 3; };

instance ItRi_LS_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ kradzie¿y ¿ycia";
	SetItRiAttributes_LS (self, 10);
	
	on_equip				=	Equip_ItRi_LS_03;
	on_unequip				=	UnEquip_ItRi_LS_03;
};
func void Equip_ItRi_LS_03()	{ self.aivar[AIV_LifeSteal] += 5; };
func void UnEquip_ItRi_LS_03()	{ self.aivar[AIV_LifeSteal] -= 5; };

///******************************************************************************************
/// DmgReflection
///******************************************************************************************
func void SetItRiAttributes_DR (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual				=	"ItRi_Prot_Fire_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_DR;
	itm.COUNT[1]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_DR_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ odbicia obra¿eñ";
	SetItRiAttributes_DR (self, 3);
	
	on_equip				=	Equip_ItRi_DR_01;
	on_unequip				=	UnEquip_ItRi_DR_01;
};
func void Equip_ItRi_DR_01()	{ self.aivar[AIV_DmgReflection] += 2; };
func void UnEquip_ItRi_DR_01()	{ self.aivar[AIV_DmgReflection] -= 2; };

instance ItRi_DR_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ odbicia obra¿eñ";
	SetItRiAttributes_DR (self, 5);
	
	on_equip				=	Equip_ItRi_DR_02;
	on_unequip				=	UnEquip_ItRi_DR_02;
};
func void Equip_ItRi_DR_02()	{ self.aivar[AIV_DmgReflection] += 3; };
func void UnEquip_ItRi_DR_02()	{ self.aivar[AIV_DmgReflection] -= 3; };

instance ItRi_DR_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ odbicia obra¿eñ";
	SetItRiAttributes_DR (self, 10);
	
	on_equip				=	Equip_ItRi_DR_03;
	on_unequip				=	UnEquip_ItRi_DR_03;
};
func void Equip_ItRi_DR_03()	{ self.aivar[AIV_DmgReflection] += 5; };
func void UnEquip_ItRi_DR_03()	{ self.aivar[AIV_DmgReflection] -= 5; };

///******************************************************************************************
/// AreaDmg
///******************************************************************************************
func void SetItRiAttributes_AD (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual				=	"ItRi_Prot_Total_01.3ds";
	
	itm.TEXT[1]				=	NAME_Bonus_AD;
	itm.COUNT[1]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItRi_AD_01 (ItemPR_Ring)
{
	description				=	"Pierœcieñ obra¿eñ obszarowych";
	SetItRiAttributes_AD (self, 3);
	
	on_equip				=	Equip_ItRi_AD_01;
	on_unequip				=	UnEquip_ItRi_AD_01;
};
func void Equip_ItRi_AD_01()	{ self.aivar[AIV_AreaDmg] += 2; };
func void UnEquip_ItRi_AD_01()	{ self.aivar[AIV_AreaDmg] -= 2; };

instance ItRi_AD_02 (ItemPR_Ring)
{
	description				=	"Pierœcieñ obra¿eñ obszarowych";
	SetItRiAttributes_AD (self, 5);
	
	on_equip				=	Equip_ItRi_AD_02;
	on_unequip				=	UnEquip_ItRi_AD_02;
};
func void Equip_ItRi_AD_02()	{ self.aivar[AIV_AreaDmg] += 3; };
func void UnEquip_ItRi_AD_02()	{ self.aivar[AIV_AreaDmg] -= 3; };

instance ItRi_AD_03 (ItemPR_Ring)
{
	description				=	"Ulepsz. pierœcieñ przebicia ochrony";
	SetItRiAttributes_AD (self, 10);
	
	on_equip				=	Equip_ItRi_AD_03;
	on_unequip				=	UnEquip_ItRi_AD_03;
};
func void Equip_ItRi_AD_03()	{ self.aivar[AIV_AreaDmg] += 5; };
func void UnEquip_ItRi_AD_03()	{ self.aivar[AIV_AreaDmg] -= 5; };
