///******************************************************************************************
prototype ItemPR_Ring (C_Item)
{
	name 					=	"Pier�cie�";
	
	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;
	material 				=	MAT_METAL;
	
	on_equip				=	Npc_AttributesRefresh;
	on_unequip				=	Npc_AttributesRefresh;
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
	INV_ROTX				=	INVCAM_X_RING_STANDARD;
};
///******************************************************************************************
func void SetItRiAttributes_Armor (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.protection[PROT_EDGE]	=	kap*2;
	itm.protection[PROT_BLUNT]	=	kap*2;
	itm.protection[PROT_POINT]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Prot_Physical;
	itm.COUNT[1]		=	itm.protection[PROT_EDGE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Armor_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_01.3ds";
	description		=	"Pier�cie� pancerza I";
	SetItRiAttributes_Armor (self, 2);
};
instance ItRi_Armor_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_02.3ds";
	description		=	"Pier�cie� pancerza II";
	SetItRiAttributes_Armor (self, 2);
};
instance ItRi_Armor_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_01.3ds";
	description		=	"Pier�cie� pancerza III";
	SetItRiAttributes_Armor (self, 3);
};
instance ItRi_Armor_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_02.3ds";
	description		=	"Pier�cie� pancerza IV";
	SetItRiAttributes_Armor (self, 4);
};
instance ItRi_Armor_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_01.3ds";
	description		=	"Pier�cie� pancerza V";
	SetItRiAttributes_Armor (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Resist (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.protection[PROT_FIRE]	=	kap*2;
	itm.protection[PROT_MAGIC]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Prot_Magic;
	itm.COUNT[1]		=	itm.protection[PROT_MAGIC];
	itm.TEXT[2]			=	NAME_Prot_Fire;
	itm.COUNT[2]		=	itm.protection[PROT_FIRE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Resist_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_01.3ds";
	description		=	"Pier�cie� odporno�ci I";
	SetItRiAttributes_Resist (self, 1);
};
instance ItRi_Resist_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_02.3ds";
	description		=	"Pier�cie� odporno�ci II";
	SetItRiAttributes_Resist (self, 2);
};
instance ItRi_Resist_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_01.3ds";
	description		=	"Pier�cie� odporno�ci III";
	SetItRiAttributes_Resist (self, 3);
};
instance ItRi_Resist_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_02.3ds";
	description		=	"Pier�cie� odporno�ci IV";
	SetItRiAttributes_Resist (self, 4);
};
instance ItRi_Resist_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_01.3ds";
	description		=	"Pier�cie� odporno�ci V";
	SetItRiAttributes_Resist (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_ProtTotal (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.protection[PROT_EDGE]	=	kap*1;
	itm.protection[PROT_BLUNT]	=	kap*1;
	itm.protection[PROT_POINT]	=	kap*1;
	itm.protection[PROT_FIRE]	=	kap*1;
	itm.protection[PROT_MAGIC]	=	kap*1;
	
	itm.TEXT[1]			=	NAME_Prot_Magic;
	itm.COUNT[1]		=	itm.protection[PROT_MAGIC];
	itm.TEXT[2]			=	NAME_Prot_Fire;
	itm.COUNT[2]		=	itm.protection[PROT_FIRE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_ProtTotal_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Total_01.3ds";
	description		=	"Pier�cie� nietykalno�ci I";
	SetItRiAttributes_ProtTotal (self, 1);
};
instance ItRi_ProtTotal_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Total_02.3ds";
	description		=	"Pier�cie� nietykalno�ci II";
	SetItRiAttributes_ProtTotal (self, 2);
};
instance ItRi_ProtTotal_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Total_01.3ds";
	description		=	"Pier�cie� nietykalno�ci III";
	SetItRiAttributes_ProtTotal (self, 3);
};
instance ItRi_ProtTotal_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Total_02.3ds";
	description		=	"Pier�cie� nietykalno�ci IV";
	SetItRiAttributes_ProtTotal (self, 4);
};
instance ItRi_ProtTotal_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Total_01.3ds";
	description		=	"Pier�cie� nietykalno�ci V";
	SetItRiAttributes_ProtTotal (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Str (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_STRENGTH;
	itm.change_value[2]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Bonus_Str;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Str_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_01.3ds";
	description		=	"Pier�cie� si�y I";
	SetItRiAttributes_Str (self, 1);
};
instance ItRi_Str_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_02.3ds";
	description		=	"Pier�cie� si�y II";
	SetItRiAttributes_Str (self, 2);
};
instance ItRi_Str_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_01.3ds";
	description		=	"Pier�cie� si�y III";
	SetItRiAttributes_Str (self, 3);
};
instance ItRi_Str_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_02.3ds";
	description		=	"Pier�cie� si�y IV";
	SetItRiAttributes_Str (self, 4);
};
instance ItRi_Str_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_01.3ds";
	description		=	"Pier�cie� si�y V";
	SetItRiAttributes_Str (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Dex (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_DEXTERITY;
	itm.change_value[2]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Bonus_Dex;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Dex_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_01.3ds";
	description		=	"Pier�cie� zr�czno�ci I";
	SetItRiAttributes_Dex (self, 1);
};
instance ItRi_Dex_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_02.3ds";
	description		=	"Pier�cie� zr�czno�ci II";
	SetItRiAttributes_Dex (self, 2);
};
instance ItRi_Dex_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_01.3ds";
	description		=	"Pier�cie� zr�czno�ci III";
	SetItRiAttributes_Dex (self, 3);
};
instance ItRi_Dex_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_02.3ds";
	description		=	"Pier�cie� zr�czno�ci IV";
	SetItRiAttributes_Dex (self, 4);
};
instance ItRi_Dex_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_01.3ds";
	description		=	"Pier�cie� zr�czno�ci V";
	SetItRiAttributes_Dex (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Power (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	
	itm.TEXT[1]			=	NAME_Bonus_Power;
	itm.COUNT[1]		=	kap*2;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Power_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pier�cie� mocy I";
	SetItRiAttributes_Power (self, 1);
	on_equip		=	Equip_ItRi_Power_01;
	on_unequip		=	UnEquip_ItRi_Power_01;
};
func void Equip_ItRi_Power_01()		{ Npc_AddPowerPoints(self, 2); };
func void UnEquip_ItRi_Power_01()	{ Npc_AddPowerPoints(self, -2); };

instance ItRi_Power_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pier�cie� mocy II";
	SetItRiAttributes_Power (self, 2);
	on_equip		=	Equip_ItRi_Power_02;
	on_unequip		=	UnEquip_ItRi_Power_02;
};
func void Equip_ItRi_Power_02()		{ Npc_AddPowerPoints(self, 4); };
func void UnEquip_ItRi_Power_02()	{ Npc_AddPowerPoints(self, -4); };

