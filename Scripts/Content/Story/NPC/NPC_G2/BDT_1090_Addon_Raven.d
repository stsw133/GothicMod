///******************************************************************************************
instance BDT_1090_Addon_Raven (Npc_Default)
{
	/// ------ General ------
	name								=	"Kruk";
	guild								=	GIL_BDT;
	id									=	1090;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor;
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 90);
	
	attribute[ATR_MANA_MAX] = 6666666; /// because he needs to be able to wield BeliarWeapon
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_BeliarWeapon_Raven);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItMi_Addon_Stone_01);
	CreateInvItem (self, ItMi_Addon_Stone_02);
	CreateInvItem (self, ItMi_Addon_Stone_03);
	CreateInvItem (self, ItMi_Addon_Stone_04);
	CreateInvItem (self, ItMi_Addon_Stone_05);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Raven, Teeth_Normal, ITAR_Raven);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1090;
};

func void Rtn_Start_1090()
{
	TA_Pray_Innos_FP	(09,00, 21,00, "ADW_ADANOSTEMPEL_RAVEN_11");
	TA_Pray_Innos_FP	(21,00, 09,00, "ADW_ADANOSTEMPEL_RAVEN_11");
};
func void Rtn_WaitforPlayer_1090()
{
	TA_Stand_WP	(09,00, 21,00, "ADW_ADANOSTEMPEL_RAVEN_11");
	TA_Stand_WP	(21,00, 09,00, "ADW_ADANOSTEMPEL_RAVEN_11");
};
