///******************************************************************************************
prototype ItemPR_Amulet (C_Item)
{
	name 					=	"Amulet";
	
	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_AMULET;
	material 				=	MAT_METAL;
	
	on_equip				=	Npc_AttributesRefresh;
	on_unequip				=	Npc_AttributesRefresh;
	
	wear					= 	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
};
///******************************************************************************************
///	ProtPhysical
///******************************************************************************************
func void SetItAmAttributes_ProtPhysical (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.protection[PROT_EDGE]	=	kap*4;
	itm.protection[PROT_BLUNT]	=	kap*4;
	itm.protection[PROT_POINT]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Prot_Physical;
	itm.COUNT[1]		=	itm.protection[PROT_EDGE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_ProtPhysical_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet odporno�ci fizycznej I";
	SetItAmAttributes_ProtPhysical (self, 1);
};
instance ItAm_ProtPhysical_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet odporno�ci fizycznej II";
	SetItAmAttributes_ProtPhysical (self, 2);
};
instance ItAm_ProtPhysical_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet odporno�ci fizycznej III";
	SetItAmAttributes_ProtPhysical (self, 3);
};
instance ItAm_ProtPhysical_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet odporno�ci fizycznej IV";
	SetItAmAttributes_ProtPhysical (self, 4);
};
instance ItAm_ProtPhysical_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet odporno�ci fizycznej V";
	SetItAmAttributes_ProtPhysical (self, 5);
};
///******************************************************************************************
///	ProtMagic
///******************************************************************************************
func void SetItAmAttributes_ProtMagic (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.protection[PROT_MAGIC]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Prot_Magic;
	itm.COUNT[1]		=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_ProtMagic_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odporno�ci magicznej I";
	SetItAmAttributes_ProtMagic (self, 1);
};
instance ItAm_ProtMagic_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odporno�ci magicznej II";
	SetItAmAttributes_ProtMagic (self, 2);
};
instance ItAm_ProtMagic_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odporno�ci magicznej III";
	SetItAmAttributes_ProtMagic (self, 3);
};
instance ItAm_ProtMagic_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odporno�ci magicznej IV";
	SetItAmAttributes_ProtMagic (self, 4);
};
instance ItAm_ProtMagic_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odporno�ci magicznej V";
	SetItAmAttributes_ProtMagic (self, 5);
};
///******************************************************************************************
///	ProtFire
///******************************************************************************************
func void SetItAmAttributes_ProtFire (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.protection[PROT_FIRE]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Prot_Fire;
	itm.COUNT[1]		=	itm.protection[PROT_FIRE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_ProtFire_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet odporno�ci na ogie� I";
	SetItAmAttributes_ProtFire (self, 1);
};
instance ItAm_ProtFire_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet odporno�ci na ogie� II";
	SetItAmAttributes_ProtFire (self, 2);
};
instance ItAm_ProtFire_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet odporno�ci na ogie� III";
	SetItAmAttributes_ProtFire (self, 3);
};
instance ItAm_ProtFire_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet odporno�ci na ogie� IV";
	SetItAmAttributes_ProtFire (self, 4);
};
instance ItAm_ProtFire_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet odporno�ci na ogie� V";
	SetItAmAttributes_ProtFire (self, 5);
};
///******************************************************************************************
///	ProtTotal
///******************************************************************************************
func void SetItAmAttributes_ProtTotal (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.protection[PROT_EDGE]	=	kap*2;
	itm.protection[PROT_BLUNT]	=	kap*2;
	itm.protection[PROT_POINT]	=	kap*2;
	itm.protection[PROT_FIRE]	=	kap*2;
	itm.protection[PROT_MAGIC]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Prot_Physical;
	itm.COUNT[1]		=	itm.protection[PROT_EDGE];
	itm.TEXT[2]			=	NAME_Prot_Magic;
	itm.COUNT[2]		=	itm.protection[PROT_MAGIC];
	itm.TEXT[3]			=	NAME_Prot_Fire;
	itm.COUNT[3]		=	itm.protection[PROT_FIRE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_ProtTotal_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalno�ci I";
	SetItAmAttributes_ProtTotal (self, 1);
};
instance ItAm_ProtTotal_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalno�ci II";
	SetItAmAttributes_ProtTotal (self, 2);
};
instance ItAm_ProtTotal_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalno�ci III";
	SetItAmAttributes_ProtTotal (self, 3);
};
instance ItAm_ProtTotal_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalno�ci IV";
	SetItAmAttributes_ProtTotal (self, 4);
};
instance ItAm_ProtTotal_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalno�ci V";
	SetItAmAttributes_ProtTotal (self, 5);
};
///******************************************************************************************
///	HP
///******************************************************************************************
func void SetItAmAttributes_Hp (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.change_atr[2]	=	ATR_HITPOINTS_MAX;
	itm.change_value[2]	=	kap*4*HP_PER_LP;
	
	itm.TEXT[1]			=	NAME_Bonus_HpMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Hp_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet �ycia I";
	SetItAmAttributes_Hp (self, 1);
};
instance ItAm_Hp_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet �ycia II";
	SetItAmAttributes_Hp (self, 2);
};
instance ItAm_Hp_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet �ycia III";
	SetItAmAttributes_Hp (self, 3);
};
instance ItAm_Hp_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet �ycia IV";
	SetItAmAttributes_Hp (self, 4);
};
instance ItAm_Hp_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet �ycia V";
	SetItAmAttributes_Hp (self, 5);
};
///******************************************************************************************
///	Mana
///******************************************************************************************
func void SetItAmAttributes_Mana (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.change_atr[2]	=	ATR_MANA_MAX;
	itm.change_value[2]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Bonus_ManaMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Mana_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many I";
	SetItAmAttributes_Mana (self, 1);
};
instance ItAm_Mana_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many II";
	SetItAmAttributes_Mana (self, 2);
};
instance ItAm_Mana_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many III";
	SetItAmAttributes_Mana (self, 3);
};
instance ItAm_Mana_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many IV";
	SetItAmAttributes_Mana (self, 4);
};
instance ItAm_Mana_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many V";
	SetItAmAttributes_Mana (self, 5);
};
///******************************************************************************************
///	Energy
///******************************************************************************************
func void SetItAmAttributes_Energy (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	
	itm.TEXT[1]			=	NAME_Bonus_EneMax;
	itm.COUNT[1]		=	kap*10;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Energy_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_Mana_01.3ds";
	description		=	"Amulet energii I";
	SetItAmAttributes_Energy (self, 1);
	on_equip		=	Equip_ItAm_Energy_01;
	on_unequip		=	UnEquip_ItAm_Energy_01;
};
func void Equip_ItAm_Energy_01()	{ self.aivar[AIV_Energy] += 10; };
func void UnEquip_ItAm_Energy_01()	{ self.aivar[AIV_Energy] -= 10; };