instance ItRi_Power_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pier�cie� mocy III";
	SetItRiAttributes_Power (self, 3);
	on_equip		=	Equip_ItRi_Power_03;
	on_unequip		=	UnEquip_ItRi_Power_03;
};
func void Equip_ItRi_Power_03()		{ Npc_AddPowerPoints(self, 6); };
func void UnEquip_ItRi_Power_03()	{ Npc_AddPowerPoints(self, -6); };

instance ItRi_Power_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pier�cie� mocy IV";
	SetItRiAttributes_Power (self, 4);
	on_equip		=	Equip_ItRi_Power_04;
	on_unequip		=	UnEquip_ItRi_Power_04;
};
func void Equip_ItRi_Power_04()		{ Npc_AddPowerPoints(self, 8); };
func void UnEquip_ItRi_Power_04()	{ Npc_AddPowerPoints(self, -8); };

instance ItRi_Power_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pier�cie� mocy V";
	SetItRiAttributes_Power (self, 5);
	on_equip		=	Equip_ItRi_Power_05;
	on_unequip		=	UnEquip_ItRi_Power_05;
};
func void Equip_ItRi_Power_05()		{ Npc_AddPowerPoints(self, 10); };
func void UnEquip_ItRi_Power_05()	{ Npc_AddPowerPoints(self, -10); };

