///******************************************************************************************
instance BAU_964_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Bauer;
	guild								=	GIL_OUT;
	id									=	964;
	voice								=	13;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 20);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_NormalBart11, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_964;
};

func void Rtn_Start_964()
{
	TA_Saw			(08,00, 21,00, "NW_FARM3_STABLE_OUT_01");
	TA_Sit_Campfire	(21,00, 08,00, "NW_FARM3_STABLE_REST_02");
};
func void Rtn_FleeFromPass_964()
{
	TA_Sit_Campfire	(08,00, 22,00, "NW_BIGMILL_MALAKSVERSTECK_05");
	TA_Sit_Campfire	(22,00, 08,00, "NW_BIGMILL_MALAKSVERSTECK_05");
};