instance ItAm_Energy_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_Mana_01.3ds";
	description		=	"Amulet energii II";
	SetItAmAttributes_Energy (self, 2);
	on_equip		=	Equip_ItAm_Energy_02;
	on_unequip		=	UnEquip_ItAm_Energy_02;
};
func void Equip_ItAm_Energy_02()	{ self.aivar[AIV_Energy] += 20; };
func void UnEquip_ItAm_Energy_02()	{ self.aivar[AIV_Energy] -= 20; };

instance ItAm_Energy_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_Mana_01.3ds";
	description		=	"Amulet energii III";
	SetItAmAttributes_Energy (self, 3);
	on_equip		=	Equip_ItAm_Energy_03;
	on_unequip		=	UnEquip_ItAm_Energy_03;
};
func void Equip_ItAm_Energy_03()	{ self.aivar[AIV_Energy] += 30; };
func void UnEquip_ItAm_Energy_03()	{ self.aivar[AIV_Energy] -= 30; };

instance ItAm_Energy_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_Mana_01.3ds";
	description		=	"Amulet energii IV";
	SetItAmAttributes_Energy (self, 4);
	on_equip		=	Equip_ItAm_Energy_04;
	on_unequip		=	UnEquip_ItAm_Energy_04;
};
func void Equip_ItAm_Energy_04()	{ self.aivar[AIV_Energy] += 40; };
func void UnEquip_ItAm_Energy_04()	{ self.aivar[AIV_Energy] -= 40; };

instance ItAm_Energy_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_Mana_01.3ds";
	description		=	"Amulet energii V";
	SetItAmAttributes_Energy (self, 5);
	on_equip		=	Equip_ItAm_Energy_05;
	on_unequip		=	UnEquip_ItAm_Energy_05;
};
func void Equip_ItAm_Energy_05()	{ self.aivar[AIV_Energy] += 50; };
func void UnEquip_ItAm_Energy_05()	{ self.aivar[AIV_Energy] -= 50; };

