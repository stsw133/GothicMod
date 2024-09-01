///******************************************************************************************
instance STRF_1104_Straefling (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_STRAEFLING;
	guild								=	GIL_OUT;
	id									=	1104;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Dressed+1, BodySkin_N, "Hum_Head_Bald", Face_N_Weak04, Teeth_Normal, ItAr_Prisoner_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1104;
};

func void Rtn_Start_1104()
{
	TA_Pick_Ore	(08,00, 23,00, "OW_NEWMINE_05");
	TA_Pick_Ore	(23,00, 08,00, "OW_NEWMINE_05");
};
