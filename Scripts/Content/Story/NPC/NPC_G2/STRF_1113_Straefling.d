///******************************************************************************************
instance STRF_1113_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_STRAEFLING; 
	guild								=	GIL_STRF;
	id									=	1113;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+0, BodySkin_N, "Hum_Head_Bald", Face_N_Normal14, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1113;
};

func void Rtn_Start_1113()
{
	TA_Saw	(08,00, 23,00, "OW_NEWMINE_SAW");
	TA_Saw	(23,00, 08,00, "OW_NEWMINE_SAW");
};
