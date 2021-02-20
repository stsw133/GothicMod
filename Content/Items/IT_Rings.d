///******************************************************************************************
prototype ItemPR_Ring (C_Item)
{
	name 					=	"Pierœcieñ";
	
	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;
	material 				=	MAT_METAL;
	
	on_equip				=	Attributes_CHECK;
	on_unequip				=	Attributes_CHECK;
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
	INV_ROTX				=	INVCAM_X_RING_STANDARD;
};
///******************************************************************************************
func void SetItRiAttributes_Armor (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.protection[PROT_EDGE]	=	kap*2;
	itm.protection[PROT_BLUNT]	=	kap*2;
	itm.protection[PROT_POINT]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Prot_Physical;
	itm.COUNT[1]		=	itm.protection[PROT_EDGE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Armor_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_01.3ds";
	description		=	"Pierœcieñ pancerza I";
	SetItRiAttributes_Armor (self, 2);
};
instance ItRi_Armor_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_02.3ds";
	description		=	"Pierœcieñ pancerza II";
	SetItRiAttributes_Armor (self, 3);
};
instance ItRi_Armor_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_02.3ds";
	description		=	"Pierœcieñ pancerza III";
	SetItRiAttributes_Armor (self, 4);
};
instance ItRi_Armor_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Edge_02.3ds";
	description		=	"Pierœcieñ pancerza IV";
	SetItRiAttributes_Armor (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Resist (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.protection[PROT_FIRE]	=	kap*2;
	itm.protection[PROT_MAGIC]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Prot_Magic;
	itm.COUNT[1]		=	itm.protection[PROT_MAGIC];
	itm.TEXT[2]			=	NAME_Prot_Fire;
	itm.COUNT[2]		=	itm.protection[PROT_FIRE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Resist_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_01.3ds";
	description		=	"Pierœcieñ odpornoœci I";
	SetItRiAttributes_Resist (self, 2);
};
instance ItRi_Resist_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_02.3ds";
	description		=	"Pierœcieñ odpornoœci II";
	SetItRiAttributes_Resist (self, 3);
};
instance ItRi_Resist_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_02.3ds";
	description		=	"Pierœcieñ odpornoœci III";
	SetItRiAttributes_Resist (self, 4);
};
instance ItRi_Resist_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Mage_02.3ds";
	description		=	"Pierœcieñ odpornoœci IV";
	SetItRiAttributes_Resist (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Str (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.change_atr[2]	=	ATR_STRENGTH;
	itm.change_value[2]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Bonus_Str;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Str_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_01.3ds";
	description		=	"Pierœcieñ si³y I";
	SetItRiAttributes_Str (self, 2);
};
instance ItRi_Str_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_02.3ds";
	description		=	"Pierœcieñ si³y II";
	SetItRiAttributes_Str (self, 3);
};
instance ItRi_Str_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_02.3ds";
	description		=	"Pierœcieñ si³y III";
	SetItRiAttributes_Str (self, 4);
};
instance ItRi_Str_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Str_02.3ds";
	description		=	"Pierœcieñ si³y IV";
	SetItRiAttributes_Str (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Dex (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.change_atr[2]	=	ATR_DEXTERITY;
	itm.change_value[2]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Bonus_Dex;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Dex_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_01.3ds";
	description		=	"Pierœcieñ zrêcznoœci I";
	SetItRiAttributes_Dex (self, 2);
};
instance ItRi_Dex_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_02.3ds";
	description		=	"Pierœcieñ zrêcznoœci II";
	SetItRiAttributes_Dex (self, 3);
};
instance ItRi_Dex_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_02.3ds";
	description		=	"Pierœcieñ zrêcznoœci III";
	SetItRiAttributes_Dex (self, 4);
};
instance ItRi_Dex_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_02.3ds";
	description		=	"Pierœcieñ zrêcznoœci IV";
	SetItRiAttributes_Dex (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Power (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	
	itm.TEXT[1]			=	NAME_Bonus_Power;
	itm.COUNT[1]		=	kap*2;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Power_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pierœcieñ mocy I";
	SetItRiAttributes_Power (self, 2);
	on_equip		=	Equip_ItRi_Power_02;
	on_unequip		=	UnEquip_ItRi_Power_02;
};
func void Equip_ItRi_Power_02()		{ self.aivar[AIV_Power] += 4; POWER_CHECK(self); };
func void UnEquip_ItRi_Power_02()	{ self.aivar[AIV_Power] -= 4; POWER_CHECK(self); };

instance ItRi_Power_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pierœcieñ mocy II";
	SetItRiAttributes_Power (self, 3);
	on_equip		=	Equip_ItRi_Power_03;
	on_unequip		=	UnEquip_ItRi_Power_03;
};
func void Equip_ItRi_Power_03()		{ self.aivar[AIV_Power] += 6; POWER_CHECK(self); };
func void UnEquip_ItRi_Power_03()	{ self.aivar[AIV_Power] -= 6; POWER_CHECK(self); };

