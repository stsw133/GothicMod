///******************************************************************************************
///	IT_Amulets
///******************************************************************************************
prototype ItemPR_Amulet (C_Item)
{
	name 					=	"Amulet";
	
	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_AMULET;
	material 				=	MAT_METAL;
	
	on_equip				=	Attributes_CHECK;
	on_unequip				=	Attributes_CHECK;
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
};
///******************************************************************************************
func void SetItAmAttributes_Armor (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.protection[PROT_EDGE]	=	kap*4;
	itm.protection[PROT_BLUNT]	=	kap*4;
	itm.protection[PROT_POINT]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Prot_Physical;
	itm.COUNT[1]		=	itm.protection[PROT_EDGE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Armor_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet pancerza I";
	SetItAmAttributes_Armor (self, 2);
};
instance ItAm_Armor_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet pancerza II";
	SetItAmAttributes_Armor (self, 3);
};
instance ItAm_Armor_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet pancerza III";
	SetItAmAttributes_Armor (self, 4);
};
instance ItAm_Armor_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Edge_01.3ds";
	description		=	"Amulet pancerza IV";
	SetItAmAttributes_Armor (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_Resist (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.protection[PROT_FIRE]	=	kap*4;
	itm.protection[PROT_MAGIC]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Prot_Magic;
	itm.COUNT[1]		=	itm.protection[PROT_MAGIC];
	itm.TEXT[2]			=	NAME_Prot_Fire;
	itm.COUNT[2]		=	itm.protection[PROT_FIRE];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Resist_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odpornoœci I";
	SetItAmAttributes_Resist (self, 2);
};
instance ItAm_Resist_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odpornoœci II";
	SetItAmAttributes_Resist (self, 3);
};
instance ItAm_Resist_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odpornoœci III";
	SetItAmAttributes_Resist (self, 4);
};
instance ItAm_Resist_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Mage_01.3ds";
	description		=	"Amulet odpornoœci IV";
	SetItAmAttributes_Resist (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_ProtTotal (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
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
instance ItAm_ProtTotal_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalnoœci I";
	SetItAmAttributes_ProtTotal (self, 2);
};
instance ItAm_ProtTotal_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalnoœci II";
	SetItAmAttributes_ProtTotal (self, 3);
};
instance ItAm_ProtTotal_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalnoœci III";
	SetItAmAttributes_ProtTotal (self, 4);
};
instance ItAm_ProtTotal_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Total_01.3ds";
	description		=	"Amulet nietykalnoœci IV";
	SetItAmAttributes_ProtTotal (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_Str (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_STRENGTH;
	itm.change_value[2]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Bonus_Str;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Str_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si³y I";
	SetItAmAttributes_Str (self, 2);
};
instance ItAm_Str_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si³y II";
	SetItAmAttributes_Str (self, 3);
};
instance ItAm_Str_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si³y III";
	SetItAmAttributes_Str (self, 4);
};
instance ItAm_Str_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Strg_01.3ds";
	description		=	"Amulet si³y IV";
	SetItAmAttributes_Str (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_Dex (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_DEXTERITY;
	itm.change_value[2]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Bonus_Dex;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Dex_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zrêcznoœci I";
	SetItAmAttributes_Dex (self, 2);
};
instance ItAm_Dex_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zrêcznoœci II";
	SetItAmAttributes_Dex (self, 3);
};
instance ItAm_Dex_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zrêcznoœci III";
	SetItAmAttributes_Dex (self, 4);
};
instance ItAm_Dex_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_01.3ds";
	description		=	"Amulet zrêcznoœci IV";
	SetItAmAttributes_Dex (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_Power (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	
	itm.TEXT[1]			=	NAME_Bonus_Power;
	itm.COUNT[1]		=	kap*4;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Power_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy I";
	SetItAmAttributes_Power (self, 2);
	on_equip		=	Equip_ItAm_Power_02;
	on_unequip		=	UnEquip_ItAm_Power_02;
};
func void Equip_ItAm_Power_02()		{ self.aivar[AIV_Power] += 8; POWER_CHECK(self); };
func void UnEquip_ItAm_Power_02()	{ self.aivar[AIV_Power] -= 8; POWER_CHECK(self); };

instance ItAm_Power_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy II";
	SetItAmAttributes_Power (self, 3);
	on_equip		=	Equip_ItAm_Power_03;
	on_unequip		=	UnEquip_ItAm_Power_03;
};
func void Equip_ItAm_Power_03()		{ self.aivar[AIV_Power] += 12; POWER_CHECK(self); };
func void UnEquip_ItAm_Power_03()	{ self.aivar[AIV_Power] -= 12; POWER_CHECK(self); };

