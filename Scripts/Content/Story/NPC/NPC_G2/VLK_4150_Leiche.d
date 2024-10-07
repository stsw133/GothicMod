///******************************************************************************************
instance VLK_4150_Leiche (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_WAFFENKNECHT;
	guild								=	GIL_MIL;
	id									=	4150;
	voice								=	1;
	npctype								=	NPCTYPE_OCAMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Bald", Face_B_Normal01, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4150;
};

func void Rtn_Start_4150()
{
	TA_Stand_Guarding	(08,00, 22,00, "OW_MINE3_LEICHE_03");
	TA_Stand_Guarding	(22,00, 08,00, "OW_MINE3_LEICHE_03");
};
