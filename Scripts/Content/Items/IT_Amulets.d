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
///	Warrior
///******************************************************************************************
func void SetItAmAttributes_Warrior (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Prot_Edge_01.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	itm.change_atr[1]		=	ATR_STRENGTH;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_STR;
	itm.COUNT[2]			=	itm.change_value[1];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Warrior_01 (ItemPR_Amulet)
{
	description				=	"Amulet wojownika";
	SetItAmAttributes_Warrior (self, 3);
};
instance ItAm_Warrior_02 (ItemPR_Amulet)
{
	description				=	"Amulet wojownika";
	SetItAmAttributes_Warrior (self, 5);
};
instance ItAm_Warrior_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet wojownika";
	SetItAmAttributes_Warrior (self, 10);
};

///******************************************************************************************
///	Hunter
///******************************************************************************************
func void SetItAmAttributes_Hunter (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Prot_Point_01.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	itm.change_atr[1]		=	ATR_DEXTERITY;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_DEX;
	itm.COUNT[2]			=	itm.change_value[1];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Hunter_01 (ItemPR_Amulet)
{
	description				=	"Amulet ³owcy";
	SetItAmAttributes_Hunter (self, 3);
};
instance ItAm_Hunter_02 (ItemPR_Amulet)
{
	description				=	"Amulet ³owcy";
	SetItAmAttributes_Hunter (self, 5);
};
instance ItAm_Hunter_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet ³owcy";
	SetItAmAttributes_Hunter (self, 10);
};

///******************************************************************************************
///	Barbarian
///******************************************************************************************
func void SetItAmAttributes_Barbarian (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Prot_Fire_01.3ds";
	
	itm.change_atr[0]		=	ATR_STRENGTH;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_STR;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_SpMax;
	itm.COUNT[2]			=	kap*SP_PER_LP;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Barbarian_01 (ItemPR_Amulet)
{
	description				=	"Amulet barbarzyñcy";
	SetItAmAttributes_Barbarian (self, 3);
	
	on_equip				=	Equip_ItAm_Barbarian_01;
	on_unequip				=	UnEquip_ItAm_Barbarian_01;
};
func void Equip_ItAm_Barbarian_01()		{ self.aivar[AIV_Stamina_MAX] += 3*SP_PER_LP; };
func void UnEquip_ItAm_Barbarian_01()	{ self.aivar[AIV_Stamina_MAX] -= 3*SP_PER_LP; };

instance ItAm_Barbarian_02 (ItemPR_Amulet)
{
	description				=	"Amulet barbarzyñcy";
	SetItAmAttributes_Barbarian (self, 5);
	
	on_equip				=	Equip_ItAm_Barbarian_02;
	on_unequip				=	UnEquip_ItAm_Barbarian_02;
};
func void Equip_ItAm_Barbarian_02()		{ self.aivar[AIV_Stamina_MAX] += 5*SP_PER_LP; };
func void UnEquip_ItAm_Barbarian_02()	{ self.aivar[AIV_Stamina_MAX] -= 5*SP_PER_LP; };

instance ItAm_Barbarian_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet barbarzyñcy";
	SetItAmAttributes_Barbarian (self, 10);
	
	on_equip				=	Equip_ItAm_Barbarian_03;
	on_unequip				=	UnEquip_ItAm_Barbarian_03;
};
func void Equip_ItAm_Barbarian_03()		{ self.aivar[AIV_Stamina_MAX] += 10*SP_PER_LP; };
func void UnEquip_ItAm_Barbarian_03()	{ self.aivar[AIV_Stamina_MAX] -= 10*SP_PER_LP; };