///******************************************************************************************
func void SetItRiAttributes_Mana (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_MANA_MAX;
	itm.change_value[2]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Bonus_ManaMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Mana_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_01.3ds";
	description		=	"Pier�cie� many I";
	SetItRiAttributes_Mana (self, 1);
};
instance ItRi_Mana_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_02.3ds";
	description		=	"Pier�cie� many II";
	SetItRiAttributes_Mana (self, 2);
};
instance ItRi_Mana_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_01.3ds";
	description		=	"Pier�cie� many III";
	SetItRiAttributes_Mana (self, 3);
};
instance ItRi_Mana_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_02.3ds";
	description		=	"Pier�cie� many IV";
	SetItRiAttributes_Mana (self, 4);
};
instance ItRi_Mana_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_01.3ds";
	description		=	"Pier�cie� many V";
	SetItRiAttributes_Mana (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Hp (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_HITPOINTS_MAX;
	itm.change_value[2]	=	kap*2*HP_PER_LP;
	
	itm.TEXT[1]			=	NAME_Bonus_HpMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Hp_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_01.3ds";
	description		=	"Pier�cie� �ycia I";
	SetItRiAttributes_Hp (self, 1);
};
instance ItRi_Hp_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_02.3ds";
	description		=	"Pier�cie� �ycia II";
	SetItRiAttributes_Hp (self, 2);
};
instance ItRi_Hp_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_01.3ds";
	description		=	"Pier�cie� �ycia III";
	SetItRiAttributes_Hp (self, 3);
};
instance ItRi_Hp_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_02.3ds";
	description		=	"Pier�cie� �ycia IV";
	SetItRiAttributes_Hp (self, 4);
};
instance ItRi_Hp_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_01.3ds";
	description		=	"Pier�cie� �ycia V";
	SetItRiAttributes_Hp (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Energy (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	
	itm.TEXT[1]			=	NAME_Bonus_EneMax;
	itm.COUNT[1]		=	kap*4;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Energy_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_Mana_01.3ds";
	description		=	"Pier�cie� energii I";
	SetItRiAttributes_Energy (self, 1);
	on_equip		=	Equip_ItRi_Energy_01;
	on_unequip		=	UnEquip_ItRi_Energy_01;
};
func void Equip_ItRi_Energy_01()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 4; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_Energy_01()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 4; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_Energy_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_Mana_01.3ds";
	description		=	"Pier�cie� energii II";
	SetItRiAttributes_Energy (self, 2);
	on_equip		=	Equip_ItRi_Energy_02;
	on_unequip		=	UnEquip_ItRi_Energy_02;
};
func void Equip_ItRi_Energy_02()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 8; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_Energy_02()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 8; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_Energy_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_Mana_01.3ds";
	description		=	"Pier�cie� energii III";
	SetItRiAttributes_Energy (self, 3);
	on_equip		=	Equip_ItRi_Energy_03;
	on_unequip		=	UnEquip_ItRi_Energy_03;
};
func void Equip_ItRi_Energy_03()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 12; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_Energy_03()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 12; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_Energy_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_Mana_01.3ds";
	description		=	"Pier�cie� energii IV";
	SetItRiAttributes_Energy (self, 4);
	on_equip		=	Equip_ItRi_Energy_04;
	on_unequip		=	UnEquip_ItRi_Energy_04;
};
func void Equip_ItRi_Energy_04()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 16; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_Energy_04()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 16; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_Energy_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_Mana_01.3ds";
	description		=	"Pier�cie� energii V";
	SetItRiAttributes_Energy (self, 5);
	on_equip		=	Equip_ItRi_Energy_05;
	on_unequip		=	UnEquip_ItRi_Energy_05;
};
func void Equip_ItRi_Energy_05()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 20; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_Energy_05()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 20; Npc_EnergyMaxRefresh(self); }; };

