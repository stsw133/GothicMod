///******************************************************************************************
instance STRF_1150_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Straefling;
	guild								=	GIL_STRF;
	id									=	1150;
	voice								=	8;
	npctype								=	NPCTYPE_OCMAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 2);
	NpcFn_SetFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart12, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1150;
};

func void Rtn_Start_1150()
{
	TA_Stand_Guarding	(08,00, 23,00, "OW_SPAWN_TRACK_LEICHE_01");
	TA_Stand_Guarding	(23,00, 08,00, "OW_SPAWN_TRACK_LEICHE_01");
};