///******************************************************************************************
///	Mage
///******************************************************************************************
func void SetItAmAttributes_Mage (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Prot_Mage_01.3ds";
	
	itm.change_atr[0]		=	ATR_MANA_MAX;
	itm.change_value[0]		=	kap*MP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[1]				=	NAME_Bonus_POW;
	itm.COUNT[1]			=	kap;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Mage_01 (ItemPR_Amulet)
{
	description				=	"Amulet maga";
	SetItAmAttributes_Mage (self, 3);
	
	on_equip				=	Equip_ItAm_Mage_01;
	on_unequip				=	UnEquip_ItAm_Mage_01;
};
func void Equip_ItAm_Mage_01()		{ Npc_AddPowerPoints(self, 3); };
func void UnEquip_ItAm_Mage_01()	{ Npc_AddPowerPoints(self, -3); };

instance ItAm_Mage_02 (ItemPR_Amulet)
{
	description				=	"Amulet maga";
	SetItAmAttributes_Mage (self, 5);
	
	on_equip				=	Equip_ItAm_Mage_02;
	on_unequip				=	UnEquip_ItAm_Mage_02;
};
func void Equip_ItAm_Mage_02()		{ Npc_AddPowerPoints(self, 5); };
func void UnEquip_ItAm_Mage_02()	{ Npc_AddPowerPoints(self, -5); };

instance ItAm_Mage_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet maga";
	SetItAmAttributes_Mage (self, 10);
	
	on_equip				=	Equip_ItAm_Mage_03;
	on_unequip				=	UnEquip_ItAm_Mage_03;
};
func void Equip_ItAm_Mage_03()		{ Npc_AddPowerPoints(self, 10); };
func void UnEquip_ItAm_Mage_03()	{ Npc_AddPowerPoints(self, -10); };

///******************************************************************************************
///	Guardian
///******************************************************************************************
func void SetItAmAttributes_Guardian (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Prot_Total_01.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Prot_Physical;
	itm.COUNT[2]			=	itm.protection[PROT_EDGE];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Guardian_01 (ItemPR_Amulet)
{
	description				=	"Amulet stra¿nika";
	SetItAmAttributes_Guardian (self, 3);
};
instance ItAm_Guardian_02 (ItemPR_Amulet)
{
	description				=	"Amulet stra¿nika";
	SetItAmAttributes_Guardian (self, 5);
};
instance ItAm_Guardian_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet stra¿nika";
	SetItAmAttributes_Guardian (self, 10);
};

///******************************************************************************************
///	Druid
///******************************************************************************************
func void SetItAmAttributes_Druid (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual				=	"ItAm_Hp_01.3ds";
	
	itm.change_atr[0]		=	ATR_HITPOINTS_MAX;
	itm.change_value[0]		=	kap*HP_PER_LP;
	itm.change_atr[1]		=	ATR_MANA_MAX;
	itm.change_value[1]		=	kap*MP_PER_LP;
	
	itm.TEXT[1]				=	NAME_Bonus_HpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_MpMax;
	itm.COUNT[2]			=	itm.change_value[1];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Druid_01 (ItemPR_Amulet)
{
	description				=	"Amulet druida";
	SetItAmAttributes_Druid (self, 3);
};
instance ItAm_Druid_02 (ItemPR_Amulet)
{
	description				=	"Amulet druida";
	SetItAmAttributes_Druid (self, 5);
};
instance ItAm_Druid_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet druida";
	SetItAmAttributes_Druid (self, 10);
};

///******************************************************************************************
///	Paladin
///******************************************************************************************
func void SetItAmAttributes_Paladin (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Mana_01.3ds";
	
	itm.change_atr[0]		=	ATR_MANA_MAX;
	itm.change_value[0]		=	kap*MP_PER_LP;
	itm.change_atr[1]		=	ATR_STRENGTH;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_STR;
	itm.COUNT[2]			=	itm.change_value[1];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Paladin_01 (ItemPR_Amulet)
{
	description				=	"Amulet paladyna";
	SetItAmAttributes_Paladin (self, 3);
};
instance ItAm_Paladin_02 (ItemPR_Amulet)
{
	description				=	"Amulet paladyna";
	SetItAmAttributes_Paladin (self, 5);
};
instance ItAm_Paladin_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet paladyna";
	SetItAmAttributes_Paladin (self, 10);
};