instance ItAm_Power_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy III";
	SetItAmAttributes_Power (self, 4);
	on_equip		=	Equip_ItAm_Power_04;
	on_unequip		=	UnEquip_ItAm_Power_04;
};
func void Equip_ItAm_Power_04()		{ self.aivar[AIV_Power] += 16; POWER_CHECK(self); };
func void UnEquip_ItAm_Power_04()	{ self.aivar[AIV_Power] -= 16; POWER_CHECK(self); };

instance ItAm_Power_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Dex_Strg_01.3ds";
	description		=	"Amulet mocy IV";
	SetItAmAttributes_Power (self, 5);
	on_equip		=	Equip_ItAm_Power_05;
	on_unequip		=	UnEquip_ItAm_Power_05;
};
func void Equip_ItAm_Power_05()		{ self.aivar[AIV_Power] += 20; POWER_CHECK(self); };
func void UnEquip_ItAm_Power_05()	{ self.aivar[AIV_Power] -= 20; POWER_CHECK(self); };

///******************************************************************************************
func void SetItAmAttributes_Mana (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_MANA_MAX;
	itm.change_value[2]	=	kap*4;
	
	itm.TEXT[1]			=	NAME_Bonus_ManaMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Mana_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many I";
	SetItAmAttributes_Mana (self, 2);
};
instance ItAm_Mana_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many II";
	SetItAmAttributes_Mana (self, 3);
};
instance ItAm_Mana_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many III";
	SetItAmAttributes_Mana (self, 4);
};
instance ItAm_Mana_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Amulet many IV";
	SetItAmAttributes_Mana (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_Hp (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	itm.change_atr[2]	=	ATR_HITPOINTS_MAX;
	itm.change_value[2]	=	kap*4*HP_PER_LP;
	
	itm.TEXT[1]			=	NAME_Bonus_HpMax;
	itm.COUNT[1]		=	itm.change_value[2];
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Hp_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet ¿ycia I";
	SetItAmAttributes_Hp (self, 2);
};
instance ItAm_Hp_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet ¿ycia II";
	SetItAmAttributes_Hp (self, 3);
};
instance ItAm_Hp_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet ¿ycia III";
	SetItAmAttributes_Hp (self, 4);
};
instance ItAm_Hp_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Hp_01.3ds";
	description		=	"Amulet ¿ycia IV";
	SetItAmAttributes_Hp (self, 5);
};
///******************************************************************************************
func void SetItAmAttributes_Energy (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	
	itm.TEXT[1]			=	NAME_Bonus_EneMax;
	itm.COUNT[1]		=	kap*8;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_Energy_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet energii I";
	SetItAmAttributes_Energy (self, 2);
	on_equip		=	Equip_ItAm_Energy_02;
	on_unequip		=	UnEquip_ItAm_Energy_02;
};
func void Equip_ItAm_Energy_02()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 16; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItAm_Energy_02()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 16; ENE_MAX_CHECK(self); }; };

instance ItAm_Energy_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet energii II";
	SetItAmAttributes_Energy (self, 3);
	on_equip		=	Equip_ItAm_Energy_03;
	on_unequip		=	UnEquip_ItAm_Energy_03;
};
func void Equip_ItAm_Energy_03()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 24; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItAm_Energy_03()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 24; ENE_MAX_CHECK(self); }; };

instance ItAm_Energy_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet energii III";
	SetItAmAttributes_Energy (self, 4);
	on_equip		=	Equip_ItAm_Energy_04;
	on_unequip		=	UnEquip_ItAm_Energy_04;
};
func void Equip_ItAm_Energy_04()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 32; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItAm_Energy_04()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 32; ENE_MAX_CHECK(self); }; };

instance ItAm_Energy_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Fire_01.3ds";
	description		=	"Amulet energii IV";
	SetItAmAttributes_Energy (self, 5);
	on_equip		=	Equip_ItAm_Energy_05;
	on_unequip		=	UnEquip_ItAm_Energy_05;
};
func void Equip_ItAm_Energy_05()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] += 40; ENE_MAX_CHECK(self); }; };
func void UnEquip_ItAm_Energy_05()	{ if (Npc_IsPlayer(self)) { sattribute[ATR_Energy_Bonus] -= 40; ENE_MAX_CHECK(self); }; };

