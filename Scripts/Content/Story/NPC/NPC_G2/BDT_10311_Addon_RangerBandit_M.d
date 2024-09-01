///******************************************************************************************
instance BDT_10311_Addon_RangerBandit_M (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10311;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_BanditTrader);
	EquipItem (self, ItRw_SLD_Bow);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal03, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	start_aistate						=	ZS_Bandit;
};
