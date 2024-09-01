///******************************************************************************************
instance BDT_1015_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	1015;
	voice								=	6;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_BanditLetter_MIS);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Normal01, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	RTN_Start_1015;
};

func void Rtn_Start_1015()
{
	TA_Stand_ArmsCrossed	(00,00, 12,00, "NW_XARDAS_BANDITS_RIGHT");
	TA_Stand_ArmsCrossed	(12,00, 00,00, "NW_XARDAS_BANDITS_RIGHT");
};
