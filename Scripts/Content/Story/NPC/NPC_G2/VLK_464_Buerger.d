///******************************************************************************************
instance VLK_464_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild								=	GIL_VLK;
	id									=	464;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Huno, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_464;
};

func void Rtn_Start_464()
{
	TA_Smalltalk	(08,00, 23,00, "NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
	TA_Smalltalk	(23,00, 08,00, "NW_CITY_PATH_HABOUR_BACK_ALLEY_02");
};
