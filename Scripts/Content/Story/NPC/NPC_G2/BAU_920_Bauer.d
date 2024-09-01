///******************************************************************************************
instance BAU_920_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_BAU;
	id									=	920;
	voice								=	7;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Graham, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_920;
};

func void Rtn_Start_920()
{
	TA_Smalltalk	(07,50, 21,50, "NW_BIGFARM_HOUSE_OUT_04");
	TA_Smalltalk	(21,50, 07,50, "NW_BIGFARM_STABLE_01");
};