///******************************************************************************************
///	STR
///******************************************************************************************
func void SetItAmAttributes_Str (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.change_atr[2]	=	ATR_STRENGTH;
	itm.change_value[2]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Bonus_Str;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Str_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si�y I";
	SetItAmAttributes_Str (self, 1);
};
instance ItAm_Str_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si�y II";
	SetItAmAttributes_Str (self, 2);
};
instance ItAm_Str_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si�y III";
	SetItAmAttributes_Str (self, 3);
};
instance ItAm_Str_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si�y IV";
	SetItAmAttributes_Str (self, 4);
};
instance ItAm_Str_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si�y V";
	SetItAmAttributes_Str (self, 5);
};
///******************************************************************************************
///	DEX
///******************************************************************************************
func void SetItAmAttributes_Dex (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	itm.change_atr[2]	=	ATR_DEXTERITY;
	itm.change_value[2]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Bonus_Dex;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Dex_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zr�czno�ci I";
	SetItAmAttributes_Dex (self, 1);
};
instance ItAm_Dex_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zr�czno�ci II";
	SetItAmAttributes_Dex (self, 2);
};
instance ItAm_Dex_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zr�czno�ci III";
	SetItAmAttributes_Dex (self, 3);
};
instance ItAm_Dex_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zr�czno�ci IV";
	SetItAmAttributes_Dex (self, 4);
};
instance ItAm_Dex_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zr�czno�ci V";
	SetItAmAttributes_Dex (self, 5);
};
///******************************************************************************************
///	Power
///******************************************************************************************
func void SetItAmAttributes_Power (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	
	itm.TEXT[1]			=	NAME_Bonus_Power;
	itm.COUNT[1]		=	kap*4;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Power_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy I";
	SetItAmAttributes_Power (self, 1);
	on_equip		=	Equip_ItAm_Power_01;
	on_unequip		=	UnEquip_ItAm_Power_01;
};
func void Equip_ItAm_Power_01()		{ Npc_AddPowerPoints(self, 4); };
func void UnEquip_ItAm_Power_01()	{ Npc_AddPowerPoints(self, -4); };

instance ItAm_Power_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy II";
	SetItAmAttributes_Power (self, 2);
	on_equip		=	Equip_ItAm_Power_02;
	on_unequip		=	UnEquip_ItAm_Power_02;
};
func void Equip_ItAm_Power_02()		{ Npc_AddPowerPoints(self, 8); };
func void UnEquip_ItAm_Power_02()	{ Npc_AddPowerPoints(self, -8); };

instance ItAm_Power_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy III";
	SetItAmAttributes_Power (self, 3);
	on_equip		=	Equip_ItAm_Power_03;
	on_unequip		=	UnEquip_ItAm_Power_03;
};
func void Equip_ItAm_Power_03()		{ Npc_AddPowerPoints(self, 12); };
func void UnEquip_ItAm_Power_03()	{ Npc_AddPowerPoints(self, -12); };

instance ItAm_Power_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy IV";
	SetItAmAttributes_Power (self, 4);
	on_equip		=	Equip_ItAm_Power_04;
	on_unequip		=	UnEquip_ItAm_Power_04;
};
func void Equip_ItAm_Power_04()		{ Npc_AddPowerPoints(self, 16); };
func void UnEquip_ItAm_Power_04()	{ Npc_AddPowerPoints(self, -16); };

instance ItAm_Power_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy V";
	SetItAmAttributes_Power (self, 5);
	on_equip		=	Equip_ItAm_Power_05;
	on_unequip		=	UnEquip_ItAm_Power_05;
};
func void Equip_ItAm_Power_05()		{ Npc_AddPowerPoints(self, 20); };
func void UnEquip_ItAm_Power_05()	{ Npc_AddPowerPoints(self, -20); };

///******************************************************************************************
///	LifeSteal
///******************************************************************************************
func void SetItAmAttributes_LifeSteal (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*400;
	
	itm.TEXT[1]			=	NAME_Bonus_LifeSteal;
	itm.COUNT[1]		=	kap*2;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_LifeSteal_01 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie�y �ycia I";
	SetItAmAttributes_LifeSteal (self, 1);
	on_equip		=	Equip_ItAm_LifeSteal_01;
	on_unequip		=	UnEquip_ItAm_LifeSteal_01;
};
func void Equip_ItAm_LifeSteal_01()		{ Npc_AddLifeStealPoints(self, 2); };
func void UnEquip_ItAm_LifeSteal_01()	{ Npc_AddLifeStealPoints(self, -2); };

instance ItAm_LifeSteal_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie�y �ycia II";
	SetItAmAttributes_LifeSteal (self, 2);
	on_equip		=	Equip_ItAm_LifeSteal_02;
	on_unequip		=	UnEquip_ItAm_LifeSteal_02;
};
func void Equip_ItAm_LifeSteal_02()		{ Npc_AddLifeStealPoints(self, 4); };
func void UnEquip_ItAm_LifeSteal_02()	{ Npc_AddLifeStealPoints(self, -4); };

instance ItAm_LifeSteal_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie�y �ycia III";
	SetItAmAttributes_LifeSteal (self, 3);
	on_equip		=	Equip_ItAm_LifeSteal_03;
	on_unequip		=	UnEquip_ItAm_LifeSteal_03;
};
func void Equip_ItAm_LifeSteal_03()		{ Npc_AddLifeStealPoints(self, 6); };
func void UnEquip_ItAm_LifeSteal_03()	{ Npc_AddLifeStealPoints(self, -6); };