instance ItRi_Power_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pierœcieñ mocy III";
	SetItRiAttributes_Power (self, 4);
	on_equip		=	Equip_ItRi_Power_04;
	on_unequip		=	UnEquip_ItRi_Power_04;
};
func void Equip_ItRi_Power_04()		{ self.aivar[AIV_Power] += 8; POWER_CHECK(self); };
func void UnEquip_ItRi_Power_04()	{ self.aivar[AIV_Power] -= 8; POWER_CHECK(self); };

instance ItRi_Power_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Dex_Strg_01.3ds";
	description		=	"Pierœcieñ mocy IV";
	SetItRiAttributes_Power (self, 5);
	on_equip		=	Equip_ItRi_Power_05;
	on_unequip		=	UnEquip_ItRi_Power_05;
};
func void Equip_ItRi_Power_05()		{ self.aivar[AIV_Power] += 10; POWER_CHECK(self); };
func void UnEquip_ItRi_Power_05()	{ self.aivar[AIV_Power] -= 10; POWER_CHECK(self); };

///******************************************************************************************
func void SetItRiAttributes_Mana (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.change_atr[2]	=	ATR_MANA_MAX;
	itm.change_value[2]	=	kap*2;
	
	itm.TEXT[1]			=	NAME_Bonus_ManaMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Mana_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_01.3ds";
	description		=	"Pierœcieñ many I";
	SetItRiAttributes_Mana (self, 2);
};
instance ItRi_Mana_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_02.3ds";
	description		=	"Pierœcieñ many II";
	SetItRiAttributes_Mana (self, 3);
};
instance ItRi_Mana_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_02.3ds";
	description		=	"Pierœcieñ many III";
	SetItRiAttributes_Mana (self, 4);
};
instance ItRi_Mana_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Mana_02.3ds";
	description		=	"Pierœcieñ many IV";
	SetItRiAttributes_Mana (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Hp (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.change_atr[2]	=	ATR_HITPOINTS_MAX;
	itm.change_value[2]	=	kap*2*HP_PER_LP;
	
	itm.TEXT[1]			=	NAME_Bonus_HpMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Hp_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_01.3ds";
	description		=	"Pierœcieñ ¿ycia I";
	SetItRiAttributes_Hp (self, 2);
};
instance ItRi_Hp_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_02.3ds";
	description		=	"Pierœcieñ ¿ycia II";
	SetItRiAttributes_Hp (self, 3);
};
instance ItRi_Hp_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_02.3ds";
	description		=	"Pierœcieñ ¿ycia III";
	SetItRiAttributes_Hp (self, 4);
};
instance ItRi_Hp_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Hp_02.3ds";
	description		=	"Pierœcieñ ¿ycia IV";
	SetItRiAttributes_Hp (self, 5);
};
///******************************************************************************************
func void SetItRiAttributes_Energy (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	
	itm.TEXT[1]			=	NAME_Bonus_EneMax;
	itm.COUNT[1]		=	kap*4;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItRi_Energy_02 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_02.3ds";
	description		=	"Pierœcieñ energii I";
	SetItRiAttributes_Energy (self, 2);
	on_equip		=	Equip_ItRi_Energy_02;
	on_unequip		=	UnEquip_ItRi_Energy_02;
};
func void Equip_ItRi_Energy_02()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 8; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItRi_Energy_02()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 8; ENE_MAX_CHECK(self); }; };

instance ItRi_Energy_03 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_02.3ds";
	description		=	"Pierœcieñ energii II";
	SetItRiAttributes_Energy (self, 3);
	on_equip		=	Equip_ItRi_Energy_03;
	on_unequip		=	UnEquip_ItRi_Energy_03;
};
func void Equip_ItRi_Energy_03()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 12; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItRi_Energy_03()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 12; ENE_MAX_CHECK(self); }; };

instance ItRi_Energy_04 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_02.3ds";
	description		=	"Pierœcieñ energii III";
	SetItRiAttributes_Energy (self, 4);
	on_equip		=	Equip_ItRi_Energy_04;
	on_unequip		=	UnEquip_ItRi_Energy_04;
};
func void Equip_ItRi_Energy_04()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 16; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItRi_Energy_04()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 16; ENE_MAX_CHECK(self); }; };

instance ItRi_Energy_05 (ItemPR_Ring)
{
	visual 			=	"ItRi_Prot_Fire_02.3ds";
	description		=	"Pierœcieñ energii IV";
	SetItRiAttributes_Energy (self, 5);
	on_equip		=	Equip_ItRi_Energy_05;
	on_unequip		=	UnEquip_ItRi_Energy_05;
};
func void Equip_ItRi_Energy_05()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 20; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItRi_Energy_05()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 20; ENE_MAX_CHECK(self); }; };