///******************************************************************************************
func void SetItRiAttributes_TrueDamage (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*250;
	
	itm.TEXT[1]			=	NAME_Dam_True;
	itm.COUNT[1]		=	kap*2;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_TrueDamage_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Point_01.3ds";
	description		=	"Pier�cie� obra�e� I";
	SetItRiAttributes_TrueDamage (self, 1);
	on_equip		=	Equip_ItRi_TrueDamage_01;
	on_unequip		=	UnEquip_ItRi_TrueDamage_01;
};
func void Equip_ItRi_TrueDamage_01()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] += 4; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_TrueDamage_01()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] -= 4; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_TrueDamage_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Point_02.3ds";
	description		=	"Pier�cie� obra�e� II";
	SetItRiAttributes_TrueDamage (self, 2);
	on_equip		=	Equip_ItRi_TrueDamage_02;
	on_unequip		=	UnEquip_ItRi_TrueDamage_02;
};
func void Equip_ItRi_TrueDamage_02()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] += 8; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_TrueDamage_02()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] -= 8; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_TrueDamage_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Point_01.3ds";
	description		=	"Pier�cie� obra�e� III";
	SetItRiAttributes_TrueDamage (self, 3);
	on_equip		=	Equip_ItRi_TrueDamage_03;
	on_unequip		=	UnEquip_ItRi_TrueDamage_03;
};
func void Equip_ItRi_TrueDamage_03()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] += 12; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_TrueDamage_03()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] -= 12; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_TrueDamage_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Point_02.3ds";
	description		=	"Pier�cie� obra�e� IV";
	SetItRiAttributes_TrueDamage (self, 4);
	on_equip		=	Equip_ItRi_TrueDamage_04;
	on_unequip		=	UnEquip_ItRi_TrueDamage_04;
};
func void Equip_ItRi_TrueDamage_04()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] += 16; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_TrueDamage_04()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] -= 16; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_TrueDamage_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Point_01.3ds";
	description		=	"Pier�cie� obra�e� V";
	SetItRiAttributes_TrueDamage (self, 5);
	on_equip		=	Equip_ItRi_TrueDamage_05;
	on_unequip		=	UnEquip_ItRi_TrueDamage_05;
};
func void Equip_ItRi_TrueDamage_05()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] += 20; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_TrueDamage_05()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_TrueDamage] -= 20; Npc_EnergyMaxRefresh(self); }; };

///******************************************************************************************
func void SetItRiAttributes_LifeSteal (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*250;
	
	itm.TEXT[1]			=	NAME_Bonus_LifeSteal;
	itm.COUNT[1]		=	kap*1;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_LifeSteal_01 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_01.3ds";
	description		=	"Pier�cie� kradzie�y �ycia I";
	SetItRiAttributes_LifeSteal (self, 1);
	on_equip		=	Equip_ItRi_LifeSteal_01;
	on_unequip		=	UnEquip_ItRi_LifeSteal_01;
};
func void Equip_ItRi_LifeSteal_01()		{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] += 1; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_LifeSteal_01()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] -= 1; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_LifeSteal_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_02.3ds";
	description		=	"Pier�cie� kradzie�y �ycia II";
	SetItRiAttributes_LifeSteal (self, 2);
	on_equip		=	Equip_ItRi_LifeSteal_02;
	on_unequip		=	UnEquip_ItRi_LifeSteal_02;
};
func void Equip_ItRi_LifeSteal_02()		{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] += 2; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_LifeSteal_02()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] -= 2; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_LifeSteal_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_01.3ds";
	description		=	"Pier�cie� kradzie�y �ycia III";
	SetItRiAttributes_LifeSteal (self, 3);
	on_equip		=	Equip_ItRi_LifeSteal_03;
	on_unequip		=	UnEquip_ItRi_LifeSteal_03;
};
func void Equip_ItRi_LifeSteal_03()		{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] += 3; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_LifeSteal_03()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] -= 3; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_LifeSteal_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_02.3ds";
	description		=	"Pier�cie� kradzie�y �ycia IV";
	SetItRiAttributes_LifeSteal (self, 4);
	on_equip		=	Equip_ItRi_LifeSteal_04;
	on_unequip		=	UnEquip_ItRi_LifeSteal_04;
};
func void Equip_ItRi_LifeSteal_04()		{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] += 4; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_LifeSteal_04()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] -= 4; Npc_EnergyMaxRefresh(self); }; };

instance ItRi_LifeSteal_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_01.3ds";
	description		=	"Pier�cie� kradzie�y �ycia V";
	SetItRiAttributes_LifeSteal (self, 5);
	on_equip		=	Equip_ItRi_LifeSteal_05;
	on_unequip		=	UnEquip_ItRi_LifeSteal_05;
};
func void Equip_ItRi_LifeSteal_05()		{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] += 5; Npc_EnergyMaxRefresh(self); }; };
func void UnEquip_ItRi_LifeSteal_05()	{ if (Npc_IsPlayer(self)) { self.aivar[AIV_LifeSteal] -= 5; Npc_EnergyMaxRefresh(self); }; };
