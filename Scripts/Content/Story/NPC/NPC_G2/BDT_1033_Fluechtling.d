///******************************************************************************************
instance BDT_1033_Fluechtling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Fluechtling;
	guild								=	GIL_OUT;
	id									=	1033;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_SLD_Sword);
	CreateInvItem (self, ItWr_MorgahardTip);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Graham, Teeth_Normal, ItAr_BDT_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1033;
};

func void Rtn_Start_1033()
{
	TA_Stand_ArmsCrossed	(08,00, 23,00, "NW_TAVERNE_IN_06");
	TA_Stand_ArmsCrossed	(23,00, 08,00, "NW_TAVERNE_IN_06");
};
