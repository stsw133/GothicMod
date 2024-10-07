///******************************************************************************************
instance BAU_916_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_BAU;
	id									=	916;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_P_NormalBald, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_916;
};

func void Rtn_Start_916()
{
	TA_Smalltalk	(08,00, 22,00, "NW_BIGFARM_KITCHEN_02");
	TA_Smalltalk	(22,00, 08,00, "NW_BIGFARM_KITCHEN_02");
};
