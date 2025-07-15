///******************************************************************************************
instance BDT_10302_Addon_RangerBandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10302;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_BanditTrader);
	CreateInvItem (self, ItWr_StonePlateCommon_Addon);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal04, Teeth_Normal, ItAr_BDT_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10302;
};

func void Rtn_Start_10302()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_FARM2_TO_TAVERN_RANGERBANDITS_01");
};