instance ItAm_LifeSteal_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie�y �ycia IV";
	SetItAmAttributes_LifeSteal (self, 4);
	on_equip		=	Equip_ItAm_LifeSteal_04;
	on_unequip		=	UnEquip_ItAm_LifeSteal_04;
};
func void Equip_ItAm_LifeSteal_04()		{ Npc_AddLifeStealPoints(self, 8); };
func void UnEquip_ItAm_LifeSteal_04()	{ Npc_AddLifeStealPoints(self, -8); };

instance ItAm_LifeSteal_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie�y �ycia V";
	SetItAmAttributes_LifeSteal (self, 5);
	on_equip		=	Equip_ItAm_LifeSteal_05;
	on_unequip		=	UnEquip_ItAm_LifeSteal_05;
};
func void Equip_ItAm_LifeSteal_05()		{ Npc_AddLifeStealPoints(self, 10); };
func void UnEquip_ItAm_LifeSteal_05()	{ Npc_AddLifeStealPoints(self, -10); };

///******************************************************************************************
///	Special amulets
///******************************************************************************************
var int Equip_WispDetector_OneTime;

instance ItAm_Addon_WispDetector (ItemPR_Amulet)
{
	name 			=	"Amulet ognika";
	flags 			=	ITEM_AMULET|ITEM_MISSION;
	visual 			=	"ItAm_Mana_01.3DS";
	
	on_equip		=	Equip_WispDetector;
	on_unequip		=	UnEquip_WispDetector;
	
	description		=	name;
	INV_ZBIAS		=	INVCAM_ENTF_AMULETTE_STANDARD;
};
func void Equip_WispDetector()	 
{
	if (!Equip_WispDetector_OneTime)
	{
		WispSkills[WISPSKILL_NF];
		WispSearching = WispSearch_NF;
		Equip_WispDetector_OneTime = true;
	};
	
	var C_NPC DetWsp; DetWsp = Hlp_GetNpc(Wisp_Detector);
	AI_Teleport (DetWsp, "TOT");
	Wld_SpawnNpcRange (self, Wisp_Detector, 1, 500);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", Wisp_Detector, Wisp_Detector, 0, 0, 0, false);
	Snd_Play("MFX_Transform_Cast");
};
func void UnEquip_WispDetector()
{
	var C_NPC DetWsp; DetWsp = Hlp_GetNpc(Wisp_Detector);
	if (!Npc_IsDead(DetWsp))
	{
		Snd_Play("WSP_Dead_A1");
	};
	AI_Teleport (DetWsp, "TOT");
	B_RemoveNpc (DetWsp);
	AI_Teleport (DetWsp, "TOT");
};
///******************************************************************************************
instance ItAm_InnosAura (ItemPR_Amulet)
{
	name 			=	"�wi�ta Aura Innosa";
	flags 			=	ITEM_AMULET|ITEM_MISSION;
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	
	protection[PROT_EDGE]	=	5*AR_PER_LEVEL;
	protection[PROT_BLUNT]	=	5*AR_PER_LEVEL;
	protection[PROT_POINT]	=	5*AR_PER_LEVEL;
	protection[PROT_FIRE]	=	5*MR_PER_LEVEL;
	protection[PROT_MAGIC]	=	5*MR_PER_LEVEL;
	
	on_equip		=	Equip_ItAm_InnosAura;
	
	description		=	name;
	TEXT[2]			=	"Ten amulet chroni swego posiadacza";
	TEXT[3]			=	"przed wszelkimi obra�eniami.";
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
const string TEXT_InnosEye_Setting_Broken		=	"Oprawa amuletu jest p�kni�ta.";
const string TEXT_InnosEye_Setting_Repaired		=	"Oprawa amuletu jest ca�a.";
var	string TEXT_Innoseye_Setting;

instance ItAm_InnosEye (ItemPR_Amulet)
{
	name 			=	"Oko Innosa";
	flags 			=	ITEM_AMULET|ITEM_MISSION;
	visual 			=	"ItMi_InnosEye_MIS.3DS";
	
	on_equip		=	Equip_InnosEye;
	
	description		=	name;
	TEXT[0]			=	"Pulsuje energi�.";
	INV_ZBIAS		=	INVCAM_ENTF_AMULETTE_STANDARD;
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
instance ItAm_ProtDementor (ItemPR_Amulet)
{
	name 			=	"Amulet przyzywania dusz";
	flags 			=	ITEM_AMULET|ITEM_MISSION;
	visual 			=	"ItAm_Hp_Mana_01.3ds";
	
	description		=	name;
	TEXT[3] 		=	"Ochrona przed Czarnym Spojrzeniem";
};