///******************************************************************************************
func void SetItAmAttributes_LifeSteal (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*200;
	
	itm.TEXT[1]			=	NAME_Bonus_LifeSteal;
	itm.COUNT[1]		=	kap*1;
	itm.COUNT[5]		=	itm.value;
};
///******************************************************************************************
instance ItAm_LifeSteal_02 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie¿y ¿ycia I";
	SetItAmAttributes_LifeSteal (self, 2);
	on_equip		=	Equip_ItAm_LifeSteal_02;
	on_unequip		=	UnEquip_ItAm_LifeSteal_02;
};
func void Equip_ItAm_LifeSteal_02()		{ self.aivar[AIV_LifeSteal] += 2; };
func void UnEquip_ItAm_LifeSteal_02()	{ self.aivar[AIV_LifeSteal] -= 2; };

instance ItAm_LifeSteal_03 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie¿y ¿ycia II";
	SetItAmAttributes_LifeSteal (self, 3);
	on_equip		=	Equip_ItAm_LifeSteal_u3;
	on_unequip		=	UnEquip_ItAm_LifeSteal_u3;
};
func void Equip_ItAm_LifeSteal_03()		{ self.aivar[AIV_LifeSteal] += 3; };
func void UnEquip_ItAm_LifeSteal_03()	{ self.aivar[AIV_LifeSteal] -= 3; };

instance ItAm_LifeSteal_04 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie¿y ¿ycia III";
	SetItAmAttributes_LifeSteal (self, 4);
	on_equip		=	Equip_ItAm_LifeSteal_04;
	on_unequip		=	UnEquip_ItAm_LifeSteal_04;
};
func void Equip_ItAm_LifeSteal_04()		{ self.aivar[AIV_LifeSteal] += 4; };
func void UnEquip_ItAm_LifeSteal_04()	{ self.aivar[AIV_LifeSteal] -= 4; };

instance ItAm_LifeSteal_05 (ItemPR_Amulet)
{
	visual 			=	"ItAm_Prot_Point_01.3ds";
	description		=	"Amulet kradzie¿y ¿ycia IV";
	SetItAmAttributes_LifeSteal (self, 5);
	on_equip		=	Equip_ItAm_LifeSteal_05;
	on_unequip		=	UnEquip_ItAm_LifeSteal_05;
};
func void Equip_ItAm_LifeSteal_05()		{ self.aivar[AIV_LifeSteal] += 5; };
func void UnEquip_ItAm_LifeSteal_05()	{ self.aivar[AIV_LifeSteal] -= 5; };

///******************************************************************************************
///	IT_Amulets_Special
///******************************************************************************************
instance ItAm_ProtDementor (ItemPR_Amulet)
{
	name 			=	"Amulet przyzywania dusz";
	flags 			=	ITEM_AMULET|ITEM_MISSION;

	visual 			=	"ItAm_Hp_Mana_01.3ds";

	TEXT[3] 		=	"Ochrona przed Czarnym Spojrzeniem";
};
///******************************************************************************************
instance ItAm_InnosAura (ItemPR_Amulet)
{
	name 			=	"Œwiêta Aura Innosa";
	flags 			=	ITEM_AMULET|ITEM_MISSION;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	protection[PROT_EDGE]	=	25;
	protection[PROT_BLUNT]	=	25;
	protection[PROT_POINT]	=	25;
	protection[PROT_FIRE]	=	15;
	protection[PROT_MAGIC]	=	15;

	on_equip		=	Equip_ItAm_InnosAura;

	description		=	"Œwiêta aura Innosa";
	TEXT[2]			=	"Ten amulet chroni swego posiadacza";
	TEXT[3]			=	"przed wszelkimi obra¿eniami.";
};
FUNC VOID Equip_ItAm_InnosAura()
{
	Wld_PlayEffect ("spellFX_LIGHTSTAR_WHITE", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("spellFX_INCOVATION_WHITE", self, self, 0, 0, 0, false);
	AI_PlayAni (self, "T_MAGRUN_2_HEASHOOT");
	AI_StandUp(self);
	Snd_Play("MFX_FIRERAIN_INVEST");
};
