///******************************************************************************************
instance BAU_966_Bauer (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BAUER;
	guild								=	GIL_OUT;
	id									=	966;
	voice								=	7;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 10);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart22, Teeth_Normal, ItAr_BAU_L_00);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_966;
};

func void Rtn_Start_966()
{
	TA_Rake_FP		(08,00, 22,00, "NW_FARM3_FIELD_03");
	TA_Sit_Campfire	(22,00, 08,00, "NW_FARM3_HOUSE_REST_01");
};
func void Rtn_FleeFromPass_966()
{
	TA_Sit_Campfire	(08,00, 22,00, "NW_BIGMILL_MALAKSVERSTECK_05");
	TA_Sit_Campfire	(22,00, 08,00, "NW_BIGMILL_MALAKSVERSTECK_05");
};
