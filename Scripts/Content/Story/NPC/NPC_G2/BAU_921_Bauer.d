///******************************************************************************************
instance BAU_921_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_BAU;
	id									=	921;
	voice								=	13;
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
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Dusty, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_921;
};

func void Rtn_Start_921()
{
	TA_Smalltalk	(07,55, 19,55, "NW_BIGFARM_STABLE_OUT_01");
	TA_Smalltalk	(19,55, 21,55, "NW_BIGFARM_PATH_04_1");
	TA_Smalltalk	(21,55, 07,55, "NW_BIGFARM_STABLE_01");
};
