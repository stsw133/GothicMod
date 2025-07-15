///******************************************************************************************
instance BDT_10301_Addon_RangerBandit_M (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	10301;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	EquipItem (self, ItRw0_Bow_M_01);
	CreateInvItems (self, ItWr_StonePlateCommon_Addon, 2);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal03, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ TA ------
	daily_routine						=	Rtn_Start_10301;
};

func void Rtn_Start_10301()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_FARM2_TO_TAVERN_06");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_FARM2_TO_TAVERN_06");
};