///******************************************************************************************
///	Conjurer
///******************************************************************************************
func void SetItAmAttributes_Conjurer (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Hp_Mana_01.3ds";
	
	itm.change_atr[0]		=	ATR_MANA_MAX;
	itm.change_value[0]		=	kap*MP_PER_LP;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_MpMax;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Prot_Magical;
	itm.COUNT[2]			=	itm.protection[PROT_MAGIC];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Conjurer_01 (ItemPR_Amulet)
{
	description				=	"Amulet zaklinacza";
	SetItAmAttributes_Conjurer (self, 3);
};
instance ItAm_Conjurer_02 (ItemPR_Amulet)
{
	description				=	"Amulet zaklinacza";
	SetItAmAttributes_Conjurer (self, 5);
};
instance ItAm_Conjurer_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet zaklinacza";
	SetItAmAttributes_Conjurer (self, 10);
};
///******************************************************************************************
///	Pirate
///******************************************************************************************
func void SetItAmAttributes_Pirate (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Strg_01.3ds";
	
	itm.change_atr[0]		=	ATR_DEXTERITY;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_DEX;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[1]				=	NAME_Bonus_POW;
	itm.COUNT[1]			=	kap;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Pirate_01 (ItemPR_Amulet)
{
	description				=	"Amulet pirata";
	SetItAmAttributes_Pirate (self, 3);
	
	on_equip				=	Equip_ItAm_Pirate_01;
	on_unequip				=	UnEquip_ItAm_Pirate_01;
};
func void Equip_ItAm_Pirate_01()	{ Npc_AddPowerPoints(self, 3); };
func void UnEquip_ItAm_Pirate_01()	{ Npc_AddPowerPoints(self, -3); };

instance ItAm_Pirate_02 (ItemPR_Amulet)
{
	description				=	"Amulet pirata";
	SetItAmAttributes_Pirate (self, 5);
	
	on_equip				=	Equip_ItAm_Pirate_02;
	on_unequip				=	UnEquip_ItAm_Pirate_02;
};
func void Equip_ItAm_Pirate_02()	{ Npc_AddPowerPoints(self, 5); };
func void UnEquip_ItAm_Pirate_02()	{ Npc_AddPowerPoints(self, -5); };

instance ItAm_Pirate_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet pirata";
	SetItAmAttributes_Pirate (self, 10);
	
	on_equip				=	Equip_ItAm_Pirate_03;
	on_unequip				=	UnEquip_ItAm_Pirate_03;
};
func void Equip_ItAm_Pirate_03()	{ Npc_AddPowerPoints(self, 10); };
func void UnEquip_ItAm_Pirate_03()	{ Npc_AddPowerPoints(self, -10); };

///******************************************************************************************
///	Rogue
///******************************************************************************************
func void SetItAmAttributes_Rogue (var C_Item itm, var int kap)
{
	itm.value				=	kap*200;
	itm.visual 				=	"ItAm_Dex_01.3ds";
	
	itm.change_atr[0]		=	ATR_DEXTERITY;
	itm.change_value[0]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_DEX;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_SpMax;
	itm.COUNT[2]			=	kap*SP_PER_LP;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Rogue_01 (ItemPR_Amulet)
{
	description				=	"Amulet ³otra";
	SetItAmAttributes_Rogue (self, 3);
	
	on_equip				=	Equip_ItAm_Rogue_01;
	on_unequip				=	UnEquip_ItAm_Rogue_01;
};
func void Equip_ItAm_Rogue_01()			{ self.aivar[AIV_Stamina_MAX] += 3*SP_PER_LP; };
func void UnEquip_ItAm_Rogue_01()		{ self.aivar[AIV_Stamina_MAX] -= 3*SP_PER_LP; };

instance ItAm_Rogue_02 (ItemPR_Amulet)
{
	description				=	"Amulet ³otra";
	SetItAmAttributes_Rogue (self, 5);
	
	on_equip				=	Equip_ItAm_Rogue_02;
	on_unequip				=	UnEquip_ItAm_Rogue_02;
};
func void Equip_ItAm_Rogue_02()			{ self.aivar[AIV_Stamina_MAX] += 5*SP_PER_LP; };
func void UnEquip_ItAm_Rogue_02()		{ self.aivar[AIV_Stamina_MAX] -= 5*SP_PER_LP; };

instance ItAm_Rogue_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet ³otra";
	SetItAmAttributes_Rogue (self, 10);
	
	on_equip				=	Equip_ItAm_Rogue_03;
	on_unequip				=	UnEquip_ItAm_Rogue_03;
};
func void Equip_ItAm_Rogue_03()			{ self.aivar[AIV_Stamina_MAX] += 10*SP_PER_LP; };
func void UnEquip_ItAm_Rogue_03()		{ self.aivar[AIV_Stamina_MAX] -= 10*SP_PER_LP; };

///******************************************************************************************
///	Assassin
///******************************************************************************************
func void SetItAmAttributes_Assassin (var C_Item itm, var int kap)
{
	itm.value				=	kap*120;
	itm.visual 				=	"ItAm_Dex_Strg_01.3ds";
	
	itm.change_atr[0]		=	ATR_STRENGTH;
	itm.change_value[0]		=	kap;
	itm.change_atr[1]		=	ATR_DEXTERITY;
	itm.change_value[1]		=	kap;
	
	itm.TEXT[1]				=	NAME_Bonus_STR;
	itm.COUNT[1]			=	itm.change_value[0];
	itm.TEXT[2]				=	NAME_Bonus_DEX;
	itm.COUNT[2]			=	itm.change_value[1];
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItAm_Assassin_01 (ItemPR_Amulet)
{
	description				=	"Amulet zabójcy";
	SetItAmAttributes_Assassin (self, 3);
};
instance ItAm_Assassin_02 (ItemPR_Amulet)
{
	description				=	"Amulet zabójcy";
	SetItAmAttributes_Assassin (self, 5);
};
instance ItAm_Assassin_03 (ItemPR_Amulet)
{
	description				=	"Ulepsz. amulet zabójcy";
	SetItAmAttributes_Assassin (self, 10);
};

///******************************************************************************************
///	Special amulets
///******************************************************************************************
var int Equip_WispDetector_OneTime;

instance ItAm_Addon_WispDetector (ItemPR_Amulet)
{
	name 					=	"Amulet ognika";
	flags 					=	ITEM_AMULET|ITEM_MISSION;
	visual 					=	"ItAm_Mana_01.3DS";
	
	on_equip				=	Equip_WispDetector;
	on_unequip				=	UnEquip_WispDetector;
	
	description				=	name;
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
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
	name 					=	"Œwiêta Aura Innosa";
	flags 					=	ITEM_AMULET|ITEM_MISSION;
	visual 					=	"ItAm_Prot_Fire_01.3ds";
	
	protection[PROT_EDGE]		=	20;
	protection[PROT_BLUNT]		=	20;
	protection[PROT_POINT]		=	20;
	protection[PROT_FIRE]		=	20;
	protection[PROT_MAGIC]		=	20;
	protection[PROT_BARRIER]	=	20;
	
	on_equip				=	Equip_ItAm_InnosAura;
	
	description				=	name;
	TEXT[2]					=	"Ten amulet chroni swego posiadacza";
	TEXT[3]					=	"przed wszelkimi obra¿eniami.";
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
	name 					=	"Oko Innosa";
	flags 					=	ITEM_AMULET|ITEM_MISSION;
	visual 					=	"ItMi_InnosEye_MIS.3DS";
	
	on_equip				=	Equip_InnosEye;
	
	description				=	name;
	TEXT[0]					=	"Pulsuje energi?";
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
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
	name 					=	"Amulet przyzywania dusz";
	flags 					=	ITEM_AMULET|ITEM_MISSION;
	visual 					=	"ItAm_Hp_Mana_01.3ds";
	
	description				=	name;
	TEXT[3] 				=	"Ochrona przed Czarnym Spojrzeniem";
};
